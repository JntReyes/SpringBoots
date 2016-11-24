package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.CinemaRepository;
import boots.model.Cinema;

@Service @Transactional
public class CinemaService {
	
	private final CinemaRepository cinemaRepository;

	public CinemaService(CinemaRepository cinemaRepository) {
		super();
		this.cinemaRepository = cinemaRepository;
	}
	
	public List <Cinema> findAll(){
		List <Cinema> cinemas= new ArrayList<>();
		for(Cinema cinema: cinemaRepository.findAll()){
			cinemas.add(cinema);
			
		}
		return cinemas;
	}
	
	public Cinema findCinema(int id){
		return cinemaRepository.findOne(id);
	}

	
	
	public void delete(int id){
		cinemaRepository.delete(id);
	}

		
		public void save(Cinema cinema){
			cinemaRepository.save(cinema);
		
	}
	
}
