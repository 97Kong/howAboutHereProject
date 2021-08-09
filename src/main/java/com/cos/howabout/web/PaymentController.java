package com.cos.howabout.web;

import com.cos.howabout.rest.Rest;
import com.cos.howabout.rest.RestRepository;
import com.cos.howabout.rooms.Rooms;
import com.cos.howabout.rooms.RoomsRepository;
import com.cos.howabout.user.User;
import com.cos.howabout.user.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PaymentController {
  private final RoomsRepository roomsRepository;

  private final RestRepository restRepository;
  private final UserRepository userRepository;

  // 예약 내역 페이지
  @GetMapping("/reservation")
  public String rvt() {
    // User user = userRepository.findById(id).get();

    return "payment/reservation";
  }

  // 결제시작창
  @GetMapping("/payMain/{id}")
  public String payMain(@PathVariable int id, Model model) {
    Rooms rooms = roomsRepository.mFindAll(id).get(1);
    Rest restEntity = restRepository.findById(id).get();
    model.addAttribute("rooms", rooms);
    model.addAttribute("restEntity", restEntity);

    return "/payment/payMain";
  }

  // 결제오류창
  @GetMapping("/payFail")
  public String payFail() {
    return "/payment/payFail";
  }

  // 결제(카카오)
  @GetMapping("/pay/{id}")
  public String pay(@PathVariable int id, Model model) {
    Rooms rooms = roomsRepository.findById(id).get();
    model.addAttribute("rooms", rooms);
    return "/payment/pay";
  }

  // 결제성공창
  @GetMapping("/paySuccess/{id}")
  public String paysuccess(@PathVariable int id, Model model) {
    Rooms rooms = roomsRepository.findById(id).get();
    model.addAttribute("rooms", rooms);
    return "/payment/paySuccess";
  }
}
