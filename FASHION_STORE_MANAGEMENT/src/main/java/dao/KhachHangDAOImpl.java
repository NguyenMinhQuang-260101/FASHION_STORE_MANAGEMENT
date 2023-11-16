package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.KhachHang;

@Repository
public class KhachHangDAOImpl implements KhachHangDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<KhachHang> getKhachHangs() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<KhachHang> theQuery = currentSession.createQuery("from KhachHang order by hoTenKH", KhachHang.class);
		List<KhachHang> khachHangs = theQuery.getResultList();
		return khachHangs;
		
	}

	@Override
	public void saveKhachHang(KhachHang khachHang) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(khachHang);
	}

	@Override
	public KhachHang getKhachHangById(int maKH) {
		Session currentSession = sessionFactory.getCurrentSession();
		KhachHang khachHang = currentSession.get(KhachHang.class, maKH);
		return khachHang;
	}

	@Override
	public void deleteKhachHang(int maKH) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<KhachHang> theQuery = currentSession.createQuery("delete from KhachHang where maKH=:maKH");
		theQuery.setParameter("maKH", maKH);
		theQuery.executeUpdate();
	}

}
