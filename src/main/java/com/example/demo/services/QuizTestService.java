package com.example.demo.services;

import com.example.demo.custom_exceptions.NotFoundException;
import com.example.demo.model.Question;
import com.example.demo.model.QuizTest;
import com.example.demo.model.Topic;
import com.example.demo.model.User;
import com.example.demo.repos.QuestionRepository;
import com.example.demo.repos.QuizTestRepository;
import com.example.demo.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class QuizTestService {

    @Autowired
    private QuizTestRepository quizTestRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private QuestionRepository questionRepository;

    public QuizTest createQuizTest(User user, Topic topic, int limit) {
        Set<Question> questions = generateRandomQuestionsByTopic(topic, limit);

        Set<Question> persistedQuestions = new HashSet<>();
        for (Question question : questions) {
            persistedQuestions.add(questionRepository.save(question));
        }

        QuizTest quizTest = new QuizTest();
        quizTest.setUser(user);
        quizTest.setCreationTime(LocalDateTime.now());
        quizTest.setTitle(user.getFirstName() + " " + user.getLastName() + " Quiz " + LocalDateTime.now() +" " + topic);
        quizTest.setQuestions(persistedQuestions);
        quizTest.setQuizTestTopic(topic);
        return quizTestRepository.save(quizTest);
    }

    public Set<Question> generateRandomQuestionsByTopic(Topic topic, int limit) {
        List<Question> questions = questionRepository.findRandomQuestionsByTopic(String.valueOf(topic), limit);
        Collections.shuffle(questions);
        return new HashSet<>(questions.subList(0, Math.min(questions.size(), limit)));
    }

    /* Quiz should not be  edited / updated !!!
    public QuizTest updateQuizTest(Long id, QuizTest quizTest) {
        QuizTest existingQuizTest = quizTestRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("QuizTest not found with id: " + id));

        existingQuizTest.setTitle(quizTest.getTitle());
        existingQuizTest.setQuestions(quizTest.getQuestions());
        existingQuizTest.setUser(quizTest.getUser());
        existingQuizTest.setCreationTime(quizTest.getCreationTime());
        existingQuizTest.setQuestionAnswers(quizTest.getQuestionAnswers());
        existingQuizTest.setEvaluation(quizTest.getEvaluation());

        return quizTestRepository.save(existingQuizTest);
    }
    */

    public void deleteQuizTest(Long id) {

        quizTestRepository.deleteById(id);
    }

    public QuizTest getQuizTestById(Long id) {
        return quizTestRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("QuizTest not found with id: " + id));
    }

    public List<QuizTest> getAllQuizTests() {

        return quizTestRepository.findAll();
    }
}