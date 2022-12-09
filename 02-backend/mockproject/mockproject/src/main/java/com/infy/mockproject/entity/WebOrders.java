package com.infy.mockproject.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name="web_orders")
// @Data -- known bug
@Getter
@Setter
public class WebOrders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_number")
    private Long orderNumber;

    @Column(name = "order_date")
    @CreationTimestamp
    private Date orderDate;

    @Column(name = "table_number")
    private int tableNumber;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "status")
    private String status;

}







