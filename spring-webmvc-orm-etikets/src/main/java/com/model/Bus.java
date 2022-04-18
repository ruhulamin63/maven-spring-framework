package com.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "buses")
public class Bus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @NotNull(message = "Coach name can not be empty")
    @Column(name = "coach")
    private String coach;

    @NotNull
    @Column(name = "source")
    private String source;

    @NotNull
    @Column(name = "dest")
    private String dest;

    @NotNull
    @Column(name = "time")
    private String time;

    @NotNull
    @Column(name = "fare")
    private String fare;

    public Bus() {
    }

    public Bus(int id, String coach, String source, String dest, String time, String fare) {
        this.id = id;
        this.coach = coach;
        this.source = source;
        this.dest = dest;
        this.time = time;
        this.fare = fare;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getCoach() {return coach;}
    public void setCoach(String coach) {this.coach = coach;}

    public String getSource() {
        return source;
    }
    public void setSource(String source) {
        this.source = source;
    }

    public String getDest() {
        return dest;
    }
    public void setDest(String email) {
        this.dest = dest;
    }

    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }

    public String getFare() {
        return fare;
    }
    public void setFare(String fare) {
        this.fare = fare;
    }
}
