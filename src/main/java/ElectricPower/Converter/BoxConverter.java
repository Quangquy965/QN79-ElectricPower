package ElectricPower.Converter;

import org.springframework.stereotype.Component;

import ElectricPower.Dto.BoxDTO;
import ElectricPower.Entity.BoxEntity;

@Component
public class BoxConverter {
	public BoxDTO toDto(BoxEntity entity) {
		BoxDTO result = new BoxDTO();
		result.setId(entity.getId());
		result.setAddress(entity.getAddress());
		result.setDescription(entity.getDescription());
		result.setStatus(entity.getStatus());
		result.setIsdeleted(entity.getIsdeleted());
		result.setBox_code(entity.getBox_code());
		result.setCreateddate(entity.getCreateddate());
		return result;
	}
	
	public BoxEntity toEntity(BoxDTO dto) {
		BoxEntity result = new BoxEntity();
		result.setAddress(dto.getAddress());
		result.setDescription(dto.getDescription());
		result.setBox_code(dto.getBox_code());
//		result.setStatus(dto.getStatus());
//		result.setIsdeleted(dto.getIsdeleted());
		result.setCreateddate(dto.getCreateddate());
		return result;
	}
	
	public BoxEntity toEntity(BoxEntity result, BoxDTO dto) {
		result.setAddress(dto.getAddress());
		result.setDescription(dto.getDescription());
		result.setStatus(dto.getStatus());
		result.setIsdeleted(dto.getIsdeleted());
		result.setBox_code(dto.getBox_code());
		result.setCreateddate(dto.getCreateddate());
		return result;
	}

}
