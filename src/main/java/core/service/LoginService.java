package core.service;

import core.dto.UserDto;

import java.util.List;
import java.util.Map;

public interface LoginService {
    UserDto getUser(String login, String password);
    List<UserDto> getAllUsers();
}
