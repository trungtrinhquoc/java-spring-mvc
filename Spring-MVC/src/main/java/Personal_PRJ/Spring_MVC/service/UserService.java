package Personal_PRJ.Spring_MVC.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public String handleHello() {
        return "Hello from service";
    }
}
