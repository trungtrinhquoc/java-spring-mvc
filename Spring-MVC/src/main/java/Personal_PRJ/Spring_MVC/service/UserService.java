package Personal_PRJ.Spring_MVC.service;

import org.springframework.stereotype.Service;

import Personal_PRJ.Spring_MVC.domain.User;
import Personal_PRJ.Spring_MVC.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from service";
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }
}
