package pl.coderslab.charity;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.service.InstitutionService;

import java.util.List;

@AllArgsConstructor
@Controller
public class HomeController {

    private final InstitutionService institutionService;

    @ModelAttribute("institutions")
    public List<Institution> getAllInstitutions(){
        return institutionService.findAllInstitutions();
    }

    @RequestMapping("/")
    public String homeAction(Model model) {
        return "index";
    }


}
