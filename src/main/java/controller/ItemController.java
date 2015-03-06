package controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Address;
import model.Item;
import model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import repository.UserDAO;

import common.Constant;

@Controller
public class ItemController {

	@Autowired
	UserDAO userDao;
	
	@RequestMapping("/items")
	public ModelAndView viewItems(final HttpServletRequest request) {
		String cityInfo = (String) request.getSession(true).getAttribute("city");
		String localityInfo = (String) request.getSession(true).getAttribute("locality");
		System.out.println(cityInfo);
		
		// Sample Implementation
		
		User user = new User();
		user.setName("Udit");
		user.setEmail("uditverma5602@gmail.com");
		user.setDateOfJoining(new Timestamp(System.currentTimeMillis()));
		
		Address addr = new Address();
		addr.setAddrLine1("C-2, F.F.");
		addr.setAddrLine2("Gulmohar Park");
		addr.setLocality("South Delhi");
		addr.setCity("Delhi");
		addr.setPincode("110049");
		
		Item item = new Item();
		item.setAddress(addr);
		item.setTitle("Pasta");
		item.setPrice(10);
		item.setDescription("Home made veg. white sauce pasta");
		item.setQuantity(5);
		item.setValidFrom(new Timestamp(System.currentTimeMillis()));
		item.setValidTill(new Timestamp(System.currentTimeMillis()+(1000*60*60*24*10)));
		item.setUser(user);
		List<Item> items = new ArrayList<Item>();
		items.add(item);
		
		user.setAddress(addr);
		user.setItems(items);
		userDao.addOrUpdate(user);
		
//		List<Item> itemsList = itemService.getItems(cityInfo, localityInfo);
		ModelAndView mv = new ModelAndView(Constant.ITEMS_PAGE);
		
		Boolean isfilteredArea = true;
		if (null == cityInfo || null == localityInfo) {
			isfilteredArea = false;
		}
//		mv.addObject(itemsList);
		mv.addObject(isfilteredArea);
		
		return mv;
	}
	@RequestMapping(method=RequestMethod.POST, value="/filter-area")
	public ModelAndView filterArea(final HttpServletRequest request) {
		String cityInfo = request.getParameter("city");
		String localityInfo = request.getParameter("locality");
		if (null != cityInfo || null != localityInfo) {
			request.getSession(true).setAttribute("city", cityInfo);
			request.getSession(true).setAttribute("locality", localityInfo);
		}
		return viewItems(request);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/filter-area")
	public String filterAreaTest(final HttpServletRequest request) {
		return "products";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/add-dish")
	public String addProductForm(final HttpServletRequest request) {
		return "add_product";
	}
	
	
	
}
