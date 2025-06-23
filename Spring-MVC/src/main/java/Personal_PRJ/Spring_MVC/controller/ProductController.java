package Personal_PRJ.Spring_MVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @GetMapping("/admin/product")
    public String getProudct() {
        return "admin/product/show";
    }
}
