package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

	public KhachHang(int maKH, String hoTenKH, String sdtKH, String diaChi) {
		super();
		this.maKH = maKH;
		this.hoTenKH = hoTenKH;
		this.sdtKH = sdtKH;
		this.diaChi = diaChi;
	}

	public KhachHang() {
		super();
	}

	public KhachHang(int maKH) {
		super();
		this.maKH = maKH;
	}
	
	

}
