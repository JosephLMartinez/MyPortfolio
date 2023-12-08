package com.JosephMartinez.Portfolio.Services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.JosephMartinez.Portfolio.Models.LoginUser;
import com.JosephMartinez.Portfolio.Models.User;
import com.JosephMartinez.Portfolio.Respositories.UserRepository;


@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepository;
//    private final DojoRepository dojoRepository;
    
    public UserService(UserRepository UserRepository) {
        this.userRepository = UserRepository;
    }
    
    public User register(User newUser, BindingResult result) {
    	Optional <User> potentialUser = userRepository.findByEmail(newUser.getEmail());
        
    	if(potentialUser.isPresent()) {
        	result.rejectValue("email", "Matches", "This email is already taken");
        }
    	
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
        	result.rejectValue("confirm", "Matches", "Make sure your passwords match");
        }
        
        if(result.hasErrors()) {
        	return null;
        }
        
        String hashed= BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
        newUser.setPassword(hashed);
        return this.userRepository.save(newUser);
    }
    

        public User login(LoginUser newLogin, BindingResult result) {
        	
        	Optional <User> potentialUser = userRepository.findByEmail(newLogin.getEmail());
            if(!potentialUser.isPresent()) {
            	result.rejectValue("email", "Matches", "Wrong email/password combination");
            }else if(!BCrypt.checkpw(newLogin.getPassword(), potentialUser.get().getPassword())) {
            	result.rejectValue("email", "Matches", "Wrong email/password combination");
            }
            if(result.hasErrors()) {
            	return null;
            }
        	return this.userRepository.findUserById(potentialUser.get().getId());
    }


    public List<User> allUsers() {
        return userRepository.findAll();
    }
    
    public User createUser(User u) {
        return userRepository.save(u);
    }
    
    public User findUserById(long user_id) {
    	return userRepository.findUserById(user_id);
    }

}
