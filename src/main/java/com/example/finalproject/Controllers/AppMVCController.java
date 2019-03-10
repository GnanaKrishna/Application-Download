package com.example.finalproject.Controllers;

import com.example.finalproject.models.AppDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppMVCController {

    @Autowired
    RestTemplate restTemplate;

    /*
    For returning Basic welcome message in Model and View
     */
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public ModelAndView welcomeMessage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("welcome");

        return modelAndView;
    }

    /*
    For returning the data from another Service
     */
    @RequestMapping(value = "/getDetails", method = RequestMethod.GET)
    public ModelAndView getDetails(@RequestParam String apps){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("table");

        ResponseEntity<AppDetails[]> responseEntity = restTemplate.getForEntity("http://localhost:8070/getAppDetails", AppDetails[].class);
        int statusCode = responseEntity.getStatusCodeValue();
        if(statusCode>=200 && statusCode<=299){
            AppDetails[] appDetails = responseEntity.getBody();
            modelAndView.addObject("apps",apps);
            modelAndView.addObject("appDetails", appDetails);
        }
        else{
        }
        return modelAndView;
    }

    /*
    For loading the form page
     */
    @RequestMapping(value = "/getPutDetails", method = RequestMethod.GET)
    public ModelAndView getPutDetails(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("form");
        return modelAndView;
    }

    /*
    For posting the data using another Service (i.e., into it's database)
     */
    @RequestMapping(value = "/putDetails", method = RequestMethod.POST)
    public ModelAndView putDetails(@ModelAttribute("appDetails") AppDetails appDetails){
        System.out.println("Inside put message method");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("form");


        ResponseEntity<AppDetails> responseEntity = restTemplate.postForEntity("http://localhost:8070/saveAppDetails", appDetails, AppDetails.class);
        int statusCode = responseEntity.getStatusCodeValue();
        if(statusCode>=200 && statusCode<=299){
            AppDetails appDetails1 = responseEntity.getBody();
            modelAndView.addObject("appDetails", appDetails1);
        }

        return modelAndView;
    }

    @RequestMapping(value = "/download/{appId}",method = RequestMethod.GET)
    public ModelAndView download(@PathVariable int appId){
        ModelAndView modelAndView = new ModelAndView();
        ResponseEntity<AppDetails> responseEntity = restTemplate.getForEntity("http://localhost:8070/getAppDetail/"+ appId, AppDetails.class);
        int statusCode = responseEntity.getStatusCodeValue();
        if(statusCode>=200 && statusCode<=299){
            AppDetails appDetails = responseEntity.getBody();
            modelAndView.addObject("appDetails", appDetails);
        }
        else{
        }
        modelAndView.setViewName("download");
        return modelAndView;
    }
}

