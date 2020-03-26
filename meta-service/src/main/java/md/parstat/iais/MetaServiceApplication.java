package md.parstat.iais;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class MetaServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(MetaServiceApplication.class, args);
    }

}
