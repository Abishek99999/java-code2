package com.agamit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.agamit.domain.Student;

@Controller
public class StudentController {

	@ModelAttribute
	public void init(Model model) {
		System.out.println("*******init() method called");
		List<String> coursesList = new ArrayList();
		coursesList.add("java");
		coursesList.add("python");
		coursesList.add("php");
		coursesList.add("Testing");
		model.addAttribute("courses", coursesList);

		List<String> Timing = new ArrayList();
		Timing.add("Morning");
		Timing.add("Afternoon");
		Timing.add("Evening");
		Timing.add("Night");
		model.addAttribute("Timings", Timing);

	}

	@GetMapping(value = { "/", "/register" })
	public String loadForm(Model model) {
		// sending form binding object to ui
		Student std = new Student();
		model.addAttribute("student", std);
		// returning logical views name
		return "studentReg";
	}

	@PostMapping("/register")
//	public String handleSumbitBtn(Student student, Model model) {
	public String handleSumbitBtn(@ModelAttribute("student") Student student, Model model) {
		System.out.println(student);// print consol
		// sending data to ui
		model.addAttribute("succMsg", "Student Registration is succsful...!!");
		// returning views name
		return "regSuccess";// re-dirct to regSuccess to format way
	}

}
