package com.Ujwal.FindYourPartner.Repository;

import com.Ujwal.FindYourPartner.Model.Profile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProfileRepo extends JpaRepository<Profile,Long> {
    List<Profile> findByEmailAndPassword(String email, String password);

    List<Profile> findByGender(String gender);
}
