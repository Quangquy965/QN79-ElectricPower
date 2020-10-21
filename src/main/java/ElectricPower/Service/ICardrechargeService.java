package ElectricPower.Service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import ElectricPower.Dto.CardrechargeDTO;

public interface ICardrechargeService {
	List<CardrechargeDTO> findAll(Pageable pageable);
	CardrechargeDTO insert(CardrechargeDTO dto);
}
