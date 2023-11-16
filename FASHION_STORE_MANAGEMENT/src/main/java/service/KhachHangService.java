package service;

import java.util.List;

import entity.KhachHang;

public interface KhachHangService {
	public List<KhachHang> getKhachHangs();

	public void saveKhachHang(KhachHang khachHang);

	public KhachHang getKhachHang(int maKH);

	public void deleteKhachHang(int maKH);
}
