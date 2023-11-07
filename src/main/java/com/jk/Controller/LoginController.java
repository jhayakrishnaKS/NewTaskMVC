package com.jk.Controller;

import com.jk.UserDao.UserDao;
import com.jk.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @RequestMapping("/login")
    public String showpage(HttpServletRequest req,Model model){
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        User loggedInUser = userDao.loginUser(username, password);
        if (loggedInUser != null) {
            return "home";
        } else {
            return "index";
        }

    }
    @RequestMapping("/hello")
    public String regpage(HttpServletRequest req,Model model){
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        UserDao userDao = new UserDao();
        userDao.register(username, password);
        return "index";

    }
    @RequestMapping("/register")
    public String register(HttpServletRequest req,Model model){
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        return "register";
    }
}