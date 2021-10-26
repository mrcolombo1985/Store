package application.entities.security;

import application.dtoes.security.UserDTO;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@SuppressWarnings("ALL")
@Entity
@Table(name = "user", uniqueConstraints = {@UniqueConstraint(columnNames = {"email"}), @UniqueConstraint(columnNames = {"username"})})
@ToString()
@EqualsAndHashCode(of = {"userName"})
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Slf4j
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class UserEntity {
    @Id
    @Column(name = "User_Id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "firstname")
    private String firstName;

    @Column(name = "lastname")
    private String lastName;

    @Column(name = "phonenumber")
    private String phoneNumber;

    @NotNull
    @lombok.NonNull
    @Column(name = "email", nullable = false)
    private String eMail;

    @NotNull
    @lombok.NonNull
    @Column(name = "username", length = 36, nullable = false)
    private String userName;

    @Column(name = "Encryted_Password", length = 128)
    /*
     * @JsonInclude(Include.NON_NULL) on class or @JsonInclude(Include.NON_NULL)
     * here to prevent this from being serialized as null
     */
    private String encrytedPassword;

    @Column(name = "dateofbirth")
    @DateTimeFormat(iso = ISO.DATE)
    private LocalDate dateOfBirth;


    public UserEntity(UserDTO userDTO) {
        this.firstName = userDTO.getFirstName();
        this.lastName = userDTO.getLastName();
        this.dateOfBirth = userDTO.getDateOfBirth();
        this.eMail = userDTO.getEMail();
        this.phoneNumber = userDTO.getPhoneNumber();
        this.userName = userDTO.getUserName();
        if (userDTO.getConfirmedPassword().equals(userDTO.getEncrytedPassword())) {
            this.encrytedPassword = DigestUtils.md5Hex(userDTO.getConfirmedPassword());
        }
    }
}
