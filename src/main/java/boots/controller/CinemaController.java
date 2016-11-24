package boots.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boots.model.Cinema;
import boots.service.CinemaService;



@Controller
public class CinemaController {
	
	



	@Autowired
	private CinemaService cinemaService;
	
	@GetMapping("/all-cinemas")
	public String allCinemas(HttpServletRequest request){
		request.setAttribute("cinemas", cinemaService.findAll());
		request.setAttribute("mode", "MODE_CINEMAS");
		return "cinema";
	}
	
	@GetMapping("/new-cinema")
	public String newCinema(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "cinema";
	}
	
	@PostMapping("/save-cinema")
	public String saveCinema(@ModelAttribute Cinema cinema, BindingResult bindingResult, HttpServletRequest request){
		cinemaService.save(cinema);
		request.setAttribute("cinemas", cinemaService.findAll());
		request.setAttribute("mode", "MODE_CINEMAS");
		return "cinema";
	}
	
	@GetMapping("/update-cinema")
	public String updateCine(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("cinema", cinemaService.findCinema(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "cinema";
	}
	
	@GetMapping("/delete-cinema")
	public String deleteCinema(@RequestParam int id, HttpServletRequest request){
		cinemaService.delete(id);
		request.setAttribute("cinemas", cinemaService.findAll());
		request.setAttribute("mode", "MODE_CINEMAS");
		return "cinema";
	}
	
	
	
	


}

