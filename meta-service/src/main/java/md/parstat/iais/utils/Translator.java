package md.parstat.iais.utils;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import md.parstat.iais.domains.StatisticalProcessEntity;
import md.parstat.iais.dto.StatisticalProcessDTO;

public class Translator {
 
	public static StatisticalProcessDTO translate(final StatisticalProcessEntity statisticalProcess) {

		final ModelMapper modelMapper = new ModelMapper();
		StatisticalProcessDTO statisticalProcessDTO = modelMapper.map(statisticalProcess, StatisticalProcessDTO.class);

		return statisticalProcessDTO;

	}

	public static List<StatisticalProcessDTO> translate(final Iterable<StatisticalProcessEntity> statisticalProcesses) {

		final List<StatisticalProcessDTO> statisticalProcessesDTOs = new ArrayList<>();
		statisticalProcesses
				.forEach(statisticalProcessEntity -> statisticalProcessesDTOs.add(translate(statisticalProcessEntity)));

		return statisticalProcessesDTOs;
	}
}
