package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Cart;
import entity.SanPham;
import service.SanPhamService;

@Controller
@RequestMapping("/sanPham")
public class SanPhamController {
	@Autowired
	private SanPhamService sanPhamService;

	public static List<Cart> listCarts = new ArrayList<>();

	@PostMapping("/saveSanPham")
	public String saveSanPham(@ModelAttribute("sanPham") SanPham sanPham) {
		sanPhamService.saveSanPham(sanPham);
		return "redirect:/sanPham/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("maSP") int maSP, Model theModel) {
		SanPham sanPham = sanPhamService.getSanPham(maSP);
		theModel.addAttribute("sanPham", sanPham);
		return "sanPham-form";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		SanPham sanPham = new SanPham();
		theModel.addAttribute("sanPham", sanPham);
		return "sanPham-form";
	}

//	Show View Detail Product
	@GetMapping("/showFormForView")
	public String showFormForView(@RequestParam("maSP") int maSP, Model theModel) {
		SanPham sanPham = sanPhamService.getSanPham(maSP);
		Cart cart = new Cart(sanPham, 0, 0);
		theModel.addAttribute("cart", cart);
		return "info-sanpham";
	}

//	Add to Cart
	@PostMapping("/addSanPhamToCart")
	public String addSanPhamToCart(@ModelAttribute("cart") Cart cart) {
		listCarts.add(cart);
		return "redirect:/sanPham/list";
	}

	@GetMapping("/delete")
	public String deleteSanPham(@RequestParam("maSP") int maSP) {
		sanPhamService.deleteSanPham(maSP);
		return "redirect:/sanPham/list";
	}

	@GetMapping("/list")
	public String listCustomer(Model theModel) {
		List<SanPham> sanPhams = sanPhamService.getSanPhams();
		theModel.addAttribute("sanPhams", sanPhams);
		return "list-sanPham";
	}

}
