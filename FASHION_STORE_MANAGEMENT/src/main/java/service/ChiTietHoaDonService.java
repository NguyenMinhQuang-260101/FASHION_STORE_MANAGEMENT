package service;

import java.util.List;

import entity.ChiTietHoaDon;
import entity.HoaDonTamp;

public interface ChiTietHoaDonService {
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	
	public List<HoaDonTamp> getChiTietHD();
}
