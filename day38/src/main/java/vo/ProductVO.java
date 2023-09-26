package vo;

public class ProductVO {
	private int PK;
	private String name;
	private int price;
	
	public ProductVO() {
		this(0, "", 0);
	}
	
	public ProductVO(int PK, String name, int price) {
		this.PK = PK;
		this.name = name;
		this.price = price;
	}
	
	public int getPK() {
		return PK;
	}
	public void setPK(int pK) {
		PK = pK;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "상품 번호 " + PK + ", 상품명: " + name + ", 가격: " + price;
	}
	
	
}
