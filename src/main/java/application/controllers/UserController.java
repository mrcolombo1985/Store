package application.controllers;

import application.dtoes.security.UserDTO;
import application.entities.security.UserEntity;
import application.models.user.IUserModel;
import application.repositories.user.UserSessionRepository;
import com.querydsl.core.types.Predicate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    IUserModel userModel;

    @Autowired
    UserSessionRepository userSessionRepository;


    @RequestMapping(method = RequestMethod.PUT, value = "/")
    public void put(@RequestHeader HttpHeaders httpHeaders, HttpServletRequest request,
                    @RequestParam(name = "name") String name,
                    @RequestBody UserDTO userDTO) {
        userModel.update(name, userDTO);
    }


    @DeleteMapping(value = "/{id}")
    public UserEntity delete(@RequestHeader HttpHeaders httpHeaders, HttpServletRequest request,
                             @PathVariable(value = "id") Integer id) {
        return userModel.deleteByID(id);
    }

    @GetMapping(value = "/{id}")
    public UserEntity getById(@RequestHeader HttpHeaders httpHeaders, HttpServletRequest request,
                              @PathVariable(value = "id") Integer id) {
        return userModel.getById(id);
    }

    @DeleteMapping(value = "/")
    public void deleteAll(@RequestHeader HttpHeaders httpHeaders,
                          HttpServletRequest request) {
        userModel.deleteAll();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/")
    @ResponseBody
    public Iterable<UserDTO> get(@RequestHeader HttpHeaders httpHeaders, HttpServletRequest request,
                                 @QuerydslPredicate(root = UserEntity.class) Predicate predicate) {
        List<UserDTO> userDTOS = new ArrayList<>();
        userModel.findAll(predicate).forEach(x -> userDTOS.add(new UserDTO(x)));
        return userDTOS;
    }

    @PostMapping(value = "/")
    public void registration(@RequestHeader HttpHeaders httpHeaders,
                             HttpServletRequest request, @RequestBody UserDTO userDTO) {
        userModel.add(userDTO);
    }

}
