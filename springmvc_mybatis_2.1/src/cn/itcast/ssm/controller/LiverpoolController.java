package cn.itcast.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Liverpool;
import cn.itcast.ssm.service.LiverpoolService;

@Controller
public class LiverpoolController {
	@Autowired
	private LiverpoolService liverpoolService;
	@RequestMapping("/queryPlayer")
	public ModelAndView queryPlayer() throws Exception{
		
		List<Liverpool> playerList = liverpoolService.findPlayerByGoals();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("playerList", playerList);
		modelAndView.setViewName("playerList");
		return modelAndView;
	}
	@RequestMapping("/queryPlayer2")
	public ModelAndView queryPlayers() throws Exception{
		List<Liverpool> playersList = liverpoolService.findAllPlayers();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("playersList", playersList);
		modelAndView.setViewName("playersList");
		return modelAndView;
	}
	@RequestMapping(value="/editPlayer",method={RequestMethod.POST,RequestMethod.GET})
	public String editPlayer(Model model,@RequestParam(value="id",required=true) Integer liverpool_id)throws Exception {
		
		Liverpool liverpool = liverpoolService.findPlayerByNumber(liverpool_id);
		
		model.addAttribute("liverpool", liverpool);
		
		return "editPlayer";
	}
	
	@RequestMapping("/editPlayerSubmit")
	public String editItemsSubmit(Model model,Integer id,HttpServletRequest request,Liverpool liverpool)throws Exception {
		
		liverpoolService.updatePlayer(id,liverpool);
		model.addAttribute("liverpool", liverpool);
		return "success";
	}
	@RequestMapping("/insertPlayer")
	public String insertPalyer()throws Exception {
		return "insertPlayer";
	}
	@RequestMapping("/insertPlayerSubmit")
	public String insertPalyerSubmit(Model model,Liverpool liverpool)throws Exception {
		liverpoolService.insertPlayer(liverpool);
		model.addAttribute("liverpool", liverpool);
		return "success_2";
	}
	@RequestMapping(value="/deletePlayer",method={RequestMethod.POST,RequestMethod.GET})
	public String deletePlayer(@RequestParam(value="id",required=true) Integer liverpool_id)throws Exception {
		liverpoolService.deletePlayerByID(liverpool_id);
		return "success_3";
	}
}
