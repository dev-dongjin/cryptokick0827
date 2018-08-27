package global.sesoc.vo;

public class Rereply {
	
	private int rereply_num;
	private String rereply_content;
	private int reply_num;
	private int product_num;
	private String co_id;
	
	
	public Rereply() {
		// TODO Auto-generated constructor stub
	}


	public Rereply(int rereply_num, String rereply_content, int reply_num, int product_num, String co_id) {
		super();
		this.rereply_num = rereply_num;
		this.rereply_content = rereply_content;
		this.reply_num = reply_num;
		this.product_num = product_num;
		this.co_id = co_id;
	}


	public int getRereply_num() {
		return rereply_num;
	}


	public void setRereply_num(int rereply_num) {
		this.rereply_num = rereply_num;
	}


	public String getRereply_content() {
		return rereply_content;
	}


	public void setRereply_content(String rereply_content) {
		this.rereply_content = rereply_content;
	}


	public int getReply_num() {
		return reply_num;
	}


	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}


	public int getProduct_num() {
		return product_num;
	}


	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}


	public String getCo_id() {
		return co_id;
	}


	public void setCo_id(String co_id) {
		this.co_id = co_id;
	}


	@Override
	public String toString() {
		return "Rereply [rereply_num=" + rereply_num + ", rereply_content=" + rereply_content + ", reply_num="
				+ reply_num + ", product_num=" + product_num + ", co_id=" + co_id + "]";
	}
	
	
	
	
	

}
