package entity;

import java.util.List;

public class HoaDonTamp {
	private int hoaDonTampID;
	private String ngayLapHDTamp;
	private double tongTienHoaDonTamp;
	private List<SanPhamTamp> sanPhamTamps;

	public int getHoaDonTampID() {
		return hoaDonTampID;
	}

	public String getNgayLapHDTamp() {
		return ngayLapHDTamp;
	}

	public double getTongTienHoaDonTamp() {
		return tongTienHoaDonTamp;
	}

	public List<SanPhamTamp> getSanPhamTamps() {
		return sanPhamTamps;
	}

	public void setHoaDonTampID(int hoaDonTampID) {
		this.hoaDonTampID = hoaDonTampID;
	}

	public void setNgayLapHDTamp(String ngayLapHDTamp) {
		this.ngayLapHDTamp = ngayLapHDTamp;
	}

	public void setTongTienHoaDonTamp(double tongTienHoaDonTamp) {
		this.tongTienHoaDonTamp = tongTienHoaDonTamp;
	}

	public void setSanPhamTamps(List<SanPhamTamp> sanPhamTamps) {
		this.sanPhamTamps = sanPhamTamps;
	}

	public HoaDonTamp(int hoaDonTampID, String ngayLapHDTamp, double tongTienHoaDonTamp,
			List<SanPhamTamp> sanPhamTamps) {
		super();
		this.hoaDonTampID = hoaDonTampID;
		this.ngayLapHDTamp = ngayLapHDTamp;
		this.tongTienHoaDonTamp = tongTienHoaDonTamp;
		this.sanPhamTamps = sanPhamTamps;
	}

}
