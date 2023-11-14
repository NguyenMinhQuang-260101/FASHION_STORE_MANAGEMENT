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

import entity.NhanVien;
import service.NhanVienService;

@Controller
@RequestMapping("/nhanVien")
public class NhanVienController {
	@Autowired
	private NhanVienService nhanVienService;
	
	@PostMapping("/saveNhanVien")
	public String saveNhanVien(@ModelAttribute("nhanVien") NhanVien nhanVien) {
		nhanVienService.saveNhanVien(nhanVien);
		return "redirect:/nhanVien/list";
	}
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("maSP") int maSP,Model theModel) {
		NhanVien nhanVien = nhanVienService.getNhanVien(maSP);
		theModel.addAttribute("nhanVien",nhanVien);
		return "nhanVien-form";
	}
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		NhanVien nhanVien = new NhanVien(); 
		theModel.addAttribute("nhanVien",nhanVien);
		return "nhanVien-form";
	}
	
	@GetMapping("/delete")
	public String deleteNhanVien(@RequestParam("maNV") int maNV) {
		nhanVienService.deleteNhanVien(maNV);
		return "redirect:/nhanVien/list";
	}
	@GetMapping("/list")
	public String listCustomer(Model theModel) {
		List<NhanVien> nhanViens = nhanVienService.getNhanViens();
		theModel.addAttribute("nhanViens",nhanViens);
		return "list-nhanVien";
	}

}
