package com.example.demo.repos;

import com.example.demo.model.Question;
import com.example.demo.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
    @Query(value = "SELECT * FROM questions WHERE topic = :topic", nativeQuery = true)
    List<Question> findByTopic(String topic);

    /* description ORDER BY RANDOM()  -> mysql synthax =  RAND()
        https://www.javatpoint.com/sql-order-by-random
     */
    @Query(value = "SELECT * FROM questions WHERE topic = :topic ORDER BY RAND() LIMIT :limit", nativeQuery = true)
    List<Question> findRandomQuestionsByTopic(@Param("topic") String topic, @Param("limit") int limit);
}