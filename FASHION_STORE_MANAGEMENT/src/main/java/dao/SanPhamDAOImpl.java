package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.SanPham;
@Repository
public class SanPhamDAOImpl implements SanPhamDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<SanPham> getSanPhams() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SanPham> theQuery = currentSession.createQuery("from SanPham order by tenSP",SanPham.class); 
		List<SanPham> sanPhams = theQuery.getResultList();
		return sanPhams;
	}

	@Override
	public void saveSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(sanPham);
	}

	@Override
	public SanPham getSanPham(int maSP) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham sanPham = currentSession.get(SanPham.class, maSP);
		return sanPham;
	}

	@Override
	public void deleteSanPham(int maSP) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SanPham> theQuery = currentSession.createQuery("delete from SanPham where maSP=:maSP");
		theQuery.setParameter("maSP", maSP);
		theQuery.executeUpdate();
	}

}
