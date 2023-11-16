package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietHoaDon")
public class ChiTietHoaDon {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hoadon_id", nullable = false)
	private HoaDon hoaDon;

	@ManyToOne
	@JoinColumn(name = "sanpham_id", nullable = false)
	private SanPham sanPham;

	@Column(name = "soLuong")
	private int soLuong;

	public int getId() {
		return id;
	}

	public HoaDon getHoaDon() {
		return hoaDon;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public ChiTietHoaDon(int id, HoaDon hoaDon, SanPham sanPham, int soLuong) {
		super();
		this.id = id;
		this.hoaDon = hoaDon;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

	public ChiTietHoaDon(int id) {
		super();
		this.id = id;
	}

	public ChiTietHoaDon(HoaDon hoaDon, SanPham sanPham, int soLuong) {
		super();
		this.hoaDon = hoaDon;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

}
