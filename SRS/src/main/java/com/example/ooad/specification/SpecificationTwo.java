package com.example.ooad.specification;


import com.example.ooad.model.Section;
import com.example.ooad.model.Student;

public interface SpecificationTwo<T,N> {
	boolean validate(Student student, Section section);
}
