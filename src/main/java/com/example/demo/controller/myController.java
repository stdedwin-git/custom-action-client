package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class myController {

    @GetMapping("/hello/{myVariable}")
    public String MyEndpoint(@PathVariable String myVariable){
        return "hello"+ myVariable;
    }
}
