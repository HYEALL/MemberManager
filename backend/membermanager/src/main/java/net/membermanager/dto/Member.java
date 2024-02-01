package net.membermanager.dto;

public class Member {
  int id;
  String name;
  String birthDate;
  String createDate;
  String expirationDate;
  int remainCount;
  boolean valid;

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }
  
  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getBirthDate() {
    return this.birthDate;
  }

  public void setBirthDate(String birthDate) {
    this.birthDate = birthDate;
  }

  public String getCreateDate() {
    return this.createDate;
  }

  public void setCreateDate(String createDate) {
    this.createDate = createDate;
  }

  public String getExpirationDate() {
    return this.expirationDate;
  }

  public void setExpirationDate(String expirationDate) {
    this.expirationDate = expirationDate;
  }

  public int getRemainCount() {
    return this.remainCount;
  }

  public void setRemainCount(int remainCount) {
    this.remainCount = remainCount;
  }

  public boolean isValid() {
    return this.valid;
  }

  public void setValid(boolean valid) {
    this.valid = valid;
  }

}
