package pl.coderslab.charity.serviceImpl;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.repositories.DonationRepository;
import pl.coderslab.charity.service.DonationService;

import java.util.List;
import java.util.Optional;

@Service
@Primary
@AllArgsConstructor
public class DonationServiceImpl implements DonationService {

    private final DonationRepository donationRepository;

    @Override
    public Donation findDonationById(Long id) {
        Optional<Donation> optionalDonation = donationRepository.findById(id);
        if (optionalDonation.isEmpty()) {
            throw new IllegalStateException("Donation do not exist");
        }
        return optionalDonation.get();
    }

    @Override
    public List<Donation> findAllDonations() {
        return donationRepository.findAll();
    }

    @Override
    public void createDonation(Donation donation) {
        donationRepository.save(donation);
    }

    @Override
    public void updateDonation(Donation donationToUpdate) {
        Donation donation = donationRepository.findById(donationToUpdate.getId()).orElseThrow(() -> new IllegalStateException("Donation do not exist"));
        donationRepository.save(donation);
        //todo zapytać o pl en ścieżka
    }

    @Override
    public void deleteDonation(Long donationId) {
        boolean exist = donationRepository.existsById(donationId);
        if (!exist) {
            throw new IllegalStateException("Donation do not exist");
        }
        donationRepository.deleteById(donationId);
    }

    @Override
    public Integer getTotalNumberOfBags() {
        return donationRepository.getTotalNumberOfBags();
    }

    @Override
    public Integer getTotalNumberOfDonations() {
        return donationRepository.getTotalNumberOfDonations();
    }

}
