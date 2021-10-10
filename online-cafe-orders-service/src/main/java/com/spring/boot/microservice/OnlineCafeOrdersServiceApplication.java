package com.spring.boot.microservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class OnlineCafeOrdersServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineCafeOrdersServiceApplication.class, args);
	}

}
