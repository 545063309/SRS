package com.example.ooad.controller;

import com.example.ooad.service.LoginServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;

/**
 * Created by asus on 2018/6/28.
 */
@Controller
@RequestMapping(value="")
public class LoginController {

    @Autowired
    private LoginServcie loginServcie;
    @RequestMapping(value="index")
    public String loginReturn(){
        return "index";
    }

    @RequestMapping(value="login")
    public String login(String ssn,String password,HttpSession session){
        if(loginServcie.loginStudentService(ssn,password)!=null){
            session.setAttribute("user",loginServcie.loginStudentService(ssn,password).getName());
            session.setAttribute("userSsn",loginServcie.loginStudentService(ssn,password).getSsn());
            return "redirect:/student";
        }
        if(loginServcie.loginProfessService(ssn,password)!=null){
            session.setAttribute("user",loginServcie.loginProfessService(ssn,password).getName());
            session.setAttribute("userSsn",loginServcie.loginProfessService(ssn,password).getSsn());
            return "redirect:/teacher";
        }
        return "index";
    }

}
