package md.parstat.iais.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import md.parstat.iais.domain.StatisticalProcess;
import md.parstat.iais.repository.StatisticalProcessRepository;

@Service
public class MetaService {

    @Autowired
    StatisticalProcessRepository statisticalProcessRepository;

    public Iterable<StatisticalProcess> findAll() {
        return statisticalProcessRepository.findAll();
    }

    public StatisticalProcess findById(Long id) {
        return statisticalProcessRepository.findById(id).orElse(null);
    }
}
