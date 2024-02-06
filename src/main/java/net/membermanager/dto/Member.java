package net.membermanager.dto;
import lombok.Data;

@Data
public class Member {
  int id;
  String name;
  String birthDate;
  String createDate;
  String expirationDate;
  int remainCount;
  boolean valid;
}
