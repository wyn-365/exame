package com.example.service;

import com.example.pojo.ExamLesson;
import com.example.pojo.Questions;

import java.util.List;

public interface TeacherIndexService {
    public List<Questions>ExamQuestionByteacherid(Integer id);
    public List<ExamLesson> findExamLessonByteacherid(Integer id);
    public Questions findExamQuestionsById(Integer id);
    //保存增加或者修改的考试试题
    public void saveExamQuestions(Questions questions);

}
