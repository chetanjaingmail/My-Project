package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.bean.UserDetails;
import com.example.repo.UserRepository;

@Controller
public class Welcome {
@Autowired
UserRepository repo;

@GetMapping("/")
public String redirectToHome() {
	return "home";
}

@GetMapping("/create")
public String redirectToCreate() {
	return "create"; // name of jsp page  without extension
}
@GetMapping("/update")
public String redirectToUpdate() {
	
return "update";	
	
}






			
		

		

	

@GetMapping("/delete")
public String redirectToDelete() {
	return"delete";
}

@PostMapping("/saveuser")
public String saveData(UserDetails user) {
	
	repo.save(user);
	return "home";
}
@GetMapping("/view")
public ModelAndView redirectToView() {
	List <UserDetails>s=repo.findAll();
	ModelAndView model = new ModelAndView(); // this object is use to send data to jsp page
	model.addObject("test", s); // exactly same as setting attribute in request
	
	model.setViewName("view"); // name of the jsp page
	return model;
}

@PostMapping("/deleteuser")
public String delete(String name  ) {
	
	repo.deleteByName(name);
	return "home";
}


@PostMapping("/updateuser")
public String updateUser( UserDetails user,String name,String pwd) {

	System.out.println("Email : " + user.getEmail());
	System.out.println("Contact : " + user.getContact());
	
	repo.save(user);
	
	
	return "home";
	
	
	
	
	
}







}


















