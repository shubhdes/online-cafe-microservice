package com.spring.boot.microservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@EnableZuulProxy
@EnableDiscoveryClient
@SpringBootApplication
public class OnlineCafeApiGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineCafeApiGatewayApplication.class, args);
	}

}
