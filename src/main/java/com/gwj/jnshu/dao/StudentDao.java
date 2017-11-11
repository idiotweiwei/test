package com.gwj.jnshu.dao;

import com.gwj.jnshu.entities.Student;

import java.util.List;

public interface StudentDao {
    int addStudent(Student student);//增加
    void deleteStudent(long id);//删除
    int updateStudent(Student student);//修改
    Student getStudent(long id);//查询
    List<Student> getAllStudent();//列出表
}
