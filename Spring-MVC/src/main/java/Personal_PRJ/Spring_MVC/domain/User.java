package Personal_PRJ.Spring_MVC.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// Để có table trong database
@Entity
public class User {

    @Id
    //Giúp tự động tăng ID
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;

    public User(int id, String email, String password, String fullName, String phone, String address) {
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.id = id;
        this.password = password;
        this.phone = phone;
    }

    public User() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("User{");
        sb.append("id=").append(id);
        sb.append(", email=").append(email);
        sb.append(", password=").append(password);
        sb.append(", fullName=").append(fullName);
        sb.append(", address=").append(address);
        sb.append(", phone=").append(phone);
        sb.append('}');
        return sb.toString();
    }

}
