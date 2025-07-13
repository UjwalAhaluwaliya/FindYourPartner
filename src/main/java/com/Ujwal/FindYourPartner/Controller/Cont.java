package com.Ujwal.FindYourPartner.Controller;

import com.Ujwal.FindYourPartner.Model.Profile;
import com.Ujwal.FindYourPartner.Service.ProfileService;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Optional;

@Controller
public class Cont {
    @Autowired
    private ProfileService ps;
    @GetMapping("/")
    public String home() {
        return "home";
    }


    @GetMapping("/Register")
    public String Reg(){
        return "Register";
   }
    @GetMapping("/Login")
    public String Log(){
        return "Login";
    }
    @PostMapping("/Register")
    public String UserReg(Profile p, Model model, RedirectAttributes redirectAttributes){
        if(!p.getPassword().equals(p.getConfirmPassword())){
            redirectAttributes.addFlashAttribute("error","password not match");
            return "redirect:/Register";
        }
        ps.save(p);
        return "Login";
    }
    @PostMapping("/Login")
    public String UserLog(Profile p, RedirectAttributes redirectAttributes,Model model, HttpSession session) {
        List<Profile> pp = ps.findByEmailAndPassword(p.getEmail(),p.getPassword());
        if (pp.isEmpty()) {
            redirectAttributes.addFlashAttribute("error", "there is no user");
            return"redirect:/Login";
        } else {
            //get to know whats this
            Profile user = pp.get(0);
           session.setAttribute("loggedInUser", user);
            model.addAttribute("userDetails", user);
            List<Profile> allUsers = ps.findAll();
            model.addAttribute("allUsers", allUsers);
            return "myProfile";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
    @GetMapping("/updateProfile")
    public String ShowUpdateForm(@RequestParam("id")Long id,Model model){
        Optional<Profile>user=ps.findById(id);
        if(user.isPresent()) {
            model.addAttribute("profile", user.get());

            return "updateProfile";
        }
        else{
            return "redirect:/myProfile";
        }
    }


    @PostMapping("/updateProfile")
    public String updateProfile(Profile profile, HttpSession session) {
        ps.save(profile);
        session.setAttribute("loggedInUser", profile); // Optional
        return "myProfile";
    }

    @PostMapping("/deleteProfile")
    public String delete(@RequestParam("id")Long id, Profile p, HttpSession session) {
        // Delete the profile using its ID
        ps.deleteById(p.getId());

        // Invalidate the session since the user no longer exists
        session.invalidate();

        // Redirect to home or login/registration page
        return "redirect:/";
    }
    @GetMapping("/interestedIn")
    public String interestPage(@RequestParam(value = "gender", required = false) String gender, Model model) {
        List<Profile> users;

        if (gender != null) {
            users = ps.findByGender(gender);
        } else {
            users = ps.findAll();
        }

        model.addAttribute("allUsers", users);
        model.addAttribute("selectedGender", gender);

        return "interestedIn"; // JSP page name
    }

}


