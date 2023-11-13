package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

	@Column(name = "maKH")
	private KhachHang maKH;

	@Column(name = "maNV")
	private KhachHang maNV;

	@Column(name = "triGiaHD")
	private Double triGiaHD;

	public int getMaHD() {
		return maHD;
	}

	public String getNgayLapHD() {
		return ngayLapHD;
	}

	public KhachHang getMaKH() {
		return maKH;
	}

	public KhachHang getMaNV() {
		return maNV;
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

	public void setMaKH(KhachHang maKH) {
		this.maKH = maKH;
	}

	public void setMaNV(KhachHang maNV) {
		this.maNV = maNV;
	}

	public void setTriGiaHD(Double triGiaHD) {
		this.triGiaHD = triGiaHD;
	}

	public HoaDon(int maHD, String ngayLapHD, KhachHang maKH, KhachHang maNV, Double triGiaHD) {
		super();
		this.maHD = maHD;
		this.ngayLapHD = ngayLapHD;
		this.maKH = maKH;
		this.maNV = maNV;
		this.triGiaHD = triGiaHD;
	}

	public HoaDon(String ngayLapHD, KhachHang maKH, KhachHang maNV, Double triGiaHD) {
		super();
		this.ngayLapHD = ngayLapHD;
		this.maKH = maKH;
		this.maNV = maNV;
		this.triGiaHD = triGiaHD;
	}

	public HoaDon(int maHD) {
		super();
		this.maHD = maHD;
	}

	public HoaDon() {
		super();
	}

}
