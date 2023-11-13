package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NhanVien")
public class NhanVien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "maNV")
	private int maNhanVien;

	@Column(name = "hoTenNV")
	private String hoTenNV;

	@Column(name = "gioiTinh")
	private String gioiTinh;

	@Column(name = "diaChiNV")
	private String diaChi;

	@Column(name = "sdtNV")
	private String sdtNV;

	@Column(name = "ngayLV")
	private String ngayLV;

	public int getMaNhanVien() {
		return maNhanVien;
	}

	public String getHoTenNV() {
		return hoTenNV;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public String getSdtNV() {
		return sdtNV;
	}

	public String getNgayLV() {
		return ngayLV;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public void setHoTenNV(String hoTenNV) {
		this.hoTenNV = hoTenNV;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public void setSdtNV(String sdtNV) {
		this.sdtNV = sdtNV;
	}

	public void setNgayLV(String ngayLV) {
		this.ngayLV = ngayLV;
	}

	public NhanVien(int maNhanVien, String hoTenNV, String gioiTinh, String diaChi, String sdtNV, String ngayLV) {
		super();
		this.maNhanVien = maNhanVien;
		this.hoTenNV = hoTenNV;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.sdtNV = sdtNV;
		this.ngayLV = ngayLV;
	}

	public NhanVien() {
		super();
	}

	public NhanVien(int maNhanVien) {
		super();
		this.maNhanVien = maNhanVien;
	}
	
}
