package com.SpringBootMVC.ExpensesTracker.service;

import com.SpringBootMVC.ExpensesTracker.entity.Role;

public interface RoleService{
    Role findRoleByName(String name);
}
