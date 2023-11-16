package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.HoaDon;
import service.HoaDonService;

@Controller
@RequestMapping("/hoaDon")
public class HoaDonController {
	@Autowired
	private HoaDonService hoaDonService;
	
	@GetMapping("/list")
	public String listHoaDon(Model theModel) {
		List<HoaDon> hoaDons = hoaDonService.getHoaDons();
		theModel.addAttribute("khachHangs", hoaDons);
		return "list-hoaDon";
	}

}
