package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentsController {

	@RequestMapping("/getAllStudents")
	public List<String> fetchAllStudentsData() {
		List<String> strList = new ArrayList<>();
		strList.add("Rahul");
		strList.add("George");
		
		return strList;
	}
	
	
}
