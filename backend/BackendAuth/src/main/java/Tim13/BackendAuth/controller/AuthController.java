package Tim13.BackendAuth.controller;

import Tim13.BackendAuth.DTO.LoginDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/")
public class AuthController {
    String username = "pera";
    String password = "pera";


    @PostMapping("/login")
    ResponseEntity<?> login(@RequestBody LoginDTO dto) {
        System.out.println(dto);
        if (this.username.equals(dto.getUsername()) && this.password.equals(dto.getPassword())){
            System.out.println(dto);
            return ResponseEntity.ok(dto);
        }
        else return (ResponseEntity<?>) ResponseEntity.internalServerError();
    }


}
