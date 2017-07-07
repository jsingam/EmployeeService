package com.singam.Model;

/**
 * Created by jjegasingam on 7/7/2017.
 */
public class Employee {
    private int id;
    private String name;
    private String city;
    private String mobile;


    public Employee(int id, String name, String city, String mobile) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.mobile = mobile;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMobile() {

        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }




}
