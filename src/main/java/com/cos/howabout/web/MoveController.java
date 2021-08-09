package com.cos.howabout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MoveController {

  // 메인 페이지
  @GetMapping("/home")
  public String home() {
    return "/home";
  }

  @GetMapping("/home/{id}")
  public String paySuccesshome() {
    return "redirect:/home";
  }

}
