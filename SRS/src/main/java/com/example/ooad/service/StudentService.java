package com.example.ooad.service;

import com.example.ooad.model.Course;
import com.example.ooad.model.Student;

import java.util.List;

/**
 * Created by asus on 2018/6/30.
 */
public interface StudentService {
	List<Student> getAllStudent();
	
    Student getStudentBySsn(String ssn, String password);

    Student getStudentBySsnOnly( String ssn);

    List<Student> selectStudentBySectionNo(int sectionNo);
    
    List<Course> insertPlan(String studentssn,String courseNumber);
}
