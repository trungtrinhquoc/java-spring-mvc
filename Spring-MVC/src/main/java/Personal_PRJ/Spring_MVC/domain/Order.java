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

@Entity
@Table(name = "orders")
public class Order {

    @Id
    //Giúp tự động tăng ID
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private long getTotalPrice;

    // userID
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // orderDetail
    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;

    public Order() {
    }

    public Order(long getTotalPrice, int id) {
        this.getTotalPrice = getTotalPrice;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getGetTotalPrice() {
        return getTotalPrice;
    }

    public void setGetTotalPrice(long getTotalPrice) {
        this.getTotalPrice = getTotalPrice;
    }

    @Override
    public String toString() {
        return "Order [id=" + id + ", getTotalPrice=" + getTotalPrice + "]";
    }

}
