package com.example.dna1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

	@GetMapping("/board")
	public String doBoard() {
		
		return "dna_board";
	}

}
