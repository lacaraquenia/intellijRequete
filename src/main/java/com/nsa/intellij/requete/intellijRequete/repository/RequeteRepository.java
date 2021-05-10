package com.nsa.intellij.requete.intellijRequete.repository;

import com.nsa.intellij.requete.intellijRequete.model.Requete;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RequeteRepository extends JpaRepository<Requete,Long> {


}
