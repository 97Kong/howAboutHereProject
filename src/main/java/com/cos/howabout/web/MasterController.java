package com.cos.howabout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MasterController {
  // master(관리자) 페이지-------------------------------

  // 모텔등록
  @GetMapping("/master/motel-write")
  public String motelWrite() {
    return "/master/m-motelWrite";
  }

  // 호텔등록
  @GetMapping("/master/hotel-write")
  public String hotelWrite() {
    return "/master/m-hotelWrite";
  }

  // 리조트등록
  @GetMapping("/master/resort-write")
  public String resortWrite() {
    return "/master/m-resortWrite";
  }

  // 모텔리스트
  @GetMapping("/master/motelList")
  public String mList() {
    return "/master/m-motelList";
  }

  // 호텔리스트
  @GetMapping("/master/hotelList")
  public String hList() {
    return "/master/m-hotelList";
  }

  // 리조트리스트
  @GetMapping("/master/resortList")
  public String rList() {
    return "/master/m-resortList";
  }

  // 수정
  @GetMapping("/master/detailModify")
  public String mModigy() {
    return "/master/m-detailModify";
  }

  // 방등록
  @GetMapping("/master/mRoom")
  public String mRoom() {
    return "/master/m-room";
  }

}
