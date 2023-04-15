import java.util.Date;

public class Order {
  private int orderId;
  private String customerName;
  private Date orderDate;

  public Order(int orderId, String customerName, Date orderDate) {
    this.orderId = orderId;
    this.customerName = customerName;
    this.orderDate = orderDate;
  }

  public int getOrderId() {
    return orderId;
  }

  public void setOrderId(int orderId) {
    this.orderId = orderId;
  }

  public String getCustomerName() {
    return customerName;
  }

  public void setCustomerName(String customerName) {
    this.customerName = customerName;
  }

  public Date getOrderDate() {
    return orderDate;
  }

  public void setOrderDate(Date orderDate) {
    this.orderDate = orderDate;
  }
}
