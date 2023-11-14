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
@Table(name = "KhachHang")
public class KhachHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "maKH")
	private int maKH;

	@Column(name = "hoTenKH")
	private String hoTenKH;

	@Column(name = "sdtKH")
	private String sdtKH;

	@Column(name = "diaChiKH")
	private String diaChi;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nhanvien_id", nullable = false)
    private NhanVien nhanVien;

	public int getMaKH() {
		return maKH;
	}

	public String getHoTenKH() {
		return hoTenKH;
	}

	public String getSdtKH() {
		return sdtKH;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setMaKH(int maKH) {
		this.maKH = maKH;
	}

	public void setHoTenKH(String hoTenKH) {
		this.hoTenKH = hoTenKH;
	}

	public void setSdtKH(String sdtKH) {
		this.sdtKH = sdtKH;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public KhachHang(int maKH, String hoTenKH, String sdtKH, String diaChi, NhanVien nhanVien) {
		super();
		this.maKH = maKH;
		this.hoTenKH = hoTenKH;
		this.sdtKH = sdtKH;
		this.diaChi = diaChi;
		this.nhanVien = nhanVien;
	}

	public KhachHang() {
		super();
	}

	public KhachHang(int maKH) {
		super();
		this.maKH = maKH;
	}
    
    
}
