package pl.coderslab.charity.controllers;

import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.security.CurrentUser;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import java.util.Collection;
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
    public String homeAction(@AuthenticationPrincipal CurrentUser currentUser,Model model) {
        if(currentUser!=null){
            Collection<GrantedAuthority> authorities = currentUser.getAuthorities();
            for(GrantedAuthority aut:authorities){
                if(aut.getAuthority().equals("ROLE_USER")){
                    return "redirect:/user/dashboard";
                }
                if(aut.getAuthority().equals("ROLE_ADMIN")){
                    return "redirect:/admin/dashboard";
                }
            }
            //todo co jesli zalogowany jest adminem
            //todo placeholder w form:form
            //wiadomosci do insernacjonalizacji w walidacji
        }
        return "index";
    }


}
