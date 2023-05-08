package com.example.demo.repos;

import com.example.demo.model.QuizTestQuestion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizTestQuestionRepository extends JpaRepository<QuizTestQuestion, Long> {
    List<QuizTestQuestion> findByQuizTestId(Long quizTestId);
}