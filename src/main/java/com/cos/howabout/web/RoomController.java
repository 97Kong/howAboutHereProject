package com.cos.howabout.web;

import javax.servlet.http.HttpSession;

import com.cos.howabout.rest.Rest;
import com.cos.howabout.rest.RestRepository;
import com.cos.howabout.rooms.RoomsRepository;
import com.cos.howabout.user.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class RoomController {

  private final RestRepository restRepository;
  private final HttpSession session;
  private final RoomsRepository roomsRepository;

  // 모텔리스트
  @GetMapping("/list/aaa/motelList/{name}")
  public String motelList(@PathVariable String name, Model model) {

    model.addAttribute("motel", restRepository.mFindMotel(name));
    // model.addAttribute("motelList", restRepository.findAll());

    return "list/motelList";
  }

  // 호텔리스트
  @GetMapping("/list/bbb/hotelList/{name}")
  public String hotelList(@PathVariable String name, Model model) {

    model.addAttribute("hotel", restRepository.mFindhotel(name));
    // model.addAttribute("motelList", restRepository.findAll());
    model.addAttribute("rooms", roomsRepository.findAll());
    return "list/hotelList";
  }

  // 리조트리스트
  @GetMapping("/list/ccc/resortList/{name}")
  public String resortList(@PathVariable String name, Model model) {

    model.addAttribute("resort", restRepository.mFindresort(name));
    // model.addAttribute("motelList", restRepository.findAll());
    model.addAttribute("rooms", roomsRepository.findAll());
    return "list/resortList";
  }

  // 검색리스트

  @GetMapping("/list/searchList")
  public String searchList(Model model, String searchKeyword) {
    System.out.println("searchKeyword : " + searchKeyword);
    // SELECT * FROM 테이블명 where like '%searchKeyword%';
    // 무슨repository.mSearch();
    model.addAttribute("searchRoom", null);
    return "list/searchList";
  }

  // 상세페이지
  @GetMapping("/detail/{id}")
  public String motelDetail(@PathVariable int id, Model model) {
    User principal = (User) session.getAttribute("principal");
    if (principal == null) {
      System.out.println("실패");
    }
    System.out.println("나실행됨?");
    Rest restEntity = restRepository.findById(id).get();
    // Rooms rooms = roomsRepository.mFindAll(id).get(1);

    model.addAttribute("restEntity", restEntity);
    // model.addAttribute("rooms", rooms);
    model.addAttribute("rooms", roomsRepository.findAll());

    return "detail";
  }

}
