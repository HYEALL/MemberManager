package net.membermanager.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper; 
import org.apache.ibatis.annotations.Select;

import net.membermanager.dto.Member;

@Mapper
public interface MemberMapper {

  @Select("""
      SELECT *
      FROM member
      """)
      List<Member> findAll();
  
}
