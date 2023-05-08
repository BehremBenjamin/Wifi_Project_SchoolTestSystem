package com.example.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "question_answers", uniqueConstraints = {@UniqueConstraint(columnNames = {"user_id", "quiz_test_id", "question_id"})})
public class QuestionAnswer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "quiz_test_id")
    private QuizTest quizTest;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id")
    private Question question;

    private String questionAnswer;

    private boolean correct;

    public QuestionAnswer(User user, QuizTest quizTest, Question question, String answer, boolean correct) {
        this.user = user;
        this.quizTest = quizTest;
        this.question = question;
        this.questionAnswer = answer;
        this.correct = correct;
    }

    public QuestionAnswer() {
    }

    public QuestionAnswer(Long id, User user, QuizTest quizTest, Question question, String answer) {
        this.id = id;
        this.user = user;
        this.quizTest = quizTest;
        this.question = question;
        this.questionAnswer = answer;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public QuizTest getQuizTest() {
        return quizTest;
    }

    public void setQuizTest(QuizTest quizTest) {
        this.quizTest = quizTest;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public String getAnswer() {
        return questionAnswer;
    }

    public void setAnswer(String answer) {
        this.questionAnswer = answer;
    }

    public String getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(String questionAnswer) {
        this.questionAnswer = questionAnswer;
    }

    public boolean isCorrect() {
        return correct;
    }

    public void setCorrect(boolean correct) {
        this.correct = correct;
    }
}