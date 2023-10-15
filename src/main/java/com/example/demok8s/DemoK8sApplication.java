package com.example.demok8s;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoK8sApplication {
    public static void main(String[] args) {
      SpringApplication.run(DemoK8sApplication.class, args);
    }
    @GetMapping("/")
    public String index() {
      return "Hey! Welcome to Springboot deployment with Jenkins on AWS EKS!";
    }
}