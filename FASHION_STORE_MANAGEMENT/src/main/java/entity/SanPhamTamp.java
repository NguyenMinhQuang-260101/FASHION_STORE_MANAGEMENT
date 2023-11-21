package entity;

public class SanPhamTamp {
	private SanPham sanPham;
	private int soLuongSanPham;

	public SanPham getSanPham() {
		return sanPham;
	}

	public int getSoLuongSanPham() {
		return soLuongSanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public void setSoLuongSanPham(int soLuongSanPham) {
		this.soLuongSanPham = soLuongSanPham;
	}

	public SanPhamTamp(SanPham sanPham, int soLuongSanPham) {
		super();
		this.sanPham = sanPham;
		this.soLuongSanPham = soLuongSanPham;
	}

}
