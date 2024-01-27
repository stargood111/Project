package com.example.dna1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class Dna1Application extends SpringBootServletInitializer{
 
	public static void main(String[] args) {
		
		SpringApplication.run(Dna1Application.class, args);
	}
	
	 @Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {

	    return builder.sources(Dna1Application.class);

	  }
}
