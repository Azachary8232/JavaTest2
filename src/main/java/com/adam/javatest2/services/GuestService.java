package com.adam.javatest2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adam.javatest2.models.Guest;
import com.adam.javatest2.models.User;
import com.adam.javatest2.repositories.GuestRepository;

@Service
public class GuestService {

	
	
	@Autowired
	GuestRepository guestRepository;
	
	
	
//  ***Create***

    public Guest createGuest(Guest guest) {
        return guestRepository.save(guest);
    }

//  ***Retrieve***

    public Guest findGuest(Long id) {
        Optional<Guest> optionalGuest = guestRepository.findById(id);
        if(optionalGuest.isPresent()) {
            return optionalGuest.get();
        } 
        else {
            return null;
        }
    }
    
    public List<Guest> allGuestsNull() {
        return guestRepository.findByUser(null);
    }
    
//  ***Update***

    public Guest editGuest(Guest guest) {
        return guestRepository.save(guest);
    }
    
    
    public void declineGuest(Long id) {
    	Guest guest = findGuest(id);
    	guest.setUser(null);
    	guestRepository.save(guest);
    }
    
    public void pickupGuest(Long id, User user) {
    	Guest guest = findGuest(id); 	
    	guest.setUser(user);
    	guestRepository.save(guest);
    }
    

    

//   ***Delete***
	
	
    public void destroy(Long id) {
    	guestRepository.deleteById(id);
	}
	
	
	
	
	
	
	
	
	
	
	
}
