package pl.coderslab.charity.service;

import pl.coderslab.charity.dto.UserDto;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.exception.UserAlreadyExistException;

public interface UserService {

    public User findUserByEmail(String email);

    public User findUserById(Long id);

    public User registerNewUserAccount(UserDto userDto) throws UserAlreadyExistException;
}
