package com.example.finalproject.Controllers;

import com.example.finalproject.models.UserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogInController {

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping(value = "/checkLogin",method = RequestMethod.POST)
    public ModelAndView checkLogin(@RequestParam String userName, String password){
        ModelAndView modelAndView = new ModelAndView();
        UserDetails userDetails =new UserDetails(userName, password);
        ResponseEntity<UserDetails[]> responseEntity;
        responseEntity = restTemplate.postForEntity("http://localhost:8070/checkUser",userDetails,UserDetails[].class,UserDetails.class);
        int statusCode = responseEntity.getStatusCodeValue();
        UserDetails[] userDetails1 = responseEntity.getBody();
        String message="";
        if(userDetails1[0] == null){
            modelAndView.setViewName("redirect:/login");
            message = "notSuccess";
            modelAndView.addObject("message",message);
        }else if(statusCode>=200 && statusCode<=299 && userDetails1[0].getUserId()!=0){
            if(password == userDetails1[0].getPassword()){
                modelAndView.setViewName("redirect:/welcome");
            }
//            modelAndView.addObject("user",userDetails1);
        }
//        modelAndView.addObject("message",message);
        return modelAndView;
    }

    @RequestMapping(value = "/signUp",method = RequestMethod.GET)
    public ModelAndView signUp(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("signUp");
        return modelAndView;
    }

    @RequestMapping(value = "/saveSignUp",method = RequestMethod.POST)
    public ModelAndView saveSignUp(@RequestParam String username, String password, String email){
//        System.out.println(username+" "+password+" "+email);
        ModelAndView modelAndView = new ModelAndView();
        UserDetails userDetails =new UserDetails(username, password,email);
        ResponseEntity<UserDetails[]> responseEntity=restTemplate.postForEntity("http://localhost:8070/postUserDetails",userDetails,UserDetails[].class);
        int statusCode = responseEntity.getStatusCodeValue();
        String message="";
        if(statusCode>=200 && statusCode<=299){
            modelAndView.setViewName("redirect:/login");
            message = "success";
        }
        else{
            modelAndView.setViewName("redirect:/signUp");
            message = "notSuccess";
        }
        modelAndView.addObject("message",message);
        return modelAndView;
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public ModelAndView logOut(){
        ModelAndView modelAndView = new ModelAndView();
        String message1 = "logoutSuccess";
        modelAndView.addObject("message1",message1);
        modelAndView.setViewName("redirect:/login");
        return modelAndView;
    }
}
