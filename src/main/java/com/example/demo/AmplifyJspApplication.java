package com.example.demo;


import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

@SpringBootApplication
@Controller
public class AmplifyJspApplication {
	
	@GetMapping("/")
	public ModelAndView myIndex() {
		return new ModelAndView("index");
	}
	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	public static void main(String[] args) {
		SpringApplication.run(AmplifyJspApplication.class, args);
	}

}
