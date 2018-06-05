package com.aliashenko.model;

import com.aliashenko.global.Gender;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name = "`users`")
public class User implements Serializable {

    public User() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    private LocalDate birthday;
    private Gender gender;

    public User(String firstName, String lastName, LocalDate birthday, Gender gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthday = birthday;
        this.gender = gender;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }
}