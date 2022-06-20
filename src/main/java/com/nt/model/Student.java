package com.nt.model;

import lombok.Data;

@Data
public class Student {

	private String name;
	private Integer marks;
	private String branch;

	public Student() {
		System.out.println("Student:: 0-param constructor");
	}

}
