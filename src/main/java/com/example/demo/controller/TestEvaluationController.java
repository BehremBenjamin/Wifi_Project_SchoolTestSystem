package com.example.demo.controller;

import com.example.demo.model.Question;
import com.example.demo.model.QuestionAnswer;
import com.example.demo.model.QuizTest;
import com.example.demo.model.User;
import com.example.demo.repos.QuestionAnswerRepository;
import com.example.demo.repos.QuizTestQuestionRepository;
import com.example.demo.repos.QuizTestRepository;
import com.example.demo.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Controller()
public class TestEvaluationController {

    @Autowired
    private QuizTestRepository quizTestRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private QuestionAnswerRepository questionAnswerRepository;

    @Autowired
    QuizTestQuestionRepository quizTestQuestionRepository;

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

    @PostMapping("/evaluateTest")
    public String evaluateTest(@ModelAttribute("test") QuizTest test,
                               @ModelAttribute("user") User user,
                               @ModelAttribute("testId") Long testId,
                               Model model, HttpServletRequest httpServletRequest) {

        double correctQuestions = 0;
        double questionNumber = 0;

        Set<QuestionAnswer> questionAnswers = new HashSet<>();

        QuizTest evaluatingTest = null;
        Optional<QuizTest> existingTest = quizTestRepository.findById(testId);
        if (existingTest.isPresent())
            evaluatingTest = existingTest.get();

        Set<Question> testQuestions = evaluatingTest.getQuestions();
        int numberQuestion = testQuestions.size();
        for (Question question : testQuestions) {

            questionNumber += 1;

            int questionAnswer = Integer.parseInt(httpServletRequest.getParameter("question-" + question.getId()));

            if (questionAnswer == question.getAnswer()) {
                questionAnswers.add(new QuestionAnswer(user, evaluatingTest, question, question.getChoice(questionAnswer), true));
                questionAnswerRepository.save(new QuestionAnswer(user, evaluatingTest, question, question.getChoice(questionAnswer), true));
                correctQuestions += 1;
            } else {
                questionAnswers.add((new QuestionAnswer(user, evaluatingTest, question, question.getChoice(questionAnswer), false)));
            }

            questionAnswerRepository.save(new QuestionAnswer(user, evaluatingTest, question, question.getChoice(questionAnswer), false));
        }

        evaluatingTest.setEvaluation((correctQuestions / questionNumber) * 100);
        evaluatingTest.setTitle(evaluatingTest.getQuizTestTopic() + " " + LocalDateTime.now().format(formatter));

        String testStatus = evaluatingTest.getEvaluation() > 60 ? "PASSED" : "NOT PASSED";

        String formattedEvaluation = String.format("%.2f", evaluatingTest.getEvaluation());

        quizTestRepository.save(evaluatingTest);
        //HashSet<QuestionAnswer> questionAnswers = questionAnswerRepository.findByUserIdAndQuizTestId(user.getId(), testId);
        model.addAttribute("evaluatingTest", evaluatingTest.getTitle());
        model.addAttribute("user", user);
        model.addAttribute("evaluation", formattedEvaluation);
        model.addAttribute("answers", questionAnswers);
        model.addAttribute("testStatus", testStatus);

        return "evaluation";
    }

}



