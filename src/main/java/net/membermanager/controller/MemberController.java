package net.membermanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.membermanager.dto.Member;
import net.membermanager.mapper.MemberMapper;
import net.membermanager.service.MemberService; 

@Controller 
public class MemberController { 

  @Autowired MemberService memberService; 
  @Autowired MemberMapper memberMapper; 
  
  @RequestMapping("member/test") 
  public String test(Model model) { 
    model.addAttribute("members", memberService.findAll()); 
    return "member/test"; 
  } 

  @RequestMapping("member/home") 
  public String home(Model model) { 
    model.addAttribute("members", memberService.findAll()); 
    return "member/home"; 
  } 

  @GetMapping("member/create") 
  public String detail(Model model) { 
    Member member = new Member();
    model.addAttribute("member", member);
    return "member/detail"; 
  } 

  @PostMapping("member/create") 
  public String create(Model model, Member member) { 
    memberService.insert(member);
    return "redirect:home"; 
  } 


  @GetMapping("member/edit") 
  public String edit(Model model, int id) {
    Member member = memberService.findById(id);
    model.addAttribute("member", member);
    return "member/detail"; 
  } 

  @PostMapping("member/edit") 
  public String edit(Model model, Member member) { 
    memberService.update(member);
    return "redirect:home"; 
  } 



  
}