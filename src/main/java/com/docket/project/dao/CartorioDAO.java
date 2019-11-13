package com.docket.project.dao;

import com.docket.project.model.Cartorio;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CartorioDAO extends CrudRepository<Cartorio, Integer> {

    List<Cartorio> findAll();

    List<Cartorio> findByNomeContains(String nome);

}
