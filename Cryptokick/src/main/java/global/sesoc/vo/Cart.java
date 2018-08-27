package global.sesoc.vo;

public class Cart {
	
	private int cart_num;
	private int cart_priceinfo;
	private int cart_cnt;
	private int product_num;
	private String userid;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(int cart_num, int cart_priceinfo, int cart_cnt, int product_num, String userid) {
		super();
		this.cart_num = cart_num;
		this.cart_priceinfo = cart_priceinfo;
		this.cart_cnt = cart_cnt;
		this.product_num = product_num;
		this.userid = userid;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public int getCart_priceinfo() {
		return cart_priceinfo;
	}

	public void setCart_priceinfo(int cart_priceinfo) {
		this.cart_priceinfo = cart_priceinfo;
	}

	public int getCart_cnt() {
		return cart_cnt;
	}

	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}

	public int getProduct_num() {
		return product_num;
	}

	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Cart [cart_num=" + cart_num + ", cart_priceinfo=" + cart_priceinfo + ", cart_cnt=" + cart_cnt
				+ ", product_num=" + product_num + ", userid=" + userid + "]";
	}
	
	
}
