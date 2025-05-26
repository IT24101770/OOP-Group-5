package com.example.model;

public class Payment {
    private String cardName;
    private String cardNumber;
    private String month;
    private String year;
    private String cvc;
    private String email;
    private String contactNumber;

    // Default constructor
    public Payment() {}

    // Parameterized constructor
    public Payment(String cardName, String cardNumber, String month, String year, String cvc, String email, String contactNumber) {
        this.cardName = cardName;
        this.cardNumber = cardNumber;
        this.month = month;
        this.year = year;
        this.cvc = cvc;
        this.email = email;
        this.contactNumber = contactNumber;
    }

    // Getters and Setters
    public String getCardName() {
        return cardName;
    }

    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getCvc() {
        return cvc;
    }

    public void setCvc(String cvc) {
        this.cvc = cvc;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
}

