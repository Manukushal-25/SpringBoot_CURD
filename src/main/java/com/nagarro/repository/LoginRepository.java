package com.nagarro.repository;

import com.nagarro.model.UserModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends CrudRepository<UserModel, String> {
    UserModel findByUsernameAndPassword(String username, String password);
}
