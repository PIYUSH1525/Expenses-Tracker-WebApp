package com.SpringBootMVC.ExpensesTracker.DTO;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class WebUser {
    @NotNull(message = "this field is required!")
    @Size(min=1, message="this field is required")
    private String username;
    @NotNull(message = "this field is required!")
    @Size(min=1, message="this field is required")
    private String password;
    @NotNull(message = "this field is required!")
    @Size(min=1, message="this field is required")
    private String firstName;
    @NotNull(message = "this field is required!")
    @Size(min=1, message="this field is required")
    private String lastName;
    @NotNull(message = "this field is required!")
    @Size(min=1, message="this field is required")
    private String email;

    public WebUser() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
