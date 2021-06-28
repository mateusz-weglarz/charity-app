package pl.coderslab.charity.web;

import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.security.CurrentUser;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;
import pl.coderslab.charity.service.UserService;

import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping(path = "/user")
public class UserController {

    private final UserService userService;
    private final InstitutionService institutionService;
    private final DonationService donationService;

    @ModelAttribute("institutions")
    public List<Institution> getAllInstitutions() {
        return institutionService.findAllInstitutions();
    }

    @ModelAttribute("totalNumberOfBags")
    public Integer getTotalNumberOfBags() {
        return donationService.getTotalNumberOfBags();
    }

    @ModelAttribute("totalNumberOfDonations")
    public Integer getTotalNumberOfDonations() {
        return donationService.getTotalNumberOfDonations();
    }

    @GetMapping("/dashboard")
    public String getUserDashboard(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        model.addAttribute("user", userService.findUserById(currentUser.getUser().getId()));
        return "user/dashboard";
    }
}
