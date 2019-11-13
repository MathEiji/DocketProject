package com.docket.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cartorio {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;
    private String nome;

    public Cartorio() { }

    public int getId() { return id; }
    public String getNome() { return nome; }
    public void setId(int id) { this.id = id; }
    public void setNome(String nome) { this.nome = nome; }
}
