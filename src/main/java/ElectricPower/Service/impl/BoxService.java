package ElectricPower.Service.impl;

import java.util.ArrayList;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ElectricPower.Converter.BoxConverter;
import ElectricPower.Dto.BoxDTO;
import ElectricPower.Entity.BoxEntity;
import ElectricPower.Repository.BoxRepository;
import ElectricPower.Service.IBoxService;

@Service
public class BoxService implements IBoxService{
	@Autowired
	private BoxRepository boxRepository;
	@Autowired
	private BoxConverter boxConverter;
	@Override
	public List<BoxDTO> findAll(Pageable pageable) {
		List<BoxDTO> models = new ArrayList<>();
		List<BoxEntity> entities = boxRepository.findAll();
		for( BoxEntity item:entities) {
			BoxDTO boxDTO = boxConverter.toDto(item);
			models.add(boxDTO);
		}
		return models;
	}

	@Override
	@Transactional
	public BoxDTO insert(BoxDTO dto) {
		BoxEntity boxEntity = new BoxEntity();
		boxEntity = boxConverter.toEntity(dto);
		return boxConverter.toDto(boxRepository.save(boxEntity));
	}

	@Override
	public int getTotalItem() {
		return (int) boxRepository.count();
	}
	
	

}
