package com.example.dna1.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dna1.dto.DnaDto;
import com.example.dna1.service.DnaService;

@CrossOrigin(origins = "http://localhost:8088")
@Controller
@RequestMapping
public class DnaController {

	
	@Autowired
	DnaService dnaService;
	
	@RequestMapping("/sample")
		public String sample() {
			return "sample";
		}
	
	
	@GetMapping("/")
	public String doIndex() {
		
		return "dna_Index";
	}
	
	@GetMapping("/Accident")
	public String doAccident() {
		
		return "dna_accident";
	}
	
	@PostMapping(value="/Accident")
	@ResponseBody
	public List<DnaDto> getAcc(@RequestParam Map<String, String> map){

		return dnaService.getAcc(map);
	}
	
	@GetMapping("/Platform")
	public String doPlatform() {
		return "dna_platform";
	}
	
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
	@GetMapping("Login")
	public String login() {
		return "dna_login";
	}


}