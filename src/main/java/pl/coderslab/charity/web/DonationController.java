package pl.coderslab.charity.web;

import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.security.CurrentUser;
import pl.coderslab.charity.service.CategoryService;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;
import pl.coderslab.charity.service.UserService;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
public class DonationController {

    private final InstitutionService institutionService;
    private final DonationService donationService;
    private final CategoryService categoryService;
    private final UserService userService;

    @ModelAttribute("institutions")
    public List<Institution> getAllInstitutions() {
        return institutionService.findAllInstitutions();
    }

    @ModelAttribute("categories")
    public List<Category> getAllCategories() {
        return categoryService.findAllCategories();
    }

    @ModelAttribute("loggedUser")
    public User getLoggedUser(@AuthenticationPrincipal CurrentUser currentUser){
        return userService.findUserById(currentUser.getUser().getId());
    }

    @GetMapping("/donation-form")
    public String newDonation(Model model) {
        Donation donation = new Donation();
        model.addAttribute("donation", donation);
        return "form";
    }

    @PostMapping("/donation-form")
    public String newDonationPerform(@Valid Donation donation, BindingResult result){
        if(result.hasErrors()){
            return "form";
        }
        donationService.createDonation(donation);
        return "/form-confirmation";
    }
}
