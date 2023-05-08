package com.example.demo.services;

import com.example.demo.custom_exceptions.QuestionNotFoundException;
import com.example.demo.model.Question;
import com.example.demo.model.Topic;
import com.example.demo.repos.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Question> getAllQuestions() {

        return questionRepository.findAll();
    }

    public List<Question> getQuestionsByTopic(String topic) {
        return questionRepository.findByTopic(topic);
        // see [1] under the class for alternative hard coded approact!
    }

    public Question getQuestionById(Long id) throws QuestionNotFoundException {
        return questionRepository.findById(id)
                .orElseThrow(() -> new QuestionNotFoundException("Question not found with id " + id));
    }

    public void saveQuestion(Question question) {

        questionRepository.save(question);
    }

    public void updateQuestion(Long id, Question updatedQuestion) throws QuestionNotFoundException {
        Question question = questionRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid question id: " + id));
        question.setText(updatedQuestion.getText());
        question.setChoices(updatedQuestion.getChoices());
        question.setAnswer(updatedQuestion.getAnswer());
        question.setTopic(updatedQuestion.getTopic());
        questionRepository.save(question);
    }

    public void deleteQuestion(Long id) throws QuestionNotFoundException {
        Question question = getQuestionById(id);
        questionRepository.delete(question);
    }
}

/*[1]
public List<Question> getQuestionsByTopic(Topic topic) {
    List<Question> allQuestions = questionRepository.findAll();
    List<Question> filteredQuestions = new ArrayList<>();
    for (Question question : allQuestions) {
        if (question.getTopic() == topic) {
            filteredQuestions.add(question);
        }
    }
    return filteredQuestions;
}
 */