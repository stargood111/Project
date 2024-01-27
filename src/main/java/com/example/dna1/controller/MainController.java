package com.example.dna1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String doIndex() {
		
		return "dna_Index";
	}

}
