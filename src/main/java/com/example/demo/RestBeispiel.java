package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Question;
import com.example.demo.repos.QuestionRepository;

@RestController
public class RestBeispiel {

    @Autowired
    QuestionRepository questionRepository;
    
    @CrossOrigin(origins = "http://localhost:3000") 
    @GetMapping("/json")
    public List<Question> jsonListe() {
        List<Question> jsonList = questionRepository.findAll();
        return jsonList;
        

        // 
    }
}
