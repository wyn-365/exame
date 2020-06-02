package com.example.mapper;

import com.example.pojo.ExamLesson;
import org.springframework.stereotype.Repository;

import java.util.List;

//@Mapper
@Repository
public interface AdminExamMapper {

    public List<ExamLesson> findAllExamLesson();
}
