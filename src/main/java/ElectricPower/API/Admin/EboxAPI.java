package ElectricPower.API.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ElectricPower.Dto.BoxDTO;
import ElectricPower.Service.IBoxService;



@RestController(value = "eboxAPIOfAdmin")
public class EboxAPI {
	
	@Autowired
	private IBoxService boxService;
	
	@PostMapping("/api/ebox")
	public BoxDTO creatBox(@RequestBody BoxDTO boxDTO) {
		return boxService.insert(boxDTO);
	}
	
}
