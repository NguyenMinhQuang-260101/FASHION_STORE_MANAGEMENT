package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ChiTietHoaDonDAO;
import entity.ChiTietHoaDon;
import entity.HoaDonTamp;

@Service
public class ChiTietHoaDonServiceImpl implements ChiTietHoaDonService {
	@Autowired
	private ChiTietHoaDonDAO chiTietHoaDonDAO;

	@Override
	@Transactional
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		chiTietHoaDonDAO.saveChiTietHoaDon(chiTietHoaDon);
	}

	@Override
	@Transactional
	public List<HoaDonTamp> getChiTietHD() {
		// TODO Auto-generated method stub
		return chiTietHoaDonDAO.getChiTietHD();
	}

}
