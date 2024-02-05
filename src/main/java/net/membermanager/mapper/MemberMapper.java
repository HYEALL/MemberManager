package net.membermanager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.membermanager.dto.Member;

@Mapper
public interface MemberMapper {


  @Select("SELECT * FROM member")
  List<Member> findAll();

  @Insert("""
      INSERT member (name, birthDate, createDate, expirationDate, remainCount)
      VALUES (#{name}, #{birthDate}, #{createDate}, #{expirationDate}, #{remainCount})
      """)
  @Options(useGeneratedKeys=true, keyProperty="id")
  void insert(Member member);
  
  @Update("""
      UPDATE member SET name=#{name}, expirationDate=#{expirationDate}, remainCount=#{remainCount} 
      WHERE id = #{id}
      """)
  void update(Member member);

  @Select("""
      SELECT * FROM member WHERE id = #{id}
      """)
  Member findById(int id);
}
