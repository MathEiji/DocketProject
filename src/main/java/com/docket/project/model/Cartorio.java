package com.docket.project.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "CARTORIO", uniqueConstraints = {
        @UniqueConstraint(columnNames = "ID"),
        @UniqueConstraint(columnNames = "NOME")
})
public class Cartorio {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "NOME", unique = true, nullable = false)
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
