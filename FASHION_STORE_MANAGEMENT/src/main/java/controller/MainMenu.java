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

import entity.SanPham;
import service.SanPhamService;

@Controller
@RequestMapping("/")
public class MainMenu {
	@GetMapping("/")
	public String MainMenu ( ) {
		
		return "main-menu";
	}

}
