package Personal_PRJ.Spring_MVC.service;

import java.util.List;

import org.springframework.stereotype.Service;

import Personal_PRJ.Spring_MVC.domain.Role;
import Personal_PRJ.Spring_MVC.domain.User;
import Personal_PRJ.Spring_MVC.repository.RoleRepository;
import Personal_PRJ.Spring_MVC.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository repository) {
        this.userRepository = userRepository;
        this.roleRepository = repository;
    }

    public String handleHello() {
        return "Hello from service";
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public User getUserById(int id) {
        //Vì dùng JPA nên phải xử lí ngoại lệ
        return userRepository.findById(id).orElse(null);
    }

    public void deleteUser(int id) {
        if (userRepository.existsById(id)) {
            userRepository.deleteById(id);
        }
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
