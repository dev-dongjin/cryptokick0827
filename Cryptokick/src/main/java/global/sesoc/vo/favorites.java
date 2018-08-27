package global.sesoc.vo;

public class favorites {
		private int product_num;
		private String userid;
		
		public favorites() {
			// TODO Auto-generated constructor stub
		}

		public favorites(int product_num, String userid) {
			super();
			this.product_num = product_num;
			this.userid = userid;
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
			return "favorites [product_num=" + product_num + ", userid=" + userid + "]";
		}
		
}
