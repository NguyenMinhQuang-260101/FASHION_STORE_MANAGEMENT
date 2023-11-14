package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NhanVienDAO;
import entity.NhanVien;

@Service
public class NhanVienServiceImpl implements NhanVienService {
	@Autowired
	private NhanVienDAO nhanVienDAO;

	@Override
	@Transactional
	public List<NhanVien> getNhanViens() {
		// TODO Auto-generated method stub
		return nhanVienDAO.getNhanViens();
	}

	@Override
	public void saveNhanVien(NhanVien nhanvien) {
		// TODO Auto-generated method stub
		nhanVienDAO.saveNhanVien(nhanvien);
	}

	@Override
	public NhanVien getNhanVien(int maNV) {
		// TODO Auto-generated method stub
		return nhanVienDAO.getNhanVien(maNV);
	}

	@Override
	public void deleteNhanVien(int maNV) {
		// TODO Auto-generated method stub
		nhanVienDAO.deleteNhanVien(maNV);
	}
	
}
