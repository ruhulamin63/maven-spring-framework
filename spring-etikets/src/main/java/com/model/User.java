package com.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "register")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @NotNull(message = "Name can not be empty")
    @Column(name = "full_name")
    private String full_name;

    @NotNull(message = "Phone can not be empty")
    @Column(name = "phone")
    private String phone;

    @NotNull
    @Column(name = "email")
    private String email;

    @NotNull(message = "Password can not be empty")
    @Column(name = "password")
    private String password;

    public User() {
    }

    public User(int id, String full_name, String phone, String email, String password) {
        this.id = id;
        this.full_name = full_name;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
