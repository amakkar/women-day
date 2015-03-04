package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Item;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ItemService;
import common.Constant;

@Controller
public class ItemController {

	private ItemService itemService;

	@RequestMapping("/items")
	public ModelAndView viewItems(final HttpServletRequest request) {
		String cityInfo = (String) request.getSession(true).getAttribute("city");
		String localityInfo = (String) request.getSession(true).getAttribute("locality");
		System.out.println(cityInfo);
		List<Item> itemsList = itemService.getItems(cityInfo, localityInfo);
		ModelAndView mv = new ModelAndView(Constant.ITEMS_PAGE);
		
		Boolean isfilteredArea = true;
		if (null == cityInfo || null == localityInfo) {
			isfilteredArea = false;
		}
		mv.addObject(itemsList);
		mv.addObject(isfilteredArea);
		
		return mv;
	}
	@RequestMapping("/filter-area")
	public ModelAndView filterArea(final HttpServletRequest request) {
		String cityInfo = request.getParameter("city");
		String localityInfo = request.getParameter("locality");
		if (null != cityInfo || null != localityInfo) {
			request.getSession(true).setAttribute("city", cityInfo);
			request.getSession(true).setAttribute("locality", localityInfo);
		}
		return viewItems(request);
	}
	
	
	
}
