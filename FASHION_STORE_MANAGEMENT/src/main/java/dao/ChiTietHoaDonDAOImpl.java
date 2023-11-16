package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.ChiTietHoaDon;

@Repository
public class ChiTietHoaDonDAOImpl implements ChiTietHoaDonDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(chiTietHoaDon);
	}

}
