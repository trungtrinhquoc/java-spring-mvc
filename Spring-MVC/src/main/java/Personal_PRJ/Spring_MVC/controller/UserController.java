package Personal_PRJ.Spring_MVC.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Personal_PRJ.Spring_MVC.domain.User;
import Personal_PRJ.Spring_MVC.repository.UserRepository;
import Personal_PRJ.Spring_MVC.service.UploadService;
import Personal_PRJ.Spring_MVC.service.UserService;

@Controller
public class UserController {

    private UserService userService;
    private UserRepository userRepository;
    private UploadService uploadService;

    public UserController(UserService userService, UserRepository userRepository, UploadService uploadService) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.uploadService = uploadService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        //String test = this.userService.handleHello();
        List<User> userArray = this.userRepository.findByEmail("trinhquoctrung10504@gmail.com");
        System.out.println(userArray);
        model.addAttribute("Trungtrinh", "test");
        return "hello";
    }

    /**
     * @param model
     * @return
     */
    @RequestMapping("/admin/user/create")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user")
    public String getTableUser(Model model) {
        List<User> users = this.userService.getAllUser();
        model.addAttribute("user1", users);
        System.out.println(">>>>Check user: " + users);
        return "admin/user/userList";
    }

    @RequestMapping("/admin/user/viewUser/{id}")
    public String viewUser(@PathVariable("id") Integer id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/viewUser";
    }

    @RequestMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable("id") Integer id, Model model) {
        userService.deleteUser(id);
        // List<User> users = this.userService.getAllUser();
        // model.addAttribute("user1", users);
        //Redirect là gọi lại phương thức 
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/edit/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "/admin/user/editUser";
    }

    @PostMapping("/admin/user/edit")
    public String updateUser(@ModelAttribute("user") User user) {
        userService.handleSaveUser(user); // cập nhật lại user
        return "redirect:/admin/user/viewUser/" + user.getId();
    }

    @PostMapping("/admin/user/create1")
    public String createUser(@ModelAttribute("newUser") User user,
            @RequestParam("avatarFile") MultipartFile file) {
        this.uploadService.handleSaveUpLoadFile(file, "avatar");
        return "redirect:/admin/user";
    }
}
