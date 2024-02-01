package net.membermanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; 
import org.springframework.web.bind.annotation.RequestMapping; 
import net.membermanager.mapper.MemberMapper; 

@Controller 
public class MemberController { 
  
  @Autowired MemberMapper memberMapper; 
  
  @RequestMapping("member/test") 
  public String test(Model model) { 
    model.addAttribute("members", memberMapper.findAll()); 
    return "member/test"; 
  } 

  @RequestMapping("member/home") 
  public String home(Model model) { 
    model.addAttribute("members", memberMapper.findAll()); 
    return "member/home"; 
  } 

  @RequestMapping("member/detail") 
  public String detail(Model model) { 
    return "member/detail"; 
  } 
}