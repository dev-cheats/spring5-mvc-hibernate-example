package com.devcheats.demo.spring.service;

import java.util.List;

import com.devcheats.demo.spring.model.User;

public interface UserService {
   void save(User user);

   List<User> list();
}
