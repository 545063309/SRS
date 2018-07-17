package com.example.ooad.specification;

import com.example.ooad.model.Course;
import com.example.ooad.model.Section;
import com.example.ooad.model.Student;

/**
 * Created by asus on 2018/7/9.
 */
public class StudyPlanSpecification implements SpecificationTwo<Student,Section>{

    @Override
    public boolean validate(Student student, Section section) {
                for(Course s:student.getPlanOfStudy()){
                    System.out.println("s.getCourse().getNumber()===="+s.getNumber());
                    System.out.println("section.getCourse().getNumber()====="+section.getCourse().getNumber());
                    if(s.getNumber().equals(section.getCourse().getNumber())){
                        return false;
                    }
                }
        return true;
    }
}
