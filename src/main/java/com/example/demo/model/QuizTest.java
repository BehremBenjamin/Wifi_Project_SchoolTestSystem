package com.example.demo.model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "quiztests")
public class QuizTest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @ManyToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
    @JoinTable(
            name = "quiztest_questions",
            joinColumns = @JoinColumn(name = "quiztest_id"),
            inverseJoinColumns = @JoinColumn(name = "question_id"))
    private Set<Question> questions = new HashSet<>();

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Topic getQuizTestTopic() {
        return quizTestTopic;
    }

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    Topic quizTestTopic;

    @Column(nullable = false)
    private LocalDateTime creationTime;

    @OneToMany(mappedBy = "quizTest", cascade = CascadeType.ALL)
    private Set<QuestionAnswer> questionAnswers;

    private double evaluation;

    public QuizTest() {
        this.creationTime = LocalDateTime.now();
    }

    public QuizTest(String title, Set<Question> questions, User user) {
        this.title = user.getFirstName() + user.getLastName() + LocalDateTime.now().toString();
        this.questions = questions;
        this.user = user;
        this.creationTime = LocalDateTime.now();
    }

    // getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Set<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public LocalDateTime getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(LocalDateTime creationTime) {
        this.creationTime = creationTime;
    }

    public double getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(double evaluation) {
        this.evaluation = evaluation;
    }

    public void setQuizTestTopic(Topic quizTestTopic) {
        this.quizTestTopic = quizTestTopic;
    }
    public Set<QuestionAnswer> getQuestionAnswers() {
        return this.questionAnswers;
    }

    public void setQuestionAnswers(Set<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }


    @Override
    public String toString() {
        return "QuizTest [id=" + id + ", title=" + title + ", questions=" + questions + ", user=" + user.getEmail()
                + ", creationTime=" + creationTime + ", evaluation=" + evaluation + "]";
    }
}