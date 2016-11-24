package boots.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class MainController {
	
	

	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
	
	@GetMapping("film")
	public String film(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "film";
	}
	
	@GetMapping("task")
	public String task(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "task";
		
		
	}
	@GetMapping("cinema")
	public String cinema(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "cinema";
	}
	


}
