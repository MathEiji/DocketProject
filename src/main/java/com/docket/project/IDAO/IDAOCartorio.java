package com.docket.project.IDAO;

import com.docket.project.model.Cartorio;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IDAOCartorio extends CrudRepository<Cartorio, Integer> {

    List<Cartorio> findAll();

    List<Cartorio> findByNomeContains(String nome);

}
