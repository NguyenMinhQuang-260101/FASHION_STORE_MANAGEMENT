package dao;

import java.util.List;

import entity.ChiTietHoaDon;
import entity.HoaDonTamp;

public interface ChiTietHoaDonDAO {
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	
	public List<HoaDonTamp> getChiTietHD();
}
