package com.cos.howabout.web;

import javax.servlet.http.HttpSession;

import com.cos.howabout.user.User;
import com.cos.howabout.user.UserRepository;
import com.cos.howabout.util.Script;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {

  private final UserRepository userRepository;
  private final HttpSession session;

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

}
