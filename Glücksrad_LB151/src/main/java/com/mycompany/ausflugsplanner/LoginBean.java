/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ausflugsplanner;

import java.io.Serializable;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;

/**
 *
 * @author Lefho
 */
@ManagedBean
@SessionScoped
@Named(value = "loginBean")

public class LoginBean implements Serializable {

  private String username;
  private String password;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String login() {
    if (username.equals("admin") && password.equals("123")) {
      return "admin.xhtml"; 
    }
    if (username.equals("user") && password.equals("123")) {
      return "spiel.xhtml"; 
    }
    else {
      FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Invalid username or password"));
      return null; 
    }
  }
}
