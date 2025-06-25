package Personal_PRJ.Spring_MVC.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

// Để có table trong database
@Entity
//Đặt tên cho table 
@Table(name = "users")
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
    private String avatar;

    //roleId
    //User many => to one => role
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    //orderId
    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    public User(int id, String email, String password, String fullName, String phone, String address, String avatar) {
        this.address = address;
        this.email = email;
        this.fullName = fullName;
        this.id = id;
        this.password = password;
        this.phone = phone;
        this.avatar = avatar;
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

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", password=" + password + ", fullName=" + fullName
                + ", address=" + address + ", phone=" + phone + ", avatar=" + avatar + "]";
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

}
