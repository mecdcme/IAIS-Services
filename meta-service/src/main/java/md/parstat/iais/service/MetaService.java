package md.parstat.iais.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import md.parstat.iais.dto.StatisticalProcessDTO;
import md.parstat.iais.repository.StatisticalProcessRepository;
import md.parstat.iais.utils.Translator;

@Service
public class MetaService {

    @Autowired
    StatisticalProcessRepository statisticalProcessRepository;

    public Iterable<StatisticalProcessDTO> findAll() {
        return Translator.translate(statisticalProcessRepository.findAll());
   }

    public StatisticalProcessDTO findById(Long id) {
        return Translator.translate(statisticalProcessRepository.findById(id).orElse(null));
    }
}
