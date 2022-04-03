package exam.going;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ComponentScan(basePackages = "exam.going")
@PropertySource("application.properties")

public class ExamAppConfig {
}
