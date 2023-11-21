package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.SanPham;
import service.SanPhamService;

@Controller
@RequestMapping("/")
public class MainMenu {
	@Autowired
	private SanPhamService sanPhamService;
	
	
	@GetMapping("/test")
	public String Test() {

		return "list-sanpham-khachhang";
	}
	@GetMapping("/")
	public String listCustomer(Model theModel) {
		List<SanPham> sanPhams = sanPhamService.getSanPhams();
		theModel.addAttribute("sanPhams", sanPhams);
		return "list-sanpham-khachhang";
	}
}
