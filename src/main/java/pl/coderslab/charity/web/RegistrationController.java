package pl.coderslab.charity.web;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.dto.UserDto;
import pl.coderslab.charity.entity.User;
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

//    @PostMapping("/form")
//    public String performRegistrationForm(@Valid UserDto user, BindingResult result) {
//        if (result.hasErrors()) {
//            return "register";
//        }
//        try {
//            User registered = userService.registerNewUserAccount(user);
//        } catch (UserAlreadyExistException uaeEx) {
//            mav.addObject("message", "An account for that username/email already exists.");
//            return mav;
//        }
//    }

}
