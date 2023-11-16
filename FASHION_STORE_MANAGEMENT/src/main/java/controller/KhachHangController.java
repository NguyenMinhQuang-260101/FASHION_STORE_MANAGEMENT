package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import entity.ChiTietHoaDon;
import entity.HoaDon;
import entity.KhachHang;
import entity.NhanVien;
import service.ChiTietHoaDonService;
import service.HoaDonService;
import service.KhachHangService;
import service.NhanVienService;

@Controller
@RequestMapping("/khachHang")
public class KhachHangController {
	@Autowired
	private KhachHangService khachHangService;
	@Autowired
	private NhanVienService nhanVienService;
	@Autowired
	private HoaDonService hoaDonService;
	@Autowired
	private ChiTietHoaDonService chiTietHoaDonService;

	@PostMapping("/saveKhachHang")
	public String saveKhachHang(@ModelAttribute("khachHang") KhachHang khachHang) {
		khachHangService.saveKhachHang(khachHang);
		return "redirect:/khachHang/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("maKH") int maKH, Model theModel) {
		KhachHang khachHang = khachHangService.getKhachHang(maKH);
		theModel.addAttribute("khachHang", khachHang);
		return "khachHang-form";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		KhachHang khachHang = new KhachHang();
		theModel.addAttribute("khachHang", khachHang);
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
		theModel.addAttribute("khachHangs", khachHangs);
		return "list-khachHang";
	}

//	Show Form CART
	@GetMapping("/cart")
	public String showCart(Model theModel) {
		List<Cart> listItemCart = SanPhamController.listCarts;
		theModel.addAttribute("listItemCart", listItemCart);
		return "list-cart";
	}

//	Delete Item Cart
	@GetMapping("/deleteItemCart")
	public String deleteSanPhamFromCart(@RequestParam("maSP") int maSP) {
		List<Cart> listItemCart = SanPhamController.listCarts;
		for (int i = 0; i < listItemCart.size(); i++) {
			if (listItemCart.get(i).getSanPham().getMaSP() == maSP) {
				listItemCart.remove(i);
			}
		}
		return "redirect:/khachHang/cart";
	}

//	Show Form CART
	@GetMapping("/showFormForPay")
	public String showFormForPay(Model theModel) {
		List<Cart> listItemCart = SanPhamController.listCarts;
		for (Cart cart : listItemCart) {
			cart.setTongGiaSP(cart.getSoLuongMua() * cart.getSanPham().getGiaBan());
		}
		theModel.addAttribute("listItemCart", listItemCart);
		return "pay-sanPham";
	}

//	Show Complete Pay
	@GetMapping("/showDonePay")
	public String showPayDone(Model theModel) {
		List<Cart> listItemCart = SanPhamController.listCarts;

		String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
		NhanVien b = nhanVienService.getNhanVien(1);

		HoaDon hoaDon = new HoaDon(timeStamp, b, sumTotal(listItemCart));
		hoaDonService.saveHoaDon(hoaDon);

		for (int i = 0; i < listItemCart.size(); i++) {
			chiTietHoaDonService
					.saveChiTietHoaDon(new ChiTietHoaDon(hoaDonService.getHoaDonById(hoaDonService.getIdHoaDonNew()),
							listItemCart.get(i).getSanPham(), listItemCart.get(i).getSoLuongMua()));
		}
		return "redirect:/sanPham/list";
	}

	public double sumTotal(List<Cart> listItemCart) {
		double total = 0;
		for (Cart cart : listItemCart) {
			total = total + cart.getTongGiaSP();
		}
		return total;
	}

}
