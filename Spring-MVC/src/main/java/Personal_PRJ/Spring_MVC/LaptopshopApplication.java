package Personal_PRJ.Spring_MVC;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//Tạm thời bỏ security
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class LaptopshopApplication {

    public static void main(String[] args) {
        SpringApplication.run(LaptopshopApplication.class, args);
    }

}
