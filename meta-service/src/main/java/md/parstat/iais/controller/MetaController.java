package md.parstat.iais.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class MetaController {
	
	
	@RequestMapping("/hello")
	public ResponseEntity<String> getHello() {
		 return  ResponseEntity.ok("hello");
	}
}
