package core.controller;

import core.dto.UserDto;
import core.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @PostMapping("/enter")
    public ModelAndView loginEnter(@RequestParam("login") String login, @RequestParam("password") String password, Model model){
        if (loginService.getUser(login,password)!=null){
            UserDto user=loginService.getUser(login,password);
            return new ModelAndView("menuView")
                    .addObject("user",user);
        }
        else {
            model.addAttribute("error","Your login or password is incorrect!");
            return new ModelAndView("login");
        }
    }
}
