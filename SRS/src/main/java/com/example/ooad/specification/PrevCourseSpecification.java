package com.example.ooad.specification;

import com.example.ooad.model.Course;
import com.example.ooad.model.Score;
import com.example.ooad.model.Section;
import com.example.ooad.model.Student;

public class PrevCourseSpecification implements SpecificationTwo<Student,Section> {
	@Override
	public boolean validate(Student student, Section section) {
		if(section.getCourse().getPrevCourse().size()>0){
			for(Course c:section.getCourse().getPrevCourse()){
				if(student.getScoreEntity().size()==0){
					return false;
				}else{
					for(Score t:student.getScoreEntity()){
						if(t.getSection().getCourse().getNumber().equals(c.getNumber())&&t.getGrade()>=60){
							return false;
							}
						}
					}
				}
			}
			else {
				return false;
			}
			return true;
		}
	
	}