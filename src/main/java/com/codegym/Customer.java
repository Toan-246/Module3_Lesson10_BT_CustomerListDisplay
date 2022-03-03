package com.codegym;

public class Customer {
    private String name;
    private String dateOfBirth;
    private String adress;
    private String image;

    public Customer() {
    }

    public Customer(String name, String dateOfBirth, String adress, String image) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.adress = adress;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
