package com.code.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	public static List<Student> getStudents() {
		
		// create an empty list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("Mary", "Public", "mary@code.com"));
		students.add(new Student("John", "Doe", "john@code.com"));
		students.add(new Student("Ajay", "Rao", "ajay@code.com"));
		
		// return the list
		return students;
	}
}
