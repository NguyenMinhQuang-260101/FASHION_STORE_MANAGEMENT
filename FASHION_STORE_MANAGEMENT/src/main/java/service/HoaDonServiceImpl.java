package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.HoaDonDAO;
import entity.HoaDon;

@Service
public class HoaDonServiceImpl implements HoaDonService{
	@Autowired
	private HoaDonDAO hoaDonDAO;

	@Override
	@Transactional
	public List<HoaDon> getHoaDons() {
		// TODO Auto-generated method stub
		return hoaDonDAO.getHoaDons();
	}

	@Override
	@Transactional
	public void saveHoaDon(HoaDon hoaDon) {
		// TODO Auto-generated method stub
		hoaDonDAO.saveHoaDon(hoaDon);
	}

	@Override
	@Transactional
	public int getIdHoaDonNew() {
		// TODO Auto-generated method stub
		return hoaDonDAO.getIdHoaDonNew();
	}

	@Override
	@Transactional
	public HoaDon getHoaDonById(int maHD) {
		// TODO Auto-generated method stub
		return hoaDonDAO.getHoaDonById(maHD);
	}
	
}
