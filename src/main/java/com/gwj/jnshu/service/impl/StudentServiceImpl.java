package com.gwj.jnshu.service.impl;

import com.gwj.jnshu.dao.StudentDao;
import com.gwj.jnshu.entities.Student;
import com.gwj.jnshu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentStudent")
public class StudentServiceImpl implements StudentService{

    @Autowired
    StudentDao studentDao;

    public void addStudent(Student student){
        studentDao.addStudent(student);
    }

    public void deleteStudent(Student student){
        studentDao.deleteStudent(student.getId());
    }

    public void updateStudent(Student student){
        studentDao.updateStudent(student);
    }

    public Student getStudent(long id){
        return studentDao.getStudent(id);
    }

    public List<Student> getAllStudent() {
        return studentDao.getAllStudent();
    }
}
