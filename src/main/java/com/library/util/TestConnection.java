package com.library.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TestConnection {
    public static void main(String[] args) {
       EntityManagerFactory fac=Persistence.createEntityManagerFactory("lib");
       System.out.println(fac);
    }
}
