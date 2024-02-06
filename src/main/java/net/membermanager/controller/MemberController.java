package net.membermanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.validation.Valid;
import net.membermanager.dto.Member;
import net.membermanager.mapper.MemberMapper;
import net.membermanager.service.MemberService; 

@Controller
@RequestMapping("member")
public class MemberController { 

  @Autowired MemberService memberService; 
  @Autowired MemberMapper memberMapper; 
  
  @RequestMapping("test") 
  public String test(Model model) { 
    model.addAttribute("members", memberService.findAll()); 
    return "member/test"; 
  } 

  @RequestMapping("home") 
  public String home(Model model) { 
    model.addAttribute("members", memberService.findAll()); 
    return "member/home"; 
  } 

  @GetMapping("create") 
  public String detail(Model model) { 
    Member member = new Member();
    model.addAttribute("member", member);
    return "member/detail"; 
  } 

  @PostMapping("create") 
  public String create(Model model, @Valid Member member, BindingResult bindingResult) { 
    if (bindingResult.hasErrors()) {
      return "member/detail"; 
    }
    memberService.insert(member);
    return "redirect:home"; 
  } 


  @GetMapping("edit") 
  public String edit(Model model, int id) {
    Member member = memberService.findById(id);
    model.addAttribute("member", member);
    return "member/detail"; 
  } 

  @PostMapping("edit") 
  public String edit(Model model, Member member) { 
    memberService.update(member);
    return "redirect:home"; 
  } 



  
}