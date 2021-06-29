package pl.coderslab.charity.controllers;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.dto.UserDto;
import pl.coderslab.charity.exeption.UserAlreadyExistException;
import pl.coderslab.charity.service.UserService;

import javax.validation.Valid;

@AllArgsConstructor
@Controller
@RequestMapping(path = "/register")
public class RegistrationController {

    private final UserService userService;

    @GetMapping("/form")
    public String showRegistrationForm(Model model) {
        UserDto userDto = new UserDto();
        model.addAttribute("user", userDto);
        return "register";
    }

    @PostMapping("/form")
    public String performRegistrationForm(@Valid UserDto user, BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        try {
            userService.registerNewUserAccount(user);
        } catch (UserAlreadyExistException e) {
            e.printStackTrace();
            return "register";
        }
        return "redirect:/login";
    }

}
