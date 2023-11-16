package dao;

import java.util.List;

import entity.KhachHang;

public interface KhachHangDAO {
	public List<KhachHang> getKhachHangs();

	public void saveKhachHang(KhachHang khachHang);

	public KhachHang getKhachHangById(int  maKH);

	public void deleteKhachHang(int maKH);
	

}
