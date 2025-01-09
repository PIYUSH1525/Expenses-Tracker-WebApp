package com.SpringBootMVC.ExpensesTracker.service;

import com.SpringBootMVC.ExpensesTracker.entity.Client;

public interface ClientService {
    void saveClient(Client client);
    Client findClientById(int id);
}
