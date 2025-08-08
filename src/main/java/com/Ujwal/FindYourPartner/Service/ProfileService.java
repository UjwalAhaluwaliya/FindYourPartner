package com.Ujwal.FindYourPartner.Service;

import com.Ujwal.FindYourPartner.Model.Profile;
import com.Ujwal.FindYourPartner.Repository.ProfileRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProfileService {
    @Autowired
    private ProfileRepo pr;
    public void save(Profile p) {
        pr.save(p);
    }


    public List<Profile> findByEmailAndPassword(String email,String password) {
        return pr.findByEmailAndPassword(email, password);
    }

    public List<Profile> findAll() {
        return pr.findAll();
    }

    public Optional<Profile> findById(Long id) {
        return pr.findById(id);
    }

    public void deleteById(Long id) {
        pr.deleteById(id);
    }

    public List<Profile> findByGender(String gender) {
        return pr.findByGender(gender);
    }
}
