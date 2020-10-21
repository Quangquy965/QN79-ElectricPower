package ElectricPower.Service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import ElectricPower.Dto.BoxDTO;


public interface IBoxService {
	List<BoxDTO> findAll(Pageable pageable);
	BoxDTO insert(BoxDTO dto);
	int getTotalItem();
}
