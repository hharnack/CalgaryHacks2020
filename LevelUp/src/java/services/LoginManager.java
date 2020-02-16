/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import databases.UserDB;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Users;

/**
 *
 * @author 806547
 */
public class LoginManager {
    
    private List<Users> validUsers = null;
    UserDB udb = new UserDB();

    public LoginManager() {
        validUsers = UserDB.getAll();
    }

    public Users login(String username, String password) {

        if (username.equals("") || password.equals("")) {
            return null;
        }
        
        for (Users u : validUsers) {
            if ((u.getUsername().equals(username)) && (u.getPassword().equals(password))) {
              return u;  
            }
        }
        
        return null;
    }
    
}
