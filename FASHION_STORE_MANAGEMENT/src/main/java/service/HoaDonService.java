package service;

import java.util.List;

import entity.HoaDon;

public interface HoaDonService {
	public List<HoaDon> getHoaDons();

	public void saveHoaDon(HoaDon hoaDon);
	
	public int getIdHoaDonNew();
	
	public HoaDon getHoaDonById(int maHD);
}
