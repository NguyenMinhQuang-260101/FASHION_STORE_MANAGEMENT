package dao;

import java.util.List;

import entity.HoaDon;

public interface HoaDonDAO {
	public List<HoaDon> getHoaDons();

	public void saveHoaDon(HoaDon hoaDon);
	
	public int getIdHoaDonNew();
	
	public HoaDon getHoaDonById(int maHD);
}
