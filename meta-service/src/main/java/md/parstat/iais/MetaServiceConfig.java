package md.parstat.iais;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MetaServiceConfig {

	@Bean
	public ModelMapper modelMapper() {
		return new ModelMapper();
	}
}
