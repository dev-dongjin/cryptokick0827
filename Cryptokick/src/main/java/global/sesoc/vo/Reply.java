package global.sesoc.vo;

public class Reply {
	
	private int reply_num;
	private String reply_content;
	private String userid;
	private int product_num;
	
	public Reply() {
		// TODO Auto-generated constructor stub
	}

	public Reply(int reply_num, String reply_content, String userid, int product_num) {
		super();
		this.reply_num = reply_num;
		this.reply_content = reply_content;
		this.userid = userid;
		this.product_num = product_num;
	}

	public int getReply_num() {
		return reply_num;
	}

	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getProduct_num() {
		return product_num;
	}

	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}

	@Override
	public String toString() {
		return "Reply [reply_num=" + reply_num + ", reply_content=" + reply_content + ", userid=" + userid
				+ ", product_num=" + product_num + "]";
	}
	
	
	

}
