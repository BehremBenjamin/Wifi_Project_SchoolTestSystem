package com.example.demo.controller;

import com.example.demo.model.Question;
import com.example.demo.model.QuizTest;
import com.example.demo.model.User;
import com.example.demo.repos.QuestionRepository;
import com.example.demo.repos.QuizTestRepository;
import com.example.demo.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private QuestionRepository questionRepository;

    @Autowired
    private QuizTestRepository quizTestRepository;

    @GetMapping("/index")
    public String index() {
        return "adminIndex";
    }

    @GetMapping("/students")
    public String getUsers(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);
        return "studentList";
    }



    @GetMapping("/questions")
    public String getQuestions(Model model) {
        List<Question> questions = questionRepository.findAll();
        model.addAttribute("questions", questions);
        return "questionList";
    }

    @GetMapping("/quiztests")
    public String getQuizTests(Model model) {
        List<QuizTest> quizTests = quizTestRepository.findAll();
        model.addAttribute("quizTests", quizTests);
        return "adminQuizTests";
    }
}