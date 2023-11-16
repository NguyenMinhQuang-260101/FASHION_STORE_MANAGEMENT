package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "HoaDon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "maHD")
	private int maHD;

	@Column(name = "ngayLapHD")
	private String ngayLapHD;

	@OneToOne
	@JoinColumn(name = "khachhang_id", nullable = true)
	private KhachHang khachHang;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "nhanvien_id", nullable = false)
	private NhanVien nhanVien;

	@Column(name = "triGiaHD")
	private Double triGiaHD;

	public int getMaHD() {
		return maHD;
	}

	public String getNgayLapHD() {
		return ngayLapHD;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public Double getTriGiaHD() {
		return triGiaHD;
	}

	public void setMaHD(int maHD) {
		this.maHD = maHD;
	}

	public void setNgayLapHD(String ngayLapHD) {
		this.ngayLapHD = ngayLapHD;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public void setTriGiaHD(Double triGiaHD) {
		this.triGiaHD = triGiaHD;
	}

	public HoaDon(int maHD, String ngayLapHD, KhachHang khachHang, NhanVien nhanVien, Double triGiaHD) {
		super();
		this.maHD = maHD;
		this.ngayLapHD = ngayLapHD;
		this.khachHang = khachHang;
		this.nhanVien = nhanVien;
		this.triGiaHD = triGiaHD;
	}

	public HoaDon() {
		super();
	}

	public HoaDon(int maHD) {
		super();
		this.maHD = maHD;
	}

	public HoaDon(String ngayLapHD, NhanVien nhanVien, Double triGiaHD) {
		super();
		this.ngayLapHD = ngayLapHD;
		this.nhanVien = nhanVien;
		this.triGiaHD = triGiaHD;
	}
	
	

}
