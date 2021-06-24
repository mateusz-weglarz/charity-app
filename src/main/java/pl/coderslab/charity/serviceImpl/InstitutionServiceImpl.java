package pl.coderslab.charity.serviceImpl;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repositories.InstitutionRepository;
import pl.coderslab.charity.service.InstitutionService;

import java.lang.management.OperatingSystemMXBean;
import java.util.List;
import java.util.Optional;

@Service
@Primary
@AllArgsConstructor
public class InstitutionServiceImpl implements InstitutionService {

    private final InstitutionRepository institutionRepository;

    @Override
    public Institution findInstitutionById(Long id) {
        Optional<Institution> optionalInstitution = institutionRepository.findById(id);
        if (optionalInstitution.isEmpty()) {
            throw new IllegalStateException("Institution do not exist");
        }
        return optionalInstitution.get();
    }

    @Override
    public List<Institution> findAllInstitutions() {
        return institutionRepository.findAll();
    }

    @Override
    public void createInstitution(Institution institution) {
        institutionRepository.save(institution);
    }

    @Override
    public void updateInstitution(Institution institution) {
        institutionRepository.save(institution);
        //todo sprawdzenie istnienia w bazie przed aktualizacją
    }

    @Override
    public void deleteInstitution(Long institutionId) {
        boolean exist = institutionRepository.existsById(institutionId);
        if (!exist) {
            throw new IllegalStateException("Institution do not exist");
        }
        institutionRepository.deleteById(institutionId);
    }
}
