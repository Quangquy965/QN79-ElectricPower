package ElectricPower.API.Admin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import ElectricPower.Dto.CardrechargeDTO;

@RestController(value = "cardLoadedAPI")
public class CardLoadedAPI {
	
	
	@PostMapping("/api/CardLoaded")
	public CardrechargeDTO creatCardLoaded() {
		return null;
	}
}
