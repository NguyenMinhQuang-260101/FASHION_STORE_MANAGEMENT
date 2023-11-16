package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.KhachHangDAO;
import entity.KhachHang;

@Service
public class KhachHangServiceImpl implements KhachHangService{
	@Autowired
	private KhachHangDAO khachHangDAO;

	@Override
	@Transactional
	public List<KhachHang> getKhachHangs() {
		// TODO Auto-generated method stub
		return khachHangDAO.getKhachHangs();
	}

	@Override
	@Transactional
	public void saveKhachHang(KhachHang khachHang) {
		// TODO Auto-generated method stub
		khachHangDAO.saveKhachHang(khachHang);
	}

	@Override
	@Transactional
	public KhachHang getKhachHang(int maKH) {
		// TODO Auto-generated method stub
		return khachHangDAO.getKhachHangById(maKH);
	}

	@Override
	@Transactional
	public void deleteKhachHang(int maKH) {
		// TODO Auto-generated method stub
		khachHangDAO.deleteKhachHang(maKH);
	}
	
}
