package com.example.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "quiztest_questions")
public class QuizTestQuestion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "quiztest_id")
    private QuizTest quizTest;

    @ManyToOne
    @JoinColumn(name = "question_id")
    private Question question;

    public QuizTestQuestion() {}

    public QuizTestQuestion(QuizTest quizTest, Question question) {
        this.quizTest = quizTest;
        this.question = question;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    // equals and hashCode methods
}