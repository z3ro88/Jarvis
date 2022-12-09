package com.infy.mockproject.dao;

import com.infy.mockproject.entity.WebOrders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "webOrder", path = "web-order")
public interface WebOrderRepository extends JpaRepository<WebOrders, Integer> {
}
