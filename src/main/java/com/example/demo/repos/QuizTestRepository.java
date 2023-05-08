package com.example.demo.repos;

import com.example.demo.model.Question;
import com.example.demo.model.QuizTest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface QuizTestRepository extends JpaRepository<QuizTest, Long> {
    @Query("SELECT qtq.question FROM QuizTestQuestion qtq WHERE qtq.quizTest.id = :quizTestId")
    List<Question> findQuestionsByQuizTestId(Long quizTestId);
}