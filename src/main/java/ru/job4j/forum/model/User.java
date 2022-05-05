package ru.job4j.forum.model;

import java.util.Calendar;

public class User {

    private int id;
    private String name;
    private String description;
    private Calendar created;


    public User(int id, String name, String description, Calendar created) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.created = created;
    }
}
