package md.parstat.iais.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import md.parstat.iais.domains.StatisticalProcessEntity;
import md.parstat.iais.domains.interfaces.StatisticalProcess;
import md.parstat.iais.dto.StatisticalProcessDTO;
import md.parstat.iais.service.MetaService;


@RestController
@RequestMapping(value = "/api/v1/open/refential", produces = MediaType.APPLICATION_JSON_VALUE)
public class MetaController {

    @Autowired
    MetaService metaService;

   @GetMapping("/statprocess")
     public ResponseEntity<Iterable<StatisticalProcessDTO>> findAll() {
        return ResponseEntity.ok(metaService.findAll());
    }

    @GetMapping("/statprocess/{id}")
    public ResponseEntity<StatisticalProcessDTO> findById(@PathVariable("id") Long id) {
    	StatisticalProcessDTO statisticalProcessDTO=metaService.findById(id);
    	if (statisticalProcessDTO != null) {
			return ResponseEntity.ok(statisticalProcessDTO);
		} else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

    }
}
