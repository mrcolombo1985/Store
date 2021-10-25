package application.models.user;

import application.dtoes.security.UserDTO;
import application.entities.security.UserEntity;
import com.querydsl.core.types.Predicate;

import java.util.List;

public interface IUserModel {
    UserEntity getByUsernameAndPassword(String username, String password);

    List<UserEntity> findAll(Predicate predicate);

    UserEntity getById(Integer userId);


    UserEntity add(UserDTO data);


    UserEntity update(String username,
                      UserDTO userDTO);

    UserEntity deleteByID(Integer userId);

    List<UserEntity> deleteAll();

    UserEntity activateByID(Integer userId);

    UserEntity deactivateByID(Integer userId);

    UserEntity prepareForDeletionByID(Integer userId);

    void add(UserEntity data);

    void delete(UserEntity userEntity);

}
