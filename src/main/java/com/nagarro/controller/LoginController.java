package com.nagarro.controller;

import com.nagarro.model.UserModel;
import com.nagarro.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Objects;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    @GetMapping("/")
    public ModelAndView user() {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new UserModel());
        return mav;
    }

    @PostMapping("/")
    public String login(@ModelAttribute("user") UserModel user ) {

        UserModel oauthUser = loginService.login(user.getUsername(), user.getPassword());
        System.out.print(oauthUser);
        if(Objects.nonNull(oauthUser))
        {
            return "redirect:/addBook.jsp";

        } else {
            return "redirect:/";

        }

    }

    @RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
    public String logoutDo(HttpServletRequest request, HttpServletResponse response)
    {
        return "redirect:/";
    }

}
