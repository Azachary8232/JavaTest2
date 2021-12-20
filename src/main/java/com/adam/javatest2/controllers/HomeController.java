package com.adam.javatest2.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.adam.javatest2.models.LoginUser;
import com.adam.javatest2.models.User;
import com.adam.javatest2.services.UserService;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;
	
	
//			***Login and Registration***
    
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        userService.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "login.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/dashboard";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        User user = userService.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "login.jsp";
        }
        session.setAttribute("user_id", user.getId());
        return "redirect:/dashboard";
    }
	
	
//			***Dashboard***
    
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
    	
    	return "edit.jsp";
    }
    
    
    
//    		***Create Page***
    
//    @GetMapping("/create")
//    public String create(@ModelAttribute("newName") BabyName newName, HttpSession session, Model model) {
//		if(session.getAttribute("user_id") == null) {
//			return "redirect:/";
//		}
//    	return "create.jsp";
//    }
//    
//    @PostMapping("/create")
//    public String save(@Valid @ModelAttribute("newName") BabyName newName, BindingResult result, HttpSession session) {
//		if(session.getAttribute("user_id") == null) {
//			return "redirect:/";
//		}
//		if (result.hasErrors()) {
//			return "create.jsp";
//		}
//		else {
//			babyNameService.createBabyName(newName);
//			return "redirect:/dashboard";
//		}
//    }
	
    
//	***Edit Page***
    
//@GetMapping("/edit/{id}")
//public String edit(@ModelAttribute("editName") BabyName editName, @PathVariable("id")Long id, HttpSession session, Model model) {
//if(session.getAttribute("user_id") == null) {
//return "redirect:/";
//}
//model.addAttribute("editName", babyNameService.findBabyName(id));
//
//return "edit.jsp";
//}
//
//@PutMapping("/edit/{id}")
//public String editName(@Valid @ModelAttribute("editName") BabyName editName, BindingResult result, @PathVariable("id")Long id, HttpSession session, Model model) {
//if(session.getAttribute("user_id") == null) {
//return "redirect:/edit/{id}";
//}
//if(result.hasErrors()) {
//return "edit.jsp";
//}	
//babyNameService.editBabyName(editName);
//return "redirect:/dashboard";
//}

//	***Name Info Page***
    
//@GetMapping("names/{id}")
//public String nameInfo(@PathVariable("id")Long id, HttpSession session, Model model) {
//if(session.getAttribute("user_id") == null) {
//	return "redirect:/";
//}
//User user = userService.findUser((Long)session.getAttribute("user_id"));
//model.addAttribute("user", user);
//model.addAttribute("name", babyNameService.findBabyName(id));
//   	
//return "info.jsp";
//}

//		***Logout***

//@GetMapping("/logout")
//public String clear(HttpSession session) {
//session.invalidate();
//return "redirect:/";
//}

//  ***Delete***
    
//  @RequestMapping("/delete/{id}")
//  public String destroy(@PathVariable("id") Long id, HttpSession session) {
//  	if(session.getAttribute("user_id") == null) {
//  		return "redirect:/";
//  	}
//  	babyNameService.destroy(id);
//  	
//  	return "redirect:/dashboard";	    
//  }

	
	
	
	
	
	
	
	
	
}
