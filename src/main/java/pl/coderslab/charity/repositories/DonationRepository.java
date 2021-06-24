package pl.coderslab.charity.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.charity.entity.Donation;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface DonationRepository extends JpaRepository<Donation,Long> {

    @Query(value = "SELECT sum(d.quantity) from Donation d")
    Integer getTotalNumberOfBags();

    @Query(value = "SELECT COUNT(*) FROM Donation d")
    Integer getTotalNumberOfDonations();
}
