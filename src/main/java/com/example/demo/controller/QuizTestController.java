package com.example.demo.controller;

import com.example.demo.model.Question;
import com.example.demo.model.QuizTest;
import com.example.demo.model.Topic;
import com.example.demo.model.User;
import com.example.demo.services.QuizTestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/quiztests")
public class QuizTestController {

    @Autowired
    private QuizTestService quizTestService;

    @PostMapping("/test")
    public String testCreated(@SessionAttribute("user") User user,
                              @RequestParam("topic") Topic topic,
                              @RequestParam("limit") int limit,
                              Model model) {
        QuizTest test = quizTestService.createQuizTest(user, topic, limit);
        // Set<Question> questionList = test.getQuestions();
        model.addAttribute("test", test);
        model.addAttribute("user", user);
        model.addAttribute("testId", test.getId());
        return "testTemplate";
    }

    @GetMapping("allQuizTests")
    public String showAllQuizTests(Model model) {
        List<QuizTest> quizTests = quizTestService.getAllQuizTests();
        model.addAttribute("quizTests", quizTests);
        return "quiztest/list";
    }

    @GetMapping("/{id}")
    public String showQuizTest(@PathVariable Long id, Model model) {
        QuizTest quizTest = quizTestService.getQuizTestById(id);
        model.addAttribute("quizTest", quizTest);
        return "quiztest/show";
    }

    @GetMapping("/{id}/delete")
    public String showDeleteConfirmation(@PathVariable Long id, Model model) {
        QuizTest quizTest = quizTestService.getQuizTestById(id);
        model.addAttribute("quizTest", quizTest);
        return "quiztest/delete";
    }

    @PostMapping("/{id}/delete")
    public String deleteQuizTest(@PathVariable Long id) {
        quizTestService.deleteQuizTest(id);
        return "redirect:/quiztests";
    }
}