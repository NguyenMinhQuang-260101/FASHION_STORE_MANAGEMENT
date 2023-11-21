package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.HoaDonTamp;
import service.ChiTietHoaDonService;

@Controller
@RequestMapping("/chiTietHoaDon")
public class ChiTietHoaDonController {
	@Autowired
	private ChiTietHoaDonService chiTietHoaDonService;
	
	@GetMapping("/list")
	public String listCustomer(Model theModel) {
		List<HoaDonTamp> hoaDonTamps = chiTietHoaDonService.getChiTietHD();
		theModel.addAttribute("chiTietHoaDons", hoaDonTamps);
		
		return "list-hoaDon";
	}
}
