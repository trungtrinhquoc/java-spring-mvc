package Personal_PRJ.Spring_MVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Personal_PRJ.Spring_MVC.domain.User;
import Personal_PRJ.Spring_MVC.repository.UserRepository;
import Personal_PRJ.Spring_MVC.service.UserService;

@Controller
public class UserController {

    private UserService userService;
    private UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        String test = this.userService.handleHello();
        model.addAttribute("Trungtrinh", test);
        return "hello";
    }

    /**
     * @param model
     * @return
     */
    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User trungtrinh) {
        System.out.println("run here" + trungtrinh);
        userService.handleSaveUser(trungtrinh);
        return "hello";
    }

}
