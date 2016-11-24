package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.FilmRepository;
import boots.model.Cinema;
import boots.model.Film;

@Service @Transactional
public class FilmService {
	
	private final FilmRepository filmRepository;

	public FilmService(FilmRepository filmRepository) {
		super();
		this.filmRepository = filmRepository;
	}
	
	public List <Film> findAll(){
		List <Film> films= new ArrayList<>();
		for(Film film: filmRepository.findAll()){
			films.add(film);
			
		}
		return films;
	}
	
	public Film findFilm(int id){
		return filmRepository.findOne(id);
	}

	
	
	public void delete(int id){
		filmRepository.delete(id);
	}

	public void save(Film film) {
		
		filmRepository.save(film);
	}

	
		
	
	
}
