package com.gwj.jnshu.service;

import com.gwj.jnshu.entities.Student;

import java.util.List;

public interface StudentService {
    void addStudent(Student student);
    void deleteStudent(Student student);
    void updateStudent(Student student);
    Student getStudent(long id);
    List<Student> getAllStudent();//列出表

}
