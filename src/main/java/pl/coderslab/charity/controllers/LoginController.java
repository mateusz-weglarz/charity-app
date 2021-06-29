package pl.coderslab.charity.controllers;

import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.charity.security.CurrentUser;
import pl.coderslab.charity.service.UserService;

@AllArgsConstructor
@Controller
public class LoginController {

    private final UserService userService;

    @GetMapping("/login")
    public String getLoginPage(){
        return "login";
    }

    @GetMapping("/logout")
    public String getLogoutPage(@AuthenticationPrincipal CurrentUser currentUser, Model model){
        model.addAttribute("loggedUser", userService.findUserById(currentUser.getUser().getId()));
        return "logout";
    }

}
