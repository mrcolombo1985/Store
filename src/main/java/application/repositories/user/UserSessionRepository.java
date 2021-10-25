package application.repositories.user;

import application.entities.security.UserSession;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserSessionRepository extends JpaRepository<UserSession, Integer> {
    UserSession findByTokenAndIsValidTrue(String token);

    UserSession findByUserNameAndIpAndUserAgentAndIsValidTrue(String userName, String address, String agent);
}
