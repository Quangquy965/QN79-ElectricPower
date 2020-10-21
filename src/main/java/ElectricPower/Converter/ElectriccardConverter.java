package ElectricPower.Converter;

import org.springframework.stereotype.Component;

import ElectricPower.Dto.ElectriccardDTO;
import ElectricPower.Entity.ElectriccardEntity;

@Component
public class ElectriccardConverter {
	public ElectriccardDTO toDto(ElectriccardEntity entity) {
		ElectriccardDTO result = new ElectriccardDTO();
		result.setId(entity.getId());
		result.setCard_id(entity.getCard_id());
		result.setPin_code(entity.getPin_code());
		result.setMoney(entity.getMoney());
		result.setCard_status(entity.getCard_status());
		result.setPin_status(entity.getPin_status());
		result.setIsdeleted(entity.getIsdeleted());
		result.setCreateddate(entity.getCreateddate());
		result.setActivedate(entity.getActivedate());
		return result;
	}
	
	public ElectriccardEntity toEntity(ElectriccardDTO dto) {
		ElectriccardEntity result = new ElectriccardEntity();
		result.setCard_id(dto.getCard_id());
		result.setPin_code(dto.getPin_code());
		result.setMoney(dto.getMoney());
		result.setCard_status(dto.getCard_status());
		result.setPin_status(dto.getPin_status());
		result.setIsdeleted(dto.getIsdeleted());
		result.setCreateddate(dto.getCreateddate());
		result.setActivedate(dto.getActivedate());
		return result;
	}
	
	public ElectriccardEntity toEntity(ElectriccardEntity result, ElectriccardDTO dto) {
		result.setCard_id(dto.getCard_id());
		result.setPin_code(dto.getPin_code());
		result.setMoney(dto.getMoney());
		result.setCard_status(dto.getCard_status());
		result.setPin_status(dto.getPin_status());
		result.setIsdeleted(dto.getIsdeleted());
		result.setCreateddate(dto.getCreateddate());
		result.setActivedate(dto.getActivedate());
		return result;
	}
}
