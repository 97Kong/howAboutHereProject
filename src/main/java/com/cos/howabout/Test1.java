package com.cos.howabout;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.howabout.util.Script;
import com.cos.howabout.post.Post;
import com.cos.howabout.comment.Comment;
import com.cos.howabout.comment.CommentRepository;
import com.cos.howabout.post.PostRepository;
import com.cos.howabout.post.PostRepository;
import com.cos.howabout.user.User;
import com.cos.howabout.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class Test1 {

	private final UserRepository userRepository;
	private final HttpSession session;
	private final PostRepository postRepository;
	private final HttpServletRequest request;
	private final CommentRepository commentRepository;

	// 문의사항 상세보기 페이지
	@GetMapping("/post/{id}")
	public String detailPost(@PathVariable int id, Model model) {
		System.out.println("받은 아이디 : " + id);
		Post postEntity = postRepository.findById(id).get();
		model.addAttribute("postEntity", postEntity);

		List<Comment> commentsEntity = commentRepository.mFindAllByPostId(id);
		model.addAttribute("commentsEntity", commentsEntity);

		return "post/detailPost";

	}

	// 문의사항 등록된 아이디삭제 인증이 되면 js 에 만든 deletePost메서드 발동
	@DeleteMapping("/post/{id}")
	public @ResponseBody String deleteById(@PathVariable int id) { // ResponseBody - MessageConvert를 타게되어있다.
																	// (ViewResolver를 타지않는다.)
		// 1.권한체크(post id를 통해서 user id를 찾아와서 session의 userid를 비교) - 생략

		// 세션의 user id 찾기 (session)
		User principal = (User) session.getAttribute("principal");
		int userId = principal.getId();

		// int userId = ((User) session.getAttribute("principal")).getId(); // post의user
		// id 찾기(id)
		Post postEntity = postRepository.findById(id).get(); // 문제점발생처리해야함.
		int postUserId = postEntity.getUser().getId();

		// 2.{id}값으로 삭제
		if (userId == postUserId) {
			postRepository.deleteById(id);
			return "ok";
		} else {
			return "fail";
		}

	} // end of deleteById

	// 메인 페이지
	@GetMapping("/home")
	public String home() {
		return "home";
	}

	// 모텔 리스트 페이지
	@GetMapping("/list/motelList")
	public String motelList() {
		return "list/motelList";
	}

	// 모텔 리스트 페이지
	@GetMapping("/list/searchList")
	public String searchList(Model model, String searchKeyword) {
		System.out.println("searchKeyword : " + searchKeyword);
		// SELECT * FROM 테이블 where like '%searchKeyword%';
		// 무슨 레파지토리.mSearch();
		model.addAttribute("searchRoom", null);
		return "list/searchList";
	}

	// 모텔 상세페이지
	@GetMapping("/detail")
	public String motelDetail() {
		return "detail";
	}

	@GetMapping("/payMain")
	public String payMain() {
		return "/payment/payMain";
	}

	// 문의사항 리스트 페이지
	@GetMapping("/post")
	public String post(Model model) { // model = request (Spring 지원)

		// postEntity는 db에서 받아올 데이터의미.
		model.addAttribute("postsEntity", postRepository.findAll());
		return "/post/post"; // ViewResolver도움 !! +RequestDispatcher (request유지 기법)
	}

	// 문의사항 글쓰기 페이지
	@GetMapping("/savePost")
	public String savePost() {
		// 1.인증 체크
		return "post/savePost";
	}

	// 문의사항 글쓰기 데이터 post로 옮기는 메서드
	@PostMapping("/post/post")
	public String save(com.cos.howabout.post.Post post) {
		User principal = (User) session.getAttribute("principal");
		// User u = new User();
		// u.setId(1);
		if (principal == null) {
			return "redirect:/login";
		}

		// post.setUser(u);
		post.setUser(principal);
		postRepository.save(post);
		return "redirect:/post";

	}

	// 회원정보수정 페이지
	@GetMapping("/userUpdate")
	public String test8() {
		return "userUpdate";
	}

	// 회원정보수정 데이터담는 메서드
	@PostMapping("/user/{id}") // 원래는 put으로 해야한다. 나중에 자바스크립트로 put 요청하기!! public
	String update(@PathVariable int id, String password, String address) {

		// 공통관심사 (AOP 공통관심사 분리) 스프링 AOP (관점지향프로그램 : Aspect Oriented Programming)
		User principal = (User) session.getAttribute("principal");

		if (principal != (User) session.getAttribute("principal"))
			;

		if (principal != null && id == principal.getId()) {
			User userEntity = userRepository.findById(id).get();
			userEntity.setPassword(password);
			userEntity.setAddress(address);
			userRepository.save(userEntity);
			session.setAttribute("principal", userEntity); // principal 해시맵이다 값에는 키가필요하다.
			return "redirect:/home";
		}
		return "redirect:/login";
	}

	// 로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "login/login";
	}

	// DB에 인증 후 메인페이지로 데이터옮기는 메서드
	// RestController 데이터를 리턴한다.(ResponseBody)
	@PostMapping("/login/login")
	public @ResponseBody String login(User user) {
		User userEntity = userRepository.mLogin(user.getUsername(), user.getPassword());
		if (userEntity == null) {

			return Script.back("로그인실패");
		} else {
			session.setAttribute("principal", userEntity); // principal 인증주체
			return Script.href("/home");
		}
	}

	// 회원가입페이지
	@GetMapping("/joinForm")
	public String joinForm() {
		return "/join/joinForm";
	}

	// 회원가입정보를 데이터담고 로그인으로 보내는 메서드
	@PostMapping("/join/join")
	public String join(com.cos.howabout.user.User user) {
		userRepository.save(user);
		return "redirect:/login"; // redirect는데이터를 가지고 그담페이지로 이동한다. 데이터를 가지고 login페이지로 이동한다는 뜻
	}

	// 주소찾기 요청 메서드
	@GetMapping("/juso")
	public String jusoRequest() {
		return "juso/jusoPopup";
	}

	// 주소찾기에서 요청한 데이터를 담고 오는 메서드
	@PostMapping("/juso")
	public String jusoResponse(String roadFullAddr, String inputYn, Model model) {
		System.out.println("주소 :" + roadFullAddr);
		model.addAttribute("roadFullAddr", roadFullAddr);
		model.addAttribute("inputYn", inputYn);
		return "juso/jusoPopup";
	}

	// 로그아웃 메서드
	@GetMapping("/user/logout")
	public String logout() {
		session.invalidate(); // invalidate()는 session에서 정보 다 삭제
		return "redirect:/home";
	}

	@GetMapping("/test11")
	public String test11() {
		return "layout/header";
	}

	@GetMapping("/test12")
	public String test12() {
		return "userUpdate";
	}

	// 문의사항 수정하는 메서드
	@GetMapping("/post/{id}/updatePost")
	public String updatePost(@PathVariable int id, Model model) {
		User principal = (User) session.getAttribute("principal");
		int loginId = principal.getId();

		Post postEntity = postRepository.findById(id).get();
		int postOwnerId = postEntity.getUser().getId();

		if (loginId == postOwnerId) {
			model.addAttribute("postEntity", postEntity); // 게시글을 쓰는 1명이기때문에 1명걸 조인하는게 좋다.

			return "post/updatePost";
		} else {
			return "redirect:/login/login";
			// Post postEntity = postRepository.findById(id).get();
			// return"post/updateForm";
		}
	}

	// 문의사항 수정이 완료된 데이터를 담고 POST로 보내는 메서드
	@PutMapping("post/{id}")
	public @ResponseBody String updatePost(@PathVariable int id, @RequestBody Post post) {
		Post postEntity = postRepository.findById(id).get();
		postEntity.setTitle(post.getTitle());
		postEntity.setContent(post.getContent());
		postRepository.save(postEntity);
		return "ok";

	}

	// 결제오류창
	@GetMapping("/payFail")
	public String payFail() {
		return "/payment/payFail";
	}

	@GetMapping("/pay")
	public String pay() {
		return "/payment/pay";
	}

	@GetMapping("/paySuccess")
	public String paysuccess() {
		return "/payment/paySuccess";
	}

	// master(관리자) 페이지 연습용 -------------------------------
	@GetMapping("/master/detail")
	public String mdetail() {
		return "/master/m-detail";
	}

	@GetMapping("/master/list")
	public String mlist() {
		return "/master/m-motelList";
	}
}
