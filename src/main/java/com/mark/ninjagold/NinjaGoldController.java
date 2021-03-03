package com.mark.ninjagold;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NinjaGoldController {
	Random rand = new Random();
	static int yourGold = 0;
	int gold;
	String item;
	DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("dd-MM-yyyy, HH:mm:ss");
	LocalDateTime timeNow = LocalDateTime.now();
	static ArrayList<String> log = new ArrayList<String>();
	
	
	@RequestMapping("/")
	public String game(HttpSession session) {
		if (session.getAttribute("yourGold") == null || session.getAttribute("yourGold").equals("")) {
			session.setAttribute("yourGold", yourGold);
		}
		if(yourGold < -5) {
			return "fail.jsp";
		}
		return "index.jsp";
	}
	
	@RequestMapping("/farm")
	public String farm(HttpSession session) {
		gold = rand.nextInt(11) + 10;
		yourGold += gold;
		item = "You did work on the farm and earned "+gold+" gold. <"+timeNow.format(timeFormat)+">";
		log.add(item);
		session.setAttribute("log", log);
		session.setAttribute("yourGold", yourGold);
		return "redirect:/";
	}
	
	@RequestMapping("/cave")
	public String cave(HttpSession session) {
		gold = rand.nextInt(6) + 5;
		yourGold += gold;
		item = "You did work in the Cave and earned "+gold+" gold. <"+timeNow.format(timeFormat)+">";
		log.add(item);
		session.setAttribute("log", log);
		session.setAttribute("yourGold", yourGold);
		return "redirect:/";
	}
	
	@RequestMapping("/house")
	public String house(HttpSession session) {
		gold = rand.nextInt(3) + 3;
		item = "You did work in the house and earned "+gold+" gold. <"+timeNow.format(timeFormat)+">";
		log.add(item);
		session.setAttribute("log", log);
		yourGold += gold;
		session.setAttribute("yourGold", yourGold);
		return "redirect:/";
	}
		
	@RequestMapping("/casino")
	public String casino(HttpSession session) {
		gold = rand.nextInt(100) - 50;
		if(gold > 0) {
			item = "You gambled at the casino and won "+ gold +" gold! <" + timeNow.format(timeFormat) + ">";
			
		}
		else if(gold < 0) {
			item = "You gambled at the casino and lost " + gold + " <" + timeNow.format(timeFormat) + ">";
		}
		else {
			item = "You gambled at the casino and broke even... <"+timeNow.format(timeFormat)+">";
		}
		log.add(item);
		session.setAttribute("log", log);
		yourGold += gold;
		session.setAttribute("yourGold", yourGold);
		return "redirect:/";
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		yourGold = 0;
		log.clear();
		session.setAttribute("log", log);
		session.setAttribute("yourGold", yourGold);
		return "redirect:/";
	}	
}
