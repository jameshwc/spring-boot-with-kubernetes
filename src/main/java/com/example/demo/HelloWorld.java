package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Value;

@RestController
public class HelloWorld {

    @RequestMapping("/")
    public String hello(){
	return foo;
    }
    
    @Value("${foo}")
    private String foo;
    
    //@Autowired
    //private DiscoveryClient discoveryClient;
}
