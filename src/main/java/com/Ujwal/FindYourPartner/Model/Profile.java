package com.Ujwal.FindYourPartner.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
@Entity
public class Profile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private String age;
    @Column
    private String gender;
    @Column
    private String qualification;
    @Column
    private String bio;
    @Column
    private String email;
    @Column
    private String password;
    @Transient
    private String confirmPassword;
    @Column
    private String phoneNo;
}
