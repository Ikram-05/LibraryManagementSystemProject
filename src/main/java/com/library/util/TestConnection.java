package com.library.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TestConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/Project_1?createDatabaseIfNotExist=true&serverTimezone=UTC";
        String user = "root";
        String password = "admin";
        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            System.out.println("Connection successful!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        EntityManagerFactory fac=Persistence.createEntityManagerFactory("lib");
        System.out.println("Done"+fac);
    }
}
