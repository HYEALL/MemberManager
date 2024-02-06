package net.membermanager.dto;
import jakarta.annotation.Nullable;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class Member {

  int id;
  
  @NotEmpty @NotBlank
  @Size(min=2, max=12)
  String name;

  @NotEmpty
  String birthDate;

  @NotEmpty
  String createDate;
  
  @NotEmpty
  String expirationDate;


  int remainCount;

  boolean valid;
}
