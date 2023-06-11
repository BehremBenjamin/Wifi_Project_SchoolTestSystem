package com.example.demo.controller;

import com.example.demo.model.Role;
import com.example.demo.model.User;
import com.example.demo.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
public class LoginController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("/")
    public String loginPage() {
        return "loginPage";
    }

    @PostMapping("/login")
    public String loginHandler(@RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam("role") Role role, HttpSession session,
                               Model model) {

        /*
        Since Java 8 ofNullable wraps posible null values !!!
         */
        Optional<User> optionalUser = Optional.ofNullable(userRepository.findByEmail(email));

        if (!optionalUser.isPresent()) {
            model.addAttribute("UserNotFound", "User not found!");
            return "loginPage";
        }

        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            if (user.getPassword().equals(password) && user.getRole().equals(role)) {
                session.setAttribute("user", user);
                if (role.equals(Role.ADMIN)) return "adminIndex";
                return "studentIndex";
            } else {
                model.addAttribute("LoginFail", "Login failed! Password or Role not correct");
                return "loginPage";
            }
        }
        return "redirect:/";
    }
}



    /* Version with whole object, not parameters !!!
    @PostMapping("/login")
    public String handleLogin(@ModelAttribute("user") User user, Model model) {

        User dbUser = userRepository.findByEmail(user.getEmail());

        if (dbUser == null || !dbUser.getPassword().equals(user.getPassword())) {

            System.out.println("PASSSWORD NIJE TACAN jer " + dbUser.getPassword() +  "nije" + user.getPassword());
            model.addAttribute("errorMessage", "Invalid login credentials.");
            return "index";
        }

        if (!dbUser.getRole().equals(user.getRole())) {
            model.addAttribute("errorMessage", "Invalid login credentials.");
            return "index";
        }

        if (user.getRole().toString() == "ADMIN") {
            return "adminIndex";
        } else {
            return "studentIndex";
        }
    }
}

*/
