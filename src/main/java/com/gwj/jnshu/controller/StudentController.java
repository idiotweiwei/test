package com.gwj.jnshu.controller;

import com.gwj.jnshu.entities.Student;
import com.gwj.jnshu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/Student")
public class StudentController {
    @Autowired
    StudentService studentService;

    //通过查询全部获得页面列表
    @RequestMapping(value = "/liststudents",method = RequestMethod.GET)
    public String getAllStudent(Student student,Model model){
        List<Student> list = studentService.getAllStudent();
        model.addAttribute("list",list);
        return "/liststudents.jsp";
    }


    //添加
    @RequestMapping(value = "/addStudent",method = RequestMethod.GET)
    public String addStudent(){
        return "/addStudent.jsp";
    }

    //添加界面传值
    @RequestMapping(value = "/addStudentInto",method = RequestMethod.POST)
    public String addStudentInto(Student student){
        studentService.addStudent(student);
        return "redirect:/Student/liststudents";
    }


    //删除
    @RequestMapping(value = "/deleteStudent",method = RequestMethod.GET)
    public String deleteStudent(Student student){
        studentService.deleteStudent(student);
        return "redirect:/Student/liststudents";
    }


    //修改页面
    @RequestMapping(value = "/updateStudent",method = RequestMethod.GET)
    public String updateStudent(Student student,Model model){
        Student s = studentService.getStudent(student.getId());
        model.addAttribute("s",s);
        return "/updateStudent.jsp";
    }

    //修改后跳转
    @RequestMapping(value = "/updateStudentAfter",method = RequestMethod.GET)
    public String updateStudentAfter(Student student){
        studentService.updateStudent(student);
        return "redirect:/Student/liststudents";
    }


    //查寻页面
    @RequestMapping(value = "/searchStudent",method = RequestMethod.GET)
    public String search(){
        return "/searchStudent.jsp";
    }

    //查询结果展示页面
    @RequestMapping(value = "/searchStudentId",method = RequestMethod.GET)
    public String searchStudent(Long searchId, Model model){
        Student ss = studentService.getStudent(searchId);
        model.addAttribute("ss",ss);
        return "/Student/searchStudent";
    }

    @RequestMapping("/date")
    public String datess(Model model){
        List<Student> list = studentService.getAllStudent();
        model.addAttribute("list",list);
        return "/a.jsp";
    }

}
