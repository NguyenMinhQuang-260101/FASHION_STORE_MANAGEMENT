package entity;

public class Cart {
	private SanPham sanPham;
	private int soLuongMua;
	private double tongGiaSP;

	public SanPham getSanPham() {
		return sanPham;
	}

	public int getSoLuongMua() {
		return soLuongMua;
	}

	public double getTongGiaSP() {
		return tongGiaSP;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public void setSoLuongMua(int soLuongMua) {
		this.soLuongMua = soLuongMua;
	}

	public void setTongGiaSP(double tongGiaSP) {
		this.tongGiaSP = tongGiaSP;
	}

	public Cart(SanPham sanPham, int soLuongMua, double tongGiaSP) {
		super();
		this.sanPham = sanPham;
		this.soLuongMua = soLuongMua;
		this.tongGiaSP = tongGiaSP;
	}

}
