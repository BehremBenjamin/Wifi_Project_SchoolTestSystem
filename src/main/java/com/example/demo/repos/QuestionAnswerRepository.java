package com.example.demo.repos;

import com.example.demo.model.QuestionAnswer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;


@Repository
public interface QuestionAnswerRepository extends JpaRepository<QuestionAnswer, Long> {
    @Query(value = "SELECT * FROM question_answers WHERE user_id = :userId", nativeQuery = true)
    List<QuestionAnswer> findByUserId(@Param("user") Long userId);

    @Query(value = "SELECT DISTINCT qa FROM QuestionAnswer qa WHERE qa.user.id = :userId " +
            "AND qa.quizTest.id = :quizTestId", nativeQuery = true)
    HashSet<QuestionAnswer> findByUserIdAndQuizTestId(@Param("userId") Long userId, @Param("quizTestId") Long quizTestId);
}