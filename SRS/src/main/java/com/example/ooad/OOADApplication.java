package com.example.ooad;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;


@SpringBootApplication(scanBasePackages = {"com.example.ooad.controller", "com.example.ooad.service",
    "com.example.ooad.model","com.example.ooad.action","com.example.ooad.specification"})
@MapperScan("com.example.ooad.dao")
@EnableConfigurationProperties
public class OOADApplication {

    public static void main(String[] args) {
        SpringApplication.run(OOADApplication.class, args);
    }
}
