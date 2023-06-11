package com.example.demo.controller;

import com.example.demo.model.Question;
import com.example.demo.repos.QuestionRepository;
import com.example.demo.services.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    QuestionService questionService;

    @Autowired
    private QuestionRepository questionRepository;

    @GetMapping("")
    public String index(Model model) {
        List<Question> questions = questionRepository.findAll();
        model.addAttribute("questions", questions);
        return "questionList";
    }

    @GetMapping("/create")
    public String create(Model model) {
        model.addAttribute("question", new Question());
        return "createQuestion";
    }

    /*
    Name of a "question" object is binded directly
        no neet for explicit @ModelAttribute
     */
    @PostMapping("/saveQuestion")
    public String save(Question question) {
        questionRepository.save(question);
        return "redirect:/questions";
    }

    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model model) {
        Question question = questionRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid question id: " + id));
        model.addAttribute("question", question);
        return "editQuestion";
    }

    @PostMapping("/{id}/update")
    public String update(@PathVariable Long id, Question updatedQuestion) {
        questionService.updateQuestion(id, updatedQuestion);
        return "redirect:/questions";
    }

    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        Question question = questionRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid question id: " + id));
        questionRepository.delete(question);
        return "redirect:/questions";
    }

    @PostMapping("/filterByTopic")
    public String filterByTopic(@RequestParam("topic") String topic, Model model) {
        if (!topic.equals("without")) {
            List<Question> questions = questionService.getQuestionsByTopic(topic);
            model.addAttribute("questions", questions);
            return "questionList";
        }
        List<Question> questions = questionService.getAllQuestions();
        model.addAttribute("questions", questions);
        return "questionList";
    }
}