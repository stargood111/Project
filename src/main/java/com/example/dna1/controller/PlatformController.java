package com.example.dna1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlatformController {
	
	@GetMapping("/Platform")
	public String doPlatform() {
		return "dna_platform";
	}
	
}
