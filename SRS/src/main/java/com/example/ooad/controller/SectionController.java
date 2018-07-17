package com.example.ooad.controller;

import com.example.ooad.model.Course;
import com.example.ooad.model.Section;
import com.example.ooad.model.Student;
import com.example.ooad.service.CourseService;
import com.example.ooad.service.SectionService;
import com.example.ooad.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by asus on 2018/6/30.
 */
@Controller
public class SectionController {

    @Autowired
    SectionService sectionService;
    @Autowired
    CourseService courseService;
    @Autowired
    StudentService studentService;

    @RequestMapping(value="teacherSectionArrange")
    public String teacherSectionArrangeHtml(HttpSession session){
        List<Course> courses=courseService.getAllCourse();
        List<Section> section=sectionService.getAllSection();
        session.setAttribute("courses",courses);
        session.setAttribute("section",section);
        return "teacherSectionArrange";
    }
    @RequestMapping(value="planOfStudyArrange")
    public String planOfStudyArrangeHtml(HttpSession session){
    	List<Student> students=studentService.getAllStudent();
    	session.setAttribute("students",students);
        return "planOfStudyArrange";
    }
    @RequestMapping(value="planOfStudyAdd")
    public String planOfStudyAdd(String studentssn,String courseNumber){
    	List<Student> students=studentService.getAllStudent();
    	studentService.insertPlan(studentssn,courseNumber);
        return "redirect:/planOfStudyArrange";
    }
    
    @RequestMapping(value="SectionAdd")
    public String SectionAdd(String dayOfWeek,String timeOfDay,String room,int capacity,String courseNumber){
        sectionService.insertSection(dayOfWeek,timeOfDay,room,capacity,courseNumber);
        return "redirect:/teacherSectionArrange";
    }

    @RequestMapping(value = "SectionDelete")
    public String SectionDelete(int sectionNo){
        sectionService.deleteSectionBySectionNo(sectionNo);
        return "redirect:/teacherSectionArrange";
    }
}
