package com.JosephMartinez.Portfolio.Respositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.JosephMartinez.Portfolio.Models.User;

//.. imports .. //

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
 
 Optional<User> findByEmail(String email);
 

    List<User> findAll();
    
    
    User findUserById(long num);
}
