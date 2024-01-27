package com.example.dna1.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dna1.dao.DnaDao;
import com.example.dna1.dto.DnaDto;


@Service
public class DnaService {

	
	@Autowired
	DnaDao dnaDao;
	
	
	public List<DnaDto> getAcc(Map<String, String> map){

		return dnaDao.getAcc(map);
	}
	
}
