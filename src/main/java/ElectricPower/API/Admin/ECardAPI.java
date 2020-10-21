package ElectricPower.API.Admin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ElectricPower.Dto.ElectriccardDTO;

@RestController(value = "eCardAPIOfAdmin")
public class ECardAPI {
	

	
	@PostMapping("/api/eCard")
	public ElectriccardDTO creatElectriccard(@RequestBody ElectriccardDTO electriccardDTO) {
		return null;
	}
}
