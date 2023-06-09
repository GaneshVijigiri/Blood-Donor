package org.mvc.jdbc.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.mvc.jdbc.config.BloodDonar;
import org.mvc.jdbc.dao.BloodDonarImp;
import org.mvc.jdbc.dao.BloodDonarRowMapperImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BloodController {
	@Autowired
	private BloodDonarImp d;

	@RequestMapping("/register")
	private String register() {
		return "Registration";
	}

	@RequestMapping("/registerDonar")
	private String registerDonar(BloodDonar donar, Model model) {
		System.out.println(d.age);
		int num = d.register(donar);
		String message = "<p style='color:red'>Registration failed</p>";
		if (donar.getMobileNumber().length() == 10) {
			if (donar.getAadharNumber().length() == 12) {
				if (d.age >= 18) {
					if (donar.getPassword().equals(donar.getConfirmPassword())) {
						if (num != 0) {
							message = "<p style='color:green'>Registration Successfull</p>";
						}
					} else {
						message = "<p style='color:red'>Password mismatches</p>";
					}
				} else {
					message = "<p style='color:red'>Not eligible to register age should be greater than 18</p>";
				}
			} else {
				message = "<p style='color:red'>Incorrect Aadhar number</p>";
			}
		} else {
			message = "<p style='color:red'>Incorrect Mobile Number</p>";
		}
		model.addAttribute("message", message);
		return "Registration";
	}
	
	@RequestMapping("/bloodDonar")
	private String login(){
		return "LogIn";
	}
	@RequestMapping("/loginBloodDonar")
	private String loginDonar(BloodDonar donar, Model model){
		String message = "<p style='color:red'>Login failed</p>";
		try {
			BloodDonar bloodDonar = d.login(donar);
			if (bloodDonar!=null) {
				return "Main";
			}
		} catch (Exception e) {
			message = "<p style='color:red'>Invalid mobile number or password</p>";
		}
		model.addAttribute("message", message);
		return "LogIn";
	}
	
	
	@RequestMapping("/forgotPassword")
	private String forgotPassword() {
		return "ForgotPassword";
	}
	@RequestMapping("/forgotPasswordDonar")
	private String forgotPasswordDonar(BloodDonar donar, Model model) {
		String message =  "<p style='color:red'>Password reset unsuccessfull</p>";
		
		if(donar.getPassword().equals(donar.getConfirmPassword()))
		{
			int num = d.forgotPassword(donar);
			if (num!=0) {
				message =  "<p style='color:green'>Password reset successfull</p>";
			}
		}
		else
		{
			message =  "<p style='color:red'>Password mismatches</p>";
		}
		model.addAttribute("message", message);
		return "ForgotPassword";
	}
	
	
	@RequestMapping("/main")
	private String main() {
		return "Main";
	}

	@RequestMapping("/mainDonar")
	private String mainDonar(BloodDonar donar, Model model) {
		List<BloodDonar> list = d.search(donar);
		model.addAttribute("list", list);
		return "Main";
	}
	
	@RequestMapping("/search")
	private String search() {
		return "Search";
	}
	
	@RequestMapping("/searchDonar")
	private String searchDonar(BloodDonar donar, Model model) {
		List<BloodDonar> list = d.search(donar);
		model.addAttribute("list", list);
		return "Search";
	}
	@RequestMapping("/contactUs")
	private String contactUs() {
		return "ContactUs";
	}
	@RequestMapping("/donarContactUs")
	private String donarContactUs(BloodDonar donar, Model model) {
		String request = "<p style='color:green'>Message Sent</p>";
		model.addAttribute("request", request);
		return "ContactUs";
	}
	
	@RequestMapping("/request")
	private String request() {
		return "Request";
	}
	@RequestMapping("/requestDonar")
	private String requestDonar(BloodDonar donar, Model model) {
		String request = "<p style='color:green'>Request Sent</p>";
		model.addAttribute("request", request);
		return "Request";
	}
	
	@RequestMapping("/profile")
	private String profile(BloodDonar donar, Model model) {
		BloodDonar bloodDonar = d.profile(donar);
		model.addAttribute("bloodDonar", bloodDonar);
		String tempDob = bloodDonar.getDob();
		String dob = tempDob.substring(0, 4);
		int tempAge = Integer.parseInt(dob);
		Date date = new Date();
		int age = (date.getYear()+1900)-(tempAge);
		model.addAttribute("age", age);
		return "Profile";
	}
	
	@RequestMapping("/edit")
	private String edit() {
		return "Edit";
	}
	@RequestMapping("/editProfile")
	private String editProfile(BloodDonar donar, Model model) {
		String message = "<p style='color:red'>Process failed</p>";
		int num = d.edit(donar);
		if (num!=0) {
			message = "<p style='color:green'>Details Updated successfully</p>";
		}
		model.addAttribute("message", message);
		return "Edit";
	}
}
