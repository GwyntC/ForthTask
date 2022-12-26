package core.controller;

import core.dto.UserDto;
import core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
public class LoginController {//controller for login
    @Autowired
    private UserService userService;//service for user commands(login,getUser etc.)

    //after user submit button on form
    @PostMapping("/enter")
    //getting params from initial page form
    public ModelAndView loginEnter(@RequestParam("login") String login, @RequestParam("password") String password, Model model) {
        //checking if user exists
        //if exists return menu page
        if (userService.getUser(login, password) != null) {
            UserDto user = userService.getUser(login, password);
            return new ModelAndView("menuView")
                    .addObject("user", user);
        }
        //else return error message in loginView
        else {
            model.addAttribute("error", "Your login or password is incorrect!");
            return new ModelAndView("login");
        }
    }
}
