package dao;
import java.util.List;

import entity.NhanVien;
import entity.SanPham;

public interface NhanVienDAO {
	public List<NhanVien> getNhanViens();
	public void saveNhanVien(NhanVien nhanvien);
	public NhanVien getNhanVien(int maNV);
	public void deleteNhanVien(int maNV);
	public void updateNhanVien(NhanVien nhanvien);

}
