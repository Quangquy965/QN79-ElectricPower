package ElectricPower.Service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import ElectricPower.Dto.ElectriccardDTO;

public interface IElectriccardService {
	
	List<ElectriccardDTO> findAll(Pageable pageable);
	ElectriccardDTO insert(ElectriccardDTO dto);
}
