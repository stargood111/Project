package com.example.dna1.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dna1.dto.DnaDto;
import com.example.dna1.service.DnaService;

@Controller
public class AccidentController {
	
	DnaService dnaService;
	
	@GetMapping("/Accident")
	public String doAccident() {
		
		return "dna_accident";
	}
	
	@PostMapping(value="/Accident")
	@ResponseBody
	public List<DnaDto> getAcc(@RequestParam Map<String, String> map){

		return dnaService.getAcc(map);
	}
}
