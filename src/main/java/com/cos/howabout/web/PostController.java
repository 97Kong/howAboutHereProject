package com.cos.howabout.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.cos.howabout.comment.Comment;
import com.cos.howabout.comment.CommentRepository;
import com.cos.howabout.post.Post;
import com.cos.howabout.post.PostRepository;
import com.cos.howabout.user.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PostController {
  private final HttpSession session;
  private final PostRepository postRepository;
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
}
