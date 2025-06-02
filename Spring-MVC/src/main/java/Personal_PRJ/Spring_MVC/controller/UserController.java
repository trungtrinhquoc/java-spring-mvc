package Personal_PRJ.Spring_MVC.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("")
    public String getHomePage() {
        return "hello";
    }

}
