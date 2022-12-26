package core.controller;

import core.dto.UserDto;
import core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Controller
@RequestMapping("/menu")

//controller for menu choose actions
public class MenuController {
    @Autowired
    private UserService userService;
    //same mapping because form is the same
    //different names as params for see which button is pressed
    //method to see users list
    @RequestMapping(value = "/viewUsers", method = RequestMethod.POST, params = "viewUsers")
    public ModelAndView showList(){
        List<UserDto> userList= userService.getAllUsers();
        return new ModelAndView("usersView").addObject("userList",userList);
    }
    //method to log out
    @RequestMapping(value = "/viewUsers", method = RequestMethod.POST, params = "logOut")
    public ModelAndView logOut(){
        return new ModelAndView("login");
    }

}
