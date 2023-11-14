package service;

import java.util.List;

import entity.NhanVien;

public interface NhanVienService {
	public List<NhanVien> getNhanViens();
	public void saveNhanVien(NhanVien nhanvien);
	public NhanVien getNhanVien(int maNV);
	public void deleteNhanVien(int maNV);
}
