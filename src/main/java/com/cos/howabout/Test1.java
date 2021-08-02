package com.cos.howabout;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class Test1 { 
 
		
    // 상세보기 페이지
    @GetMapping("/detail")
    public String test() {
        return "detail";
    }

    // 후기 페이지
    @GetMapping("/afterlist")
    public String test2() {
        return "after/afterlist";
    }

    // 메인 페이지
    @GetMapping("/home")
    public String test3() {
        return "home";
    }

    // 이너 페이지
    @GetMapping("/inner-Page")
    public String test4() {
        return "inner-Page";
    }

    // 모텔 리스트 페이지
    @GetMapping("/motelList")
    public String test5() {
        return "/list/motelList";
    }
    

    @GetMapping("/hotelList")
    public String test55() {
        return "/list/hotelList";
    }

    @GetMapping("/resortList")
    public String test46() {
        return "/list/resortList";
    }
    // 일단 남겨놓은 페이지
    @GetMapping("/portfolio-details")
    public String test6() {
        return "portfolio-details";
    }

    // 후기 작성 페이지
    @GetMapping("/after_write")
    public String test7() {
        return "after/after_write";
    }

    // 내정보 수정 페이지
    @GetMapping("/userUpdate")
    public String test8() {
        return "user/userUpdate";
    } 

    @GetMapping("/login")
    public String test9() {
        return "user/login";
    }

    @GetMapping("/join")
    public String test10() {
        return "user/join";
    }

    @GetMapping("/test11")
    public String test11() {
        return "layout/header";
    }

    @GetMapping("/test")
    public String test12() {
        return "test";
    }
    
    @GetMapping("/test2") 
    public String test185() {
        return "test2";
    }

}
