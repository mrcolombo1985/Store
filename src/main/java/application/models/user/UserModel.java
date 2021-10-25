package application.models.user;

import application.dtoes.security.UserDTO;
import application.entities.security.QUserEntity;
import application.entities.security.UserEntity;
import application.exception.security.user.UserExistsException;
import application.repositories.user.UserRepository;
import com.querydsl.core.types.Predicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserModel implements IUserModel {

    @Autowired
    UserRepository userRepository;


    @Override
    public UserEntity getByUsernameAndPassword(String username, String password) {
        return userRepository.findByUserNameAndAndEncrytedPassword(username, password);
    }

/*    private UserEntity toOne(Iterable<UserEntity> data) {
        List<UserEntity> res = new ArrayList<>();
        data.forEach(item -> {
            res.add(item);
        });
        return res.get(0);
    }*/

    @Override
    public List<UserEntity> findAll(Predicate predicate) {
        List<UserEntity> res = new ArrayList<>();
        userRepository.findAll(predicate).forEach(item -> {
            res.add(item);
        });
        return res;
    }


    @Override
    public UserEntity getById(Integer userId) {
        return userRepository.getOne(userId);
    }


    @Override
    public UserEntity add(UserDTO data) {
        if (userRepository.exists(QUserEntity.userEntity.userName.eq(data.getUserName())))
            throw new UserExistsException();
        return userRepository.save(new UserEntity((data)));
    }


    @Override
    public UserEntity update(String username,
                             UserDTO userDTO) {
        UserEntity user = userRepository.findOne(QUserEntity.userEntity.userName.eq(username)).get();
        //TODO редактирование данных пользователя
        // if (userRepository.existsByUserNameAndEMail(user.getUserName(), user.getEMail())) throw new EntityExistsException(""); 
        // we're trying to update existing user. throwing an exception if it exists will stop our job. 
        userRepository.save(user);
        return user;
    }

    /**
     * Deletes the user skipping checks
     */
    @Override
    public UserEntity deleteByID(Integer userId) {
        UserEntity usr = userRepository.getOne(userId);
        userRepository.deleteById(userId);
        return usr;
    }

    /**
     * Deletes all users skipping checks
     */
    @Override
    public List<UserEntity> deleteAll() {
        List<UserEntity> all = userRepository.findAll();
        for (UserEntity user : all) {
        }
        userRepository.deleteAll();
        return all;
    }

    /**
     * Activates the user, activating all his "deactivated" events and subscriptions;
     */
    @Override
    public UserEntity activateByID(Integer userId) {
        UserEntity usr = userRepository.getOne(userId);
        return usr;
    }

    /**
     * Deactivates the user, all his events and subscriptions;
     */
    @Override
    public UserEntity deactivateByID(Integer userId) {
        UserEntity usr = userRepository.getOne(userId);
        return usr;
    }

    /**
     * Puts the user into deletion queue;
     */
    @Override
    public UserEntity prepareForDeletionByID(Integer userId) {
        UserEntity usr = userRepository.getOne(userId);
        return null;
    }

    @Override
    public void add(UserEntity data) {
        if (userRepository.exists(QUserEntity.userEntity.userName.eq(data.getUserName())))
            throw new UserExistsException();
        userRepository.save(data);
    }

    @Override
    public void delete(UserEntity userEntity) {
        userRepository.delete(userEntity);
    }
}
