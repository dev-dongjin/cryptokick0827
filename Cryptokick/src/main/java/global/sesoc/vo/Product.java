package global.sesoc.vo;

public class Product {
		private int product_num;
		private String product_name;
		private String product_title;
		private String product_content;
		private int product_nowfundprice;
		private int product_goalfundprice;
		private String product_startdate;
		private String product_goaldate;
		private int product_hitcount;
		private String product_category;
		private String product_video;
		private int product_price;
		private String co_id;
		private String product_coverImage;
		private String product_checked;
		private String product_location;
		
		public Product() {
			// TODO Auto-generated constructor stub
		}

		public Product(int product_num, String product_name, String product_title, String product_content,
				int product_nowfundprice, int product_goalfundprice, String product_startdate, String product_goaldate,
				int product_hitcount, String product_category, String product_video, int product_price, String co_id,
				String product_coverImage, String product_checked, String product_location) {
			super();
			this.product_num = product_num;
			this.product_name = product_name;
			this.product_title = product_title;
			this.product_content = product_content;
			this.product_nowfundprice = product_nowfundprice;
			this.product_goalfundprice = product_goalfundprice;
			this.product_startdate = product_startdate;
			this.product_goaldate = product_goaldate;
			this.product_hitcount = product_hitcount;
			this.product_category = product_category;
			this.product_video = product_video;
			this.product_price = product_price;
			this.co_id = co_id;
			this.product_coverImage = product_coverImage;
			this.product_checked = product_checked;
			this.product_location = product_location;
		}

		public int getProduct_num() {
			return product_num;
		}

		public void setProduct_num(int product_num) {
			this.product_num = product_num;
		}

		public String getProduct_name() {
			return product_name;
		}

		public void setProduct_name(String product_name) {
			this.product_name = product_name;
		}

		public String getProduct_title() {
			return product_title;
		}

		public void setProduct_title(String product_title) {
			this.product_title = product_title;
		}

		public String getProduct_content() {
			return product_content;
		}

		public void setProduct_content(String product_content) {
			this.product_content = product_content;
		}

		public int getProduct_nowfundprice() {
			return product_nowfundprice;
		}

		public void setProduct_nowfundprice(int product_nowfundprice) {
			this.product_nowfundprice = product_nowfundprice;
		}

		public int getProduct_goalfundprice() {
			return product_goalfundprice;
		}

		public void setProduct_goalfundprice(int product_goalfundprice) {
			this.product_goalfundprice = product_goalfundprice;
		}

		public String getProduct_startdate() {
			return product_startdate;
		}

		public void setProduct_startdate(String product_startdate) {
			this.product_startdate = product_startdate;
		}

		public String getProduct_goaldate() {
			return product_goaldate;
		}

		public void setProduct_goaldate(String product_goaldate) {
			this.product_goaldate = product_goaldate;
		}

		public int getProduct_hitcount() {
			return product_hitcount;
		}

		public void setProduct_hitcount(int product_hitcount) {
			this.product_hitcount = product_hitcount;
		}

		public String getProduct_category() {
			return product_category;
		}

		public void setProduct_category(String product_category) {
			this.product_category = product_category;
		}

		public String getProduct_video() {
			return product_video;
		}

		public void setProduct_video(String product_video) {
			this.product_video = product_video;
		}

		public int getProduct_price() {
			return product_price;
		}

		public void setProduct_price(int product_price) {
			this.product_price = product_price;
		}

		public String getCo_id() {
			return co_id;
		}

		public void setCo_id(String co_id) {
			this.co_id = co_id;
		}

		public String getProduct_coverImage() {
			return product_coverImage;
		}

		public void setProduct_coverImage(String product_coverImage) {
			this.product_coverImage = product_coverImage;
		}

		public String getProduct_checked() {
			return product_checked;
		}

		public void setProduct_checked(String product_checked) {
			this.product_checked = product_checked;
		}

		public String getProduct_location() {
			return product_location;
		}

		public void setProduct_location(String product_location) {
			this.product_location = product_location;
		}

		@Override
		public String toString() {
			return "Product [product_num=" + product_num + ", product_name=" + product_name + ", product_title="
					+ product_title + ", product_content=" + product_content + ", product_nowfundprice="
					+ product_nowfundprice + ", product_goalfundprice=" + product_goalfundprice + ", product_startdate="
					+ product_startdate + ", product_goaldate=" + product_goaldate + ", product_hitcount="
					+ product_hitcount + ", product_category=" + product_category + ", product_video=" + product_video
					+ ", product_price=" + product_price + ", co_id=" + co_id + ", product_coverImage="
					+ product_coverImage + ", product_checked=" + product_checked + ", product_location="
					+ product_location + "]";
		}

		
		
		
}	
