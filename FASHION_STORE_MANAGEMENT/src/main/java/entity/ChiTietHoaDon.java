package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietHoaDon")
public class ChiTietHoaDon {
	@Column(name = "maHD")
	private HoaDon maHD;
	
	@Column(name = "maSP")
	private SanPham maSP;
	
	@Column(name = "soLuong")
	private HoaDon soLuong;

	public HoaDon getMaHD() {
		return maHD;
	}

	public SanPham getMaSP() {
		return maSP;
	}

	public HoaDon getSoLuong() {
		return soLuong;
	}

	public void setMaHD(HoaDon maHD) {
		this.maHD = maHD;
	}

	public void setMaSP(SanPham maSP) {
		this.maSP = maSP;
	}

	public void setSoLuong(HoaDon soLuong) {
		this.soLuong = soLuong;
	}

	public ChiTietHoaDon(HoaDon maHD, SanPham maSP, HoaDon soLuong) {
		super();
		this.maHD = maHD;
		this.maSP = maSP;
		this.soLuong = soLuong;
	}

	
	public ChiTietHoaDon() {
		super();
	}
	
	
	
	
}
