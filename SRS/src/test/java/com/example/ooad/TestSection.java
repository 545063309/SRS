package com.example.ooad;

import com.example.ooad.model.Course;
import com.example.ooad.model.Professor;
import com.example.ooad.model.Section;
import com.example.ooad.model.Student;
import org.junit.Test;

import java.util.ArrayList;

/**
 * Created by asus on 2018/7/9.
 */
public class TestSection {
    @Test
    public void testChooseSection(){
        Professor professor1=new Professor("杨明智","123","教授","管理学院","123");
        Course course1=new Course("001","高等数学",5,null);
        Course course2=new Course("002","线性代数",5,null);
        ArrayList<Course> courses=new ArrayList<>();
        ArrayList<Course> planOfStudy=new ArrayList<>();
        courses.add(course1);
        courses.add(course2);
        Course course3=new Course("003","微观经济学",5,courses);
        planOfStudy.addAll(courses);
        planOfStudy.add(course3);

        Section section1=new Section(2,"周二","1.2节","a301",120,course1,professor1);
        Section section2=new Section(2,"周二","1.2节","a301",120,course2,professor1);
        ArrayList<Section> attends=new ArrayList<>();
        attends.add(section1);
        attends.add(section2);
        Student student=new Student("1","杨俊豪","1","2015级","电子商务");
        student.setPlanOfStudy(planOfStudy);//测试planOfStudy
        student.setAttends(attends);

        Section sectionTest=new Section(1,"周一","1.2节","201",120,course3,professor1);
        System.out.println(sectionTest.canChoose(student));
    }
}
