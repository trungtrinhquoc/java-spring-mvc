package Personal_PRJ.Spring_MVC.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import Personal_PRJ.Spring_MVC.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    User save(User trungtrinh1);
}
