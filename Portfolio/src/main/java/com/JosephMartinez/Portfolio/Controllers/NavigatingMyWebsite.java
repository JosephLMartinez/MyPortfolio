package com.JosephMartinez.Portfolio.Controllers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.JosephMartinez.Portfolio.Models.LoginUser;
import com.JosephMartinez.Portfolio.Models.User;
import com.JosephMartinez.Portfolio.Services.UserService;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;







@Controller
public class NavigatingMyWebsite {
   
	@Autowired
	UserService userService;
    
	
    @GetMapping("/")
    public String homePage(
    		) {
    	return "MainPage.jsp";
    }
    
    @GetMapping("/resume")
    public String resumePage(
            HttpSession session,
            Model model, 
            Model viewmodel
    		) {
    	if(session.getAttribute("userId")==null) {
    		return "Resume.jsp";
//    		Can't run if statements in java jsp like you can with flask and html so a second jsp is needed
//    	Maybe I can....
    }     	
    	Long userId=(Long) session.getAttribute("userId");
    	viewmodel.addAttribute("currentUser", this.userService.findUserById(userId));  	
    	return "Resume.jsp";
    }
    
    @GetMapping("/coverletter")
    public String coverLetterPage(
            HttpSession session,
            Model model, 
            Model viewmodel
    		) {
    	if(session.getAttribute("userId")==null) {
    		return "CoverLetter.jsp";
//    		Can't run if statements in java jsp like you can with flask and html so a second jsp is needed
//    	Maybe I can....
    }     	
    	Long userId=(Long) session.getAttribute("userId");
    	viewmodel.addAttribute("currentUser", this.userService.findUserById(userId));  	
    	return "CoverLetter.jsp";
    }
	
    @GetMapping("/login")
    public String loginPage(
    		Model model, 
    		@ModelAttribute("newUser") User newUser,
    		@ModelAttribute("newLogin") LoginUser newLogin,
    		HttpSession session
    		) {
    	return "Login.jsp";
    }
    
	@GetMapping("/projects")
	public String projects(
			) {
		return "ProjectPage.jsp";
	}
	
    @GetMapping("/information")
    public String Information(
    		) {
    	return "Information.jsp";
    }
    
    @PostMapping("/newUser")
    public String register(
    		@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, 
            Model model, 
            HttpSession session
            ) {
        User newestUser=this.userService.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "Login.jsp";
        }
        session.setAttribute("userId", newestUser.getId());
        return "redirect:/information";
    }
    
    @PostMapping("/login")
    public String login(
    		@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, 
            Model model, 
            HttpSession session
            ) {
        User returningUser=this.userService.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "Login.jsp";
        }
        session.setAttribute("userId", returningUser.getId());
        return "redirect:/information";
    }	    
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
	
}
