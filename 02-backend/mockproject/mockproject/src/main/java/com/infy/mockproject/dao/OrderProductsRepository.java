package com.infy.mockproject.dao;

import com.infy.mockproject.entity.OrderProducts;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "orderProduct", path = "order-product")
public interface OrderProductsRepository extends JpaRepository<OrderProducts, Long> {


    Page<OrderProducts> findByCategoryId(@Param("id")Long id,Pageable pageable);

    Page<OrderProducts> findByNameContaining(@Param("name") String name, Pageable page);
}
