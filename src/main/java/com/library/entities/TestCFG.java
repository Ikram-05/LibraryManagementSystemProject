package com.library.entities;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TestCFG {
	public static void main(String[] args) {
		EntityManagerFactory fac=Persistence.createEntityManagerFactory("lib");
		System.out.println(fac);
	}
}
