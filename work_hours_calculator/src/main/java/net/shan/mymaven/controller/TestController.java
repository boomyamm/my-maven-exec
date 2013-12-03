package net.shan.mymaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class TestController {
    @RequestMapping(value="/test",method= RequestMethod.GET)
    public String getProduct(){
        System.out.println("fuck all");

        return "test";
    }
}
