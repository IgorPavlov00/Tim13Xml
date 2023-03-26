package Tim13.BackendZig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//@ComponentScan(basePackages = {"Tim13.BackendZig.model"})
public class BackendZigApplication {

	public static void main(String[] args) {
		SpringApplication.run(BackendZigApplication.class, args);
	}

}
