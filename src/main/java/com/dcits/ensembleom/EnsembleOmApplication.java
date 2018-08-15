package com.dcits.ensembleom;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@RestController
@SpringBootApplication
public class EnsembleOmApplication {

	@RequestMapping("/")
	public String index(HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/json;charset=UTF-8");
        return "Ensemble-OM后台";
	}


	public static void main(String[] args) {
		SpringApplication.run(EnsembleOmApplication.class, args);
	}
}
