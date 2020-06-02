package com.example.service.impl;

import com.example.mapper.AdminExamMapper;
import com.example.pojo.ExamLesson;
import com.example.service.AdminExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class AdminExamServiceImpl implements AdminExamService {

    @Autowired
    private AdminExamMapper adminExamMapper;
    @Override
    public List<ExamLesson> findAllExamLesson() {
        return adminExamMapper.findAllExamLesson();
    }
}
