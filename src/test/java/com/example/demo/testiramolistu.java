package com.example.demo;

import com.example.demo.model.Question;
import com.example.demo.model.Topic;
import com.example.demo.services.QuizTestService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Set;

@SpringBootTest
public class testiramolistu {

    @Autowired
    QuizTestService questionService;

    @Test
    void testingGenerationOfQuestions() {
        Set<Question> questions = questionService.generateRandomQuestionsByTopic(Topic.HISTORY, 20);
        for (Question q : questions)
            System.out.println(q.getText());
    }


}
