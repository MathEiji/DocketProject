package com.docket.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cartorio {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String nome;

    public Cartorio() { }

    public Integer getId() { return id; }
    public String getNome() { return nome; }
    public void setId(Integer id) { this.id = id; }
    public void setNome(String nome) { this.nome = nome; }

    @Override
    public String toString() {
        return "Cartorio{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                '}';
    }
}
