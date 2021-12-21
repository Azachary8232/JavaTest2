package com.adam.javatest2.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.adam.javatest2.models.Guest;
import com.adam.javatest2.models.User;

@Repository
public interface GuestRepository extends CrudRepository<Guest, Long> {

	
//  ***Create***

    List<Guest> findAll();
	
//  ***Retrieve***

    List<Guest> findByUser(User user);
//  ***Update***


//   ***Delete***
	
	
	
	
	
}
