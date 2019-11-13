package com.docket.project.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cartorio {
    @Id
    private int id;
    private String nome;

    public int getId() { return id; }
    public String getNome() { return nome; }
    public void setId(int id) { this.id = id; }
    public void setNome(String nome) { this.nome = nome; }
}
