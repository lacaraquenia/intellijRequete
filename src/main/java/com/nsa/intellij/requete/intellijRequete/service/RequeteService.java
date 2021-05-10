package com.nsa.intellij.requete.intellijRequete.service;

import com.nsa.intellij.requete.intellijRequete.model.Requete;
import com.nsa.intellij.requete.intellijRequete.repository.RequeteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RequeteService {

    @Autowired
    RequeteRepository requeteRepository;


    public List<Requete> findAllRequetes(){
        return requeteRepository.findAll();
    }

    public Requete createRequete(Requete requete){
        Requete requeteCree=requeteRepository.save(requete);
        return requeteCree;
    }

}
