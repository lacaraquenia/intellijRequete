package com.nsa.intellij.requete.intellijRequete.controller;

import com.nsa.intellij.requete.intellijRequete.model.Requete;
import com.nsa.intellij.requete.intellijRequete.service.RequeteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RequeteController {

    @Autowired
    RequeteService requeteService;

    @GetMapping("/requetes")
    public List<Requete> getAllRequetes(){
        return requeteService.findAllRequetes();
    }

    @PostMapping ("/requetes")
    public Requete createRequete(@RequestBody Requete requete){
        return requeteService.createRequete(requete);
    }
}
