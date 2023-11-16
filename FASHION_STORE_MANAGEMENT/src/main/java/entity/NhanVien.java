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
	private int maNV;

	@Column(name = "hoTenNV")
	private String hoTenNV;

	@Column(name = "gioiTinh")
	private String gioiTinh;

	@Column(name = "diaChiNV")
	private String diaChiNV;

	@Column(name = "sdtNV")
	private String sdtNV;

	@Column(name = "ngayLV")
	private String ngayLV;

	public int getMaNV() {
		return maNV;
	}

	public String getHoTenNV() {
		return hoTenNV;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	

	public String getSdtNV() {
		return sdtNV;
	}

	public String getNgayLV() {
		return ngayLV;
	}

	public void setMaNV(int maNV) {
		this.maNV = maNV;
	}

	public void setHoTenNV(String hoTenNV) {
		this.hoTenNV = hoTenNV;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	

	public void setSdtNV(String sdtNV) {
		this.sdtNV = sdtNV;
	}

	public void setNgayLV(String ngayLV) {
		this.ngayLV = ngayLV;
	}

	

	public NhanVien(String hoTenNV, String gioiTinh, String diaChiNV, String sdtNV, String ngayLV) {
		super();
		this.hoTenNV = hoTenNV;
		this.gioiTinh = gioiTinh;
		this.diaChiNV = diaChiNV;
		this.sdtNV = sdtNV;
		this.ngayLV = ngayLV;
	}

	public NhanVien(int maNV, String hoTenNV, String gioiTinh, String diaChiNV, String sdtNV, String ngayLV) {
		super();
		this.maNV = maNV;
		this.hoTenNV = hoTenNV;
		this.gioiTinh = gioiTinh;
		this.diaChiNV = diaChiNV;
		this.sdtNV = sdtNV;
		this.ngayLV = ngayLV;
	}

	public String getDiaChiNV() {
		return diaChiNV;
	}

	public void setDiaChiNV(String diaChiNV) {
		this.diaChiNV = diaChiNV;
	}

	public NhanVien() {
		super();
	}

	public NhanVien(int maNV) {
		super();
		this.maNV = maNV;
	}
	
	

}
