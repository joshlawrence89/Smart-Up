package com.capt.inv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.capt.inv.model.PaymentMethod;

public interface PaymentMethodRepository extends JpaRepository<PaymentMethod, Integer> {

}
