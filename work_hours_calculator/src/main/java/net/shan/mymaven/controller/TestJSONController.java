package net.shan.mymaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class TestJSONController {
    @RequestMapping(value="/JSON",method=RequestMethod.GET)
    public @ResponseBody Object getJson(){
        System.out.println("===========TestJSONController ==> /JSON ===============");
        List<String> list = new ArrayList<String>();
        list.add("aaaaaaaaa");
        list.add("bbb");
        list.add("ccc");
        return list;
    }

    @RequestMapping(value="/JUMP",method=RequestMethod.GET)
    public Object getJsonWithJump(){
        System.out.println("===========TestJSONController ==> /JUMP ===============");
        return "redirect:/JSON";  //跳转
    }

    @RequestMapping(value="/INDEX",method=RequestMethod.GET)
    public String getIndex(){
        System.out.println("===========TestJSONController ==> /INDEX ===============");
        return "index";  //跳转
    }
    @RequestMapping(value="/INDEX2",method=RequestMethod.GET)
    public String getIndex2(){
        System.out.println("===========TestJSONController ==> /INDEX2 ===============");
        return "index2";  //跳转
    }
}
