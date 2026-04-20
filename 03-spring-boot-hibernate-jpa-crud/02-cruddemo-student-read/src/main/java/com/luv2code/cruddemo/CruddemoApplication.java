package com.luv2code.cruddemo;

import com.luv2code.cruddemo.dao.StudentDAO;
import com.luv2code.cruddemo.entity.Student;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class CruddemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(CruddemoApplication.class, args);
	}

	@Bean
	public CommandLineRunner commandLineRunner(StudentDAO studentDAO) {

		return runner -> {
			// createStudent(studentDAO);

			// createMultipleStudents(studentDAO);

			// // readStudent(studentDAO);
            // testFindAll(studentDAO);
			// testFindByLastName(studentDAO);
			testUpdateStudent(studentDAO);
			testDeleteStudent(studentDAO);
		};
	}

	private void readStudent(StudentDAO studentDAO) {

		// create  a student object
		System.out.println("Creating new student object ...");
		Student tempStudent = new Student("Daffy", "Duck", "daffy@luv2code.com");

		// save the student
		System.out.println("Saving the student ...");
		studentDAO.save(tempStudent);

		// display id of the saved student
		int theId = tempStudent.getId();
		System.out.println("Saved student. Generated id: " + theId);

		// retrieve student based on the id: primary key
		System.out.println("Retrieving student with id: " + theId);
		Student myStudent = studentDAO.findById(theId);

		// display student
		System.out.println("Found the student: " + myStudent);
	}

	private void createMultipleStudents(StudentDAO studentDAO) {

		// create multiple students
		System.out.println("Creating 3 student objects ...");
		Student tempStudent1 = new Student("John", "Doe", "john@luv2code.com");
		Student tempStudent2 = new Student("Mary", "Public", "mary@luv2code.com");
		Student tempStudent3 = new Student("Bonita", "Applebum", "bonita@luv2code.com");

		// save the student objects
		System.out.println("Saving the students ...");
		studentDAO.save(tempStudent1);
		studentDAO.save(tempStudent2);
		studentDAO.save(tempStudent3);
	}

	private void createStudent(StudentDAO studentDAO) {

		// create the student object
		System.out.println("Creating new student object ...");
		Student tempStudent = new Student("Paul", "Doe", "paul@luv2code.com");

		// save the student object
		System.out.println("Saving the student ...");
		studentDAO.save(tempStudent);

		// display id of the saved student
		System.out.println("Saved student. Generated id: " + tempStudent.getId());
	}

	public void testFindAll(StudentDAO studentDAO) {
	    System.out.println("Finding all students ...");
	    var students = studentDAO.findAll();
	    for (Student student : students) {
	        System.out.println(student);
	    }
	}

	public void testFindByLastName(StudentDAO studentDAO) {
	    System.out.println("Finding students with last name 'Doe' ...");
	    var students = studentDAO.findByLastName("Doe");
	    for (Student student : students) {
	        System.out.println(student);
	    }
	}

	public void testUpdateStudent(StudentDAO studentDAO) {
	    System.out.println("Updating student with id 1 ...");
	    Student student = studentDAO.findById(3);
	    if (student != null) {
	        student.setFirstName("UpdatedName");
	        studentDAO.update(student);
	        System.out.println("Updated student: " + student);
	    } else {
	        System.out.println("Student with id 1 not found.");
	    }
	}

	public void testDeleteStudent(StudentDAO studentDAO) {
	    System.out.println("Deleting student with id 2 ...");
	    studentDAO.delete(2);
	    System.out.println("Deleted student with id 2.");
}
}






