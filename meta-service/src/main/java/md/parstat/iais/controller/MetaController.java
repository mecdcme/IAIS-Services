package md.parstat.iais.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


import org.springframework.web.bind.annotation.RestController;

import md.parstat.iais.domain.StatisticalProcess;
import md.parstat.iais.service.MetaService;


@RestController
public class MetaController {

    @Autowired
    MetaService metaService;

    @GetMapping("/statprocess")
    public ResponseEntity<Iterable<StatisticalProcess>> findAll() {
        return ResponseEntity.ok(metaService.findAll());
    }

    @GetMapping("/statprocess/{id}")
    public ResponseEntity<StatisticalProcess> findById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(metaService.findById(id));
    }
}
