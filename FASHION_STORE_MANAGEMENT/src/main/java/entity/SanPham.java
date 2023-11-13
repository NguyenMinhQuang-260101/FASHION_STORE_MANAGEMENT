package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SanPham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "maSP")
	private int maSP;

	@Column(name = "tenSP")
	private String tenSP;

	@Column(name = "kichCo")
	private String kichCo;

	@Column(name = "soLuong")
	private int soLuong;

	@Column(name = "giaNhap")
	private double giaNhap;

	@Column(name = "giaBan")
	private double giaBan;

	@Column(name = "anhSP")
	private String anhSP;

	public int getMaSP() {
		return maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public String getKichCo() {
		return kichCo;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public double getGiaNhap() {
		return giaNhap;
	}

	public double getGiaBan() {
		return giaBan;
	}

	public String getAnhSP() {
		return anhSP;
	}

	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public void setKichCo(String kichCo) {
		this.kichCo = kichCo;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public void setGiaNhap(double giaNhap) {
		this.giaNhap = giaNhap;
	}

	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}

	public void setAnhSP(String anhSP) {
		this.anhSP = anhSP;
	}

	public SanPham(int maSP, String tenSP, String kichCo, int soLuong, double giaNhap, double giaBan, String anhSP) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.kichCo = kichCo;
		this.soLuong = soLuong;
		this.giaNhap = giaNhap;
		this.giaBan = giaBan;
		this.anhSP = anhSP;
	}

	public SanPham() {
		super();
	}

	public SanPham(int maSP) {
		super();
		this.maSP = maSP;
	}

}
