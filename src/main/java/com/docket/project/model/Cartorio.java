package com.docket.project.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "CARTORIO")
public class Cartorio {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private Integer id;

    @Column(name = "NOME")
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
