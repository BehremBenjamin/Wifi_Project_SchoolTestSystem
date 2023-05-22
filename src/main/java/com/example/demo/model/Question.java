package com.example.demo.model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "questions")
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ElementCollection
    @CollectionTable(name = "question_choices")
    private List<String> choices;

    @Enumerated(EnumType.STRING)
    private Topic topic;

    @JsonBackReference 
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "questions")
    private Set<QuizTest> quizTests = new HashSet<>();

    private String text;
    private int answer;

    @OneToMany(mappedBy = "question", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<QuestionAnswer> answers;


    public Set<QuizTest> getQuizTests() {
        return quizTests;
    }

    public void setQuizTests(Set<QuizTest> quizTests) {
        this.quizTests = quizTests;
    }


    public Question() {

    }

    public Question(String text, List<String> choices, int answer, Topic topic) {
        this.text = text;
        this.choices = choices;
        this.answer = answer;
        this.topic = topic;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<String> getChoices() {
        return choices;
    }

    public void setChoices(List<String> choices) {
        this.choices = choices;
    }

    public String getChoice(int choice) {
        return this.choices.get(choice);
    }

    public int getAnswer() {
        return answer;
    }

    public void setAnswer(int answer) {
        this.answer = answer;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }
}