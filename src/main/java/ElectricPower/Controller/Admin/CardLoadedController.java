package ElectricPower.Controller.Admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectricPower.Dto.CardrechargeDTO;
import ElectricPower.Service.ICardrechargeService;

@Controller(value = "CardLoadedControllerOfAdmin")
public class CardLoadedController {
	
	@Autowired
	private ICardrechargeService cardrechargeService;
	
	@RequestMapping(value = "/quan-tri/moneycard", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {
		CardrechargeDTO model = new CardrechargeDTO();
		ModelAndView mav = new ModelAndView("admin/cardLoaded");
		model.setListResult(cardrechargeService.findAll(null));
		mav.addObject("moneycard", model);
		
		return mav;
	}
}
