package core.service;

import core.dto.UserDto;

import java.util.List;

public interface UserService {
    UserDto getUser(String login, String password);

    List<UserDto> getAllUsers();
}
