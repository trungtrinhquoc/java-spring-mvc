package Personal_PRJ.Spring_MVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Personal_PRJ.Spring_MVC.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User save(User trungtrinh1);

    List<User> findByEmail(String email);
}
