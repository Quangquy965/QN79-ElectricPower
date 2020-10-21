package ElectricPower.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ElectricPower.Converter.CardrechargeConverter;
import ElectricPower.Dto.CardrechargeDTO;
import ElectricPower.Entity.CardrechargeEntity;
import ElectricPower.Repository.CardrechargeRepository;
import ElectricPower.Service.ICardrechargeService;

@Service
public class CardrechargeService implements ICardrechargeService{

	@Autowired
	private CardrechargeRepository cardrechargeRepository;
	
	@Autowired
	private CardrechargeConverter cardrechargeConverter;
	@Override
	public List<CardrechargeDTO> findAll(Pageable pageable) {
		List<CardrechargeDTO> models = new ArrayList<>();
		List<CardrechargeEntity> entities = cardrechargeRepository.findAll(pageable).getContent();
		for(CardrechargeEntity item: entities) {
			CardrechargeDTO cardrechargeDTO = cardrechargeConverter.toDto(item);
			models.add(cardrechargeDTO);
		}
		return models;
	}
	@Override
	@Transactional
	public CardrechargeDTO insert(CardrechargeDTO dto) {
		return null;
	}

}
