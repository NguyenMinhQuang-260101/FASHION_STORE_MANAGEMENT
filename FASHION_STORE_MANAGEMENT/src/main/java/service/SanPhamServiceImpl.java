package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SanPhamDAO;
import entity.SanPham;
@Service
public class SanPhamServiceImpl implements SanPhamService {

	@Autowired
	private SanPhamDAO sanPhamDAO;
	@Override
	@Transactional
	public List<SanPham> getSanPhams() {
		// TODO Auto-generated method stub
		return sanPhamDAO.getSanPhams();
	}

	@Override
	@Transactional
	public void saveSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		sanPhamDAO.saveSanPham(sanPham);
	}

	@Override
	@Transactional
	public SanPham getSanPham(int maSP) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getSanPham(maSP);
	}

	@Override
	@Transactional
	public void deleteSanPham(int maSP) {
		// TODO Auto-generated method stub
		sanPhamDAO.deleteSanPham(maSP);
	}

}
