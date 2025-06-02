package Personal_PRJ.Spring_MVC;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/*")
    public String index() {
        return "Hello Trung Trịnh IT";
    }

    @GetMapping("/user")
    public String userPage() {
        return "Hello user";
    }

    @GetMapping("/admin")
    public String adminPage() {
        return "Hello admin";
    }
}
