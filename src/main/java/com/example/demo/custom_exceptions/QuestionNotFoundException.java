package com.example.demo.custom_exceptions;

public class QuestionNotFoundException extends RuntimeException {
    public QuestionNotFoundException(String id) {
        super("Question not found with id: " + id);
    }
}