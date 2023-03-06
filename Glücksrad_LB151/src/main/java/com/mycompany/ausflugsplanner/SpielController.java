/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ausflugsplanner;

import java.io.Serializable;
import java.util.Random;
import java.util.Scanner;
import javax.annotation.ManagedBean;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author Lefho
 */
@Named(value = "spielController")
@SessionScoped
public class SpielController implements Serializable{
    
    private String inputuser;
    private int money =2000 ;
    private String buttonStyle = "background-color: #fff;";
            int lebenspunkte = 3;

            int testa = 0;
            int teste = 0;
            int testi = 0;
            int testo = 0;
            int testu = 0;



    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }
    
    
    

    public SpielController() {
    }
    
    
    public String getInputuser(){
        return inputuser;
    }
    
    private char[] hiddenWord;
    private String word;

    public char[] getHiddenWord() {
        return hiddenWord;
    }

    public void setHiddenWord(char[] hiddenWord) {
        this.hiddenWord = hiddenWord;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }
    
    
    public String createhiddenword()
    {
    
         String[] words = {"algorithm"};

        // Choose a random word from the list
        Random random = new Random();
        String word = words[random.nextInt(words.length)];

        // Create an array of underscores to represent the hidden word
        char[] hiddenWord = new char[word.length()];
        for (int i = 0; i < hiddenWord.length; i++) {
            hiddenWord[i] = '*';
        }

        String string = String.valueOf(hiddenWord);
        return string;
        
        
    }
    private char letter;

    public char getLetter() {
        return letter;
    }

    public void setLetter(char letter) {
        this.letter = letter;
    }
    
    public void turn()
    {
        for (int i = 0; i < word.length(); i++) {
                if (word.charAt(i) == letter) {
                    hiddenWord[i] = letter;
                }
                
            }
                SpielController spielController = new SpielController();
                spielController.setHiddenWord(hiddenWord);
                spielController.setLetter(letter);

    }
    
    public void buya()
    { 
        if(money >=1000){
        if(testa == 0){
        
        SpielController spielController = new SpielController();
        money = money-1000;
        spielController.setMoney(money);
        testa = testa +1 ;
        
        }
        }
        
    }
    
    public void buye()
    { 
        if(money >=1000){
        if(teste == 0){
        
        SpielController spielController = new SpielController();
        money = money-1000;
        spielController.setMoney(money);
        teste = teste +1 ;
        
        }}
        
    }
    
    public void buyi()
    { 
        if(money >=1000){
        if(testi == 0){
        
        SpielController spielController = new SpielController();
        money = money-1000;
        spielController.setMoney(money);
        testi = testi +1 ;
        
        }}
        
    }
    
    public void buyo()
    { 
        if(money >=1000){
        if(testo == 0){
        
        SpielController spielController = new SpielController();
        money = money-1000;
        spielController.setMoney(money);
        testo = testo +1 ;
        
        }}
        
    }
    
    public void buyu()
    { 
        if(money >=1000){
        if(testu == 0){
        
        SpielController spielController = new SpielController();
        money = money-1000;
        spielController.setMoney(money);
        testu = testu +1 ;
        
        }
        
    }
    
    }
    
    
    
    
   
    
    
    
}