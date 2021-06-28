package pl.coderslab.charity.web;

import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.security.CurrentUser;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import java.util.List;

@AllArgsConstructor
@Controller
public class HomeController {

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


    @RequestMapping("/")
    public String homeAction(Model model) {
        return "index";
    }


}
