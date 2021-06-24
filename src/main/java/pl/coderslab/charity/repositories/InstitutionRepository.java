package pl.coderslab.charity.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.charity.entity.Institution;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface InstitutionRepository extends JpaRepository<Institution,Long> {
}
