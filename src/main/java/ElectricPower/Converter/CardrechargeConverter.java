package ElectricPower.Converter;

import org.springframework.stereotype.Component;

import ElectricPower.Dto.CardrechargeDTO;
import ElectricPower.Entity.CardrechargeEntity;

@Component
public class CardrechargeConverter {
	public CardrechargeDTO toDto(CardrechargeEntity entity) {
		CardrechargeDTO result = new CardrechargeDTO();
		result.setId(entity.getId());
		result.setCode(entity.getCode());
		result.setDatetime_issued(entity.getDatetime_issued());
		result.setValue(entity.getValue());
		result.setStatus(entity.getStatus());
		result.setActivedatetime(entity.getActivedatetime());
		result.setCard_id(entity.getCard_id());
		return result;
	}
	
	public CardrechargeEntity toEntity(CardrechargeDTO dto) {
		CardrechargeEntity result = new CardrechargeEntity();
		result.setCode(dto.getCode());
		result.setDatetime_issued(dto.getDatetime_issued());
		result.setValue(dto.getValue());
		result.setStatus(dto.getStatus());
		result.setActivedatetime(dto.getActivedatetime());
		result.setCard_id(dto.getCard_id());
		return result;
	}
	
	public CardrechargeEntity toEntity(CardrechargeEntity result, CardrechargeDTO dto) {
		result.setCode(dto.getCode());
		result.setDatetime_issued(dto.getDatetime_issued());
		result.setValue(dto.getValue());
		result.setStatus(dto.getStatus());
		result.setActivedatetime(dto.getActivedatetime());
		result.setCard_id(dto.getCard_id());
		return result;
	}

}
