package core.controller;

import core.dto.UserDto;
import core.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    private LoginService loginService;
    @RequestMapping(value = "/viewUsers", method = RequestMethod.POST, params = "submit")
    public ModelAndView showList(){
        List<UserDto> userList=loginService.getAllUsers();
        return new ModelAndView("usersView").addObject("userList",userList);
    }
    @RequestMapping(value = "/viewUsers", method = RequestMethod.POST, params = "cancel")
    public ModelAndView logOut(){
        return new ModelAndView("login");
    }

}
