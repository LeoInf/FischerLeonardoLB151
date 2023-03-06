/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ausflugsplanner;

import java.io.Serializable;
import java.util.ArrayList;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

/**
 *
 * @author Lefho
 */
@Named(value = "kategorienBean")
@ApplicationScoped
public class KategorienBean implements Serializable{
    

    public KategorienBean() {
    }
    
    
    public String weiterleitung(){
        return "Games.xhtml";
    }
}

