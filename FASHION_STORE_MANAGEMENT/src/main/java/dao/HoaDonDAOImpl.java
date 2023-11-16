package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.HoaDon;

@Repository
public class HoaDonDAOImpl implements HoaDonDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<HoaDon> getHoaDons() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<HoaDon> theQuery = currentSession.createQuery("from HoaDon", HoaDon.class);
		List<HoaDon> hoaDons = theQuery.getResultList();
		return hoaDons;
	}

	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(hoaDon);
	}

	@Override
	public int getIdHoaDonNew() {
		Session currentSession = sessionFactory.getCurrentSession();
		int id = (int) currentSession.createQuery("SELECT max(maHD) FROM HoaDon").getSingleResult();
		return id;
	}

	@Override
	public HoaDon getHoaDonById(int maHD) {
		Session currentSession = sessionFactory.getCurrentSession();
		HoaDon hoaDon = currentSession.get(HoaDon.class, maHD);
		return hoaDon;
	}

}
