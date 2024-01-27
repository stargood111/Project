package com.example.dna1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PageController {
	
	@GetMapping("/Evaluation")
	public String doEvaluation() {
		return "dna_evaluation";
	}
	
	@PostMapping("/Evaluation")
	public String postdoEvaluation() {
		return "dna_evaluation";
	}
	
	@GetMapping("/JetFire")
	public String doJetFire() {
		return "dna_jetfire";
	}
	@GetMapping("/PoolFire")
	public String doPoolFire() {
		return "dna_poolfire";
	}
	@GetMapping("/Fireball")
	public String doFireball() {
		return "dna_fireball";
	}
	@GetMapping("/COC")
	public String dococ() {
		return "dna_coc";
	}
	@GetMapping("/VCE")
	public String dovec() {
		return "dna_vce";
	}
}
