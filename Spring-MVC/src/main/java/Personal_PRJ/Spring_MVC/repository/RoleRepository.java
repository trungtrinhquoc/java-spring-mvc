package Personal_PRJ.Spring_MVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import Personal_PRJ.Spring_MVC.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

    Role findByName(String name);
}
