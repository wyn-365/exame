package com.example.service.impl;

import com.example.mapper.TeaResultExamMapper;
import com.example.pojo.ExamLesson;
import com.example.pojo.StuResult;
import com.example.service.TeaResultExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeaResultServiceImpl implements TeaResultExamService {
    //属性注入
    @Autowired
    private TeaResultExamMapper teaResultExamMapper;

    @Override
    public void addExamLesson(ExamLesson examLesson) {
        teaResultExamMapper.addExamLesson(examLesson);
    }

    @Override
    public List<ExamLesson> TeaExamlesson(String username) {
        return teaResultExamMapper.TeaExamlesson(username);
    }

    @Override
    public Integer findTeacheridByusername(String username) {
        return teaResultExamMapper.findTeacheridByusername(username);
    }

    @Override
    public List<StuResult> manageStuExam(Integer id) {
        return teaResultExamMapper.manageStuExam(id);
    }
}
