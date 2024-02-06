package net.membermanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.membermanager.dto.Member;
import net.membermanager.mapper.MemberMapper;

@Service
public class MemberService {

  @Autowired 
  MemberMapper memberMapper; 
  
  public List<Member> findAll() { 
    return memberMapper.findAll();
  } 

  public void insert(Member member) { 
    memberMapper.insert(member);
  } 

  public Member findById(int id) {
    return memberMapper.findById(id);
  }

  public void update(Member member) { 
    memberMapper.update(member); 
  } 
}
