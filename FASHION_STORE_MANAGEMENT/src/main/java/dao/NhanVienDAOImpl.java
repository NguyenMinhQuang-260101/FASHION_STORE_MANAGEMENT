package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.NhanVien;

@Repository
public class NhanVienDAOImpl implements NhanVienDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<NhanVien> getNhanViens() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NhanVien> theQuery = currentSession.createQuery("from NhanVien order by hoTenNV",NhanVien.class); 
		List<NhanVien> nhanViens = theQuery.getResultList();
		return nhanViens;
	}

	@Override
	public void saveNhanVien(NhanVien nhanvien) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(nhanvien);
	}

	@Override
	public NhanVien getNhanVien(int maNV) {
		Session currentSession = sessionFactory.getCurrentSession();
		NhanVien nhanVien = currentSession.get(NhanVien.class, maNV);
		return nhanVien;
	}

	@Override
	public void deleteNhanVien(int maNV) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NhanVien> theQuery = currentSession.createQuery("delete from NhanVien where maNV=:maNV");
		theQuery.setParameter("maNV", maNV);
		theQuery.executeUpdate();
	}
	
}
