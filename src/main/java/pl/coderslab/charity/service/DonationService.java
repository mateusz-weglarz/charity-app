package pl.coderslab.charity.service;

import pl.coderslab.charity.entity.Donation;


import java.util.List;

public interface DonationService {

    public Donation findDonationById(Long id);

    public List<Donation> findAllDonations();

    public void createDonation(Donation donation);

    public void updateDonation(Donation donationToUpdate);

    public void deleteDonation(Long donationId);
}
