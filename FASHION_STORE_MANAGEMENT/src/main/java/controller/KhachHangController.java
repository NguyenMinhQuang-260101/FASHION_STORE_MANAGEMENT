package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.KhachHang;
import service.KhachHangService;

@Controller
@RequestMapping("/khachHang")
public class KhachHangController {
	@Autowired
	private KhachHangService khachHangService;
	
	@PostMapping("/saveKhachHang")
	public String saveKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
		khachHangService.saveKhachHang(khachHang);
		return "redirect:/khachHang/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("maKH") int maKH,Model theModel) {
		KhachHang khachHang = khachHangService.getKhachHang(maKH);
		theModel.addAttribute("khachHang",khachHang);
		return "khachHang-form";
	}
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		KhachHang khachHang = new KhachHang(); 
		theModel.addAttribute("khachHang",khachHang);
		return "khachHang-form";
	}
	
	@GetMapping("/delete")
	public String deleteKhachHang(@RequestParam("maKH") int maKH) {
		khachHangService.deleteKhachHang(maKH);
		return "redirect:/khachHang/list";
	}
	@GetMapping("/list")
	public String listCustomer(Model theModel) {
		List<KhachHang> khachHangs = khachHangService.getKhachHangs();
		theModel.addAttribute("khachHangs",khachHangs);
		return "list-khachHang";
	}
	
}
