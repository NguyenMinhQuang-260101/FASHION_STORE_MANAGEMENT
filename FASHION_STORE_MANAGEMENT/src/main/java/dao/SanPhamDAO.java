package dao;

import java.util.List;

import entity.SanPham;

public interface SanPhamDAO {
	public List<SanPham> getSanPhams();
	public void saveSanPham(SanPham sanPham);
	public SanPham getSanPham(int maSP);
	public void deleteSanPham(int maSP);
	public void updateSanPham(SanPham sanPham);
}
