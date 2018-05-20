package com.aliashenko.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "`users`")
public class User implements Serializable {

    public User() {
    }

    public User(String name) {
        this.name = name;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}