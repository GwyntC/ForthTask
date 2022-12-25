package core.service;

import core.dto.UserDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static java.util.Map.entry;

@Service
public class LoginServiceImpl implements LoginService {
    private Map<Integer,UserDto> users=Map.ofEntries(
            entry(1,new UserDto("jackBock","1709872","Jack Peterson")),
            entry(2,new UserDto("joelBock","17072","Joel Peterson")),
            entry(3,new UserDto("admin","admin","Secret"))
    );

    public LoginServiceImpl() {

    }

    @Override
    public UserDto getUser(String login, String password) {
        for(var entry:users.entrySet()){
            if(entry.getValue().getLogin().equals(login) && entry.getValue().getPassword().equals(password)){
                return entry.getValue();
            }
        }
        return null;
    }

    @Override
    public List<UserDto> getAllUsers() {
        List<UserDto> list=new ArrayList<UserDto>(users.values());
        return list;
    }
}
