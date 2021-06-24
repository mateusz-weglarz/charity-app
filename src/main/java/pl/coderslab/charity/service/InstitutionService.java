package pl.coderslab.charity.service;


import pl.coderslab.charity.entity.Institution;

import java.util.List;

public interface InstitutionService {

    public Institution findInstitutionById(Long id);

    public List<Institution> findAllInstitutions();

    public void createInstitution(Institution institution);

    public void updateInstitution(Institution institutionToUpdate);

    public void deleteInstitution(Long institutionId);
}
