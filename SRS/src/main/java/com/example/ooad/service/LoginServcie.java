package com.example.ooad.service;

import com.example.ooad.model.Professor;
import com.example.ooad.model.Student;

/**
 * Created by asus on 2018/6/28.
 */
public interface LoginServcie {
    Professor loginProfessService(String ssn, String password);

    Student loginStudentService(String ssn, String password);
}
