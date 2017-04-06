package cn.itcast.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.ItemsCustom;
import cn.itcast.ssm.service.ItemsService;

@Controller
public class ItemsController {
	
	@Autowired 
	private ItemsService itemsService;
	@RequestMapping("/queryItems")
	public ModelAndView queryItems() throws Exception{
		List<ItemsCustom> itemsList = itemsService.selectItemsCustom(null);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("itemsList", itemsList);
		modelAndView.setViewName("/itemsList");
		return modelAndView;
	}

}
