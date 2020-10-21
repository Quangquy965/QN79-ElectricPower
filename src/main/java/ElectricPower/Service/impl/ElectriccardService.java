package ElectricPower.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import ElectricPower.Converter.ElectriccardConverter;
import ElectricPower.Dto.ElectriccardDTO;
import ElectricPower.Entity.ElectriccardEntity;
import ElectricPower.Repository.ElectriccardRepository;
import ElectricPower.Service.IElectriccardService;

@Service
public class ElectriccardService implements IElectriccardService{

	@Autowired
	private ElectriccardRepository electriccardRepository;
	
	@Autowired
	private ElectriccardConverter electriccardConverter;
	
	
	@Override
	public List<ElectriccardDTO> findAll(Pageable pageable) {
		List<ElectriccardDTO> models = new ArrayList<>();
		List<ElectriccardEntity> entities = electriccardRepository.findAll(pageable).getContent();
		for(ElectriccardEntity item: entities) {
			ElectriccardDTO electriccardDTO = electriccardConverter.toDto(item);
			models.add(electriccardDTO);
		}
		return models;
	}


	@Override
	public ElectriccardDTO insert(ElectriccardDTO dto) {
		return null;
	}
	
	

}
