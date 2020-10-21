package ElectricPower.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectricPower.Dto.ElectriccardDTO;
import ElectricPower.Service.IElectriccardService;

@Controller(value = "ECardControllerOfAdmin")
public class ECardController {
	
	@Autowired
	private IElectriccardService electriccardService;
	
	@RequestMapping(value = "/quan-tri/eCard", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ElectriccardDTO model = new ElectriccardDTO();
		ModelAndView mav = new ModelAndView("admin/eCard");
		model.setListResult(electriccardService.findAll(null));
		mav.addObject("eCrad", model);
		return mav;
	}
}
