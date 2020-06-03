package com.fintech.fbank.entity;


import lombok.Data;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import javax.validation.constraints.*;

@Data
@Component
@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    @NotNull(message = "Không được bỏ trống")
    @Size(min = 1,message = "Không được bỏ trống")
    private String lastName;

    @Column(name = "free_passes")
    @NotNull(message = "Không được bỏ trống")
    @Max(value = 10,message = "phải nhỏ hơn bằng 10")
    @Min(value = 0,message = "lớn hơn bằng 0")
    private Integer freePasses;

    @Column(name = "postal_code")
    @Pattern(regexp = "^[a-zA-Z0-9]{5}",message = "5 Kí tự hoặc số")
    private String postalCode;

    @Column(name = "email")
    @NotNull(message = "Không được bỏ trống")
    @Email(message = "Không đúng định dạng email.Vui lòng nhập lại")
    private String email;

    public Customer() {
    }

}
