package dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.ChiTietHoaDon;
import entity.HoaDonTamp;
import entity.SanPham;
import entity.SanPhamTamp;
import service.HoaDonService;
import service.SanPhamService;

@Repository
public class ChiTietHoaDonDAOImpl implements ChiTietHoaDonDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(chiTietHoaDon);
	}

	@Override
	@Transactional
	public List<HoaDonTamp> getChiTietHD() {
		List<Integer> maHDs = new ArrayList<>();
		List<HoaDonTamp> hoaDonTamps = new ArrayList<>();
		List<SanPhamTamp> sanPhamTamps = new ArrayList<>();
		List<ChiTietHoaDon> chiTietHoaDons = new ArrayList<>();
		maHDs = listHoaDonID();

		Session currentSession = sessionFactory.getCurrentSession();
//		Query<ChiTietHoaDon> theQuery = currentSession.createQuery(
//				"SELECT b.maHD, b.ngayLapHD, c.tenSP, c.kichCo, c.giaBan ,a.soLuong, b.triGiaHD FROM ChiTietHoaDon a JOIN HoaDon b ON b.maHD=a.hoadon_id JOIN SanPham c ON c.maSP = a.sanpham_id\r\n"
//				+ "where a.sanpham_id=14 and a.hoadon_id=1");
//		theQuery.setParameter("sanpham_id", maSP);
//		theQuery.setParameter("hoadon_id", maHD);

		for (int i = 0; i < maHDs.size(); i++) {
//			Query<ChiTietHoaDon> theQuery = currentSession.createQuery("FROM ChiTietHoaDon AS u WHERE u.hoadon_id = :id",ChiTietHoaDon.class);
			chiTietHoaDons = currentSession.createQuery(
					"FROM ChiTietHoaDon AS u WHERE u.hoadon_id = " + maHDs.get(i) + "", ChiTietHoaDon.class).list();
			List<SanPhamTamp> sanPhamTamps2 = new ArrayList<>();
			for (int j = 0; j < chiTietHoaDons.size(); j++) {
				sanPhamTamps2.add(new SanPhamTamp(getSanPham(chiTietHoaDons.get(j).getSanPham().getMaSP()),
						chiTietHoaDons.get(j).getSoLuong()));
			}
			sanPhamTamps = sanPhamTamps2;
			hoaDonTamps.add(new HoaDonTamp(maHDs.get(i), getNgayLapHDbyID(maHDs.get(i)),
					getTongTienHDbyID(maHDs.get(i)), sanPhamTamps));
		}
		return hoaDonTamps;
	}

	@Transactional
	public List<Integer> listHoaDonID() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Integer> theQuery = currentSession.createQuery("select maHD from HoaDon");
		List<Integer> listMaHD = theQuery.getResultList();
		return listMaHD;
	}

	@Transactional
	public double getTongTienHDbyID(int maHD) {
		Session currentSession = sessionFactory.getCurrentSession();
		double giaTien = currentSession.createQuery("SELECT a.triGiaHD FROM HoaDon a WHERE a.maHD = :id", Double.class)
				.setParameter("id", maHD).uniqueResult();
		return giaTien;
	}

	@Transactional
	public String getNgayLapHDbyID(int maHD) {
		Session currentSession = sessionFactory.getCurrentSession();
		String ngayLap = currentSession.createQuery("SELECT a.ngayLapHD FROM HoaDon a WHERE a.maHD = :id", String.class)
				.setParameter("id", maHD).uniqueResult();
		return ngayLap;
	}

	public SanPham getSanPham(int maSP) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham sanPham = currentSession.get(SanPham.class, maSP);
		return sanPham;
	}

}
