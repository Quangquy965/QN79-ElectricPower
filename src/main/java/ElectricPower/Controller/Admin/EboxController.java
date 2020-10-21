package ElectricPower.Controller.Admin;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ElectricPower.Dto.BoxDTO;
import ElectricPower.Service.IBoxService;
import ElectricPower.Util.MessageUtil;

@Controller(value = "EboxControllerOfAdmin")
public class EboxController {
	
	@Autowired
	private MessageUtil messageUtil;
	
	@Autowired
	private IBoxService boxService;

	@RequestMapping(value = "/quan-tri/ebox", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("page") int page,
								@RequestParam("limit") int limit,
								HttpServletRequest request) {
		BoxDTO model = new BoxDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/electricBox");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(boxService.findAll(pageable));
		model.setListResult(boxService.findAll(pageable));
		model.setTotalItem(boxService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if(request.getParameter("message") != null) {
			java.util.Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("box", model);
		return mav;
	}
}
