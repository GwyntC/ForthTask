package core.service;

import core.dto.UserDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.util.Map.entry;

@Service
public class UserServiceImpl implements UserService {
    //map represents database table
    private final Map<Integer, UserDto> users = Map.ofEntries(
            entry(1, new UserDto("jackBock", "1709872", "Jack Peterson")),
            entry(2, new UserDto("joelBock", "17072", "Joel Peterson")),
            entry(3, new UserDto("admin", "admin", "Secret"))
    );

    public UserServiceImpl() {

    }

    @Override
    public UserDto getUser(String login, String password) {
        //check if User exists
        for (var entry : users.entrySet()) {
            if (entry.getValue().getLogin().equals(login) && entry.getValue().getPassword().equals(password)) {
                return entry.getValue();
            }
        }
        return null;
    }

    //get all Users
    @Override
    public List<UserDto> getAllUsers() {
        List<UserDto> list = new ArrayList<>(users.values());
        return list;
    }
}
