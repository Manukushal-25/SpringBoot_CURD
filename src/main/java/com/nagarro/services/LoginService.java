package com.nagarro.services;

import com.nagarro.model.UserModel;
import com.nagarro.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginService {

    @Autowired
    private LoginRepository loginRepository;

    public UserModel login(String username, String password) {
        UserModel user = loginRepository.findByUsernameAndPassword(username, password);
        return user;
    }

    public List<UserModel> getUserDetails() {
        List<UserModel> userList = (List<UserModel>) loginRepository.findAll();
        return userList;
    }
}
