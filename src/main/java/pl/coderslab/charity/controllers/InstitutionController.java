package pl.coderslab.charity.controllers;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.service.InstitutionService;

import javax.validation.Valid;

@AllArgsConstructor
@Controller
@RequestMapping(path = "/institution")
public class InstitutionController {

    private final InstitutionService institutionService;

    @GetMapping("/list")
    public String getAllInstitutions(Model model) {
        model.addAttribute("institutions", institutionService.findAllInstitutions());
        return "institutions/institutions-list";
    }
//todo czy institution, donation, category tez przez dto? czy używać @AuthenticationPrincipal CurrentUser currentUser?

    @GetMapping("/add")
    public String addNewInstitution(Model model) {
        Institution institution = new Institution();
        model.addAttribute("institution", institution);
        return "institutions/add-institution";
    }

    @PostMapping("/add")
    public String addNewInstitutionPerform(@Valid Institution institution, BindingResult result,Model model){
        if(result.hasErrors()){
            return "institutions/add-institution";
        }
        model.addAttribute("institution",institution);
        institutionService.createInstitution(institution);
        return "institutions/confirm-create";
    }

    @GetMapping("/show/{institutionId}")
    public String showInstitutionDetail(@PathVariable Long institutionId, Model model){
        Institution institutionToShow = institutionService.findInstitutionById(institutionId);
        model.addAttribute("institutionToShow",institutionToShow);
        return "institutions/show-institution";
    }

    @GetMapping("/edit/{institutionId}")
    public String editInstitution(@PathVariable Long institutionId,Model model){
        Institution institutionToEdit = institutionService.findInstitutionById(institutionId);
        model.addAttribute("institutionToEdit",institutionToEdit);
        return "institutions/edit-institution-form";
    }

    @PostMapping("/edit")
    public String editInstitutionPerform(@Valid Institution institution,BindingResult result,Model model){
        if(result.hasErrors()){
            return "institutions/edit-institution-form";
        }
        model.addAttribute("institution",institution);
        institutionService.updateInstitution(institution);
        return "institutions/show-institution";
    }

    @GetMapping("/delete/{institutionId}")
    public String deleteInstitution(@PathVariable Long institutionId,Model model){
        Institution institutionToDelete = institutionService.findInstitutionById(institutionId);
        model.addAttribute("institutionToDelete",institutionToDelete);
        return "institutions/delete-institution";
    }

    @PostMapping("/delete/{institutionId}")
    public String deleteInstitutionPerform(@PathVariable Long institutionId){
        institutionService.deleteInstitution(institutionId);
        return "institutions/confirm-delete";
    }

}
