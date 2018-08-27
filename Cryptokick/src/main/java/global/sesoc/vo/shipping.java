package global.sesoc.vo;

public class shipping {
		
		private int shipping_num;
		private int product_num;
		private String shipping_country;
		private int shipping_price;
		
		public shipping() {
			// TODO Auto-generated constructor stub
		}

		public shipping(int shipping_num, int product_num, String shipping_country, int shipping_price) {
			super();
			this.shipping_num = shipping_num;
			this.product_num = product_num;
			this.shipping_country = shipping_country;
			this.shipping_price = shipping_price;
		}

		public int getShipping_num() {
			return shipping_num;
		}

		public void setShipping_num(int shipping_num) {
			this.shipping_num = shipping_num;
		}

		public int getProduct_num() {
			return product_num;
		}

		public void setProduct_num(int product_num) {
			this.product_num = product_num;
		}

		public String getShipping_country() {
			return shipping_country;
		}

		public void setShipping_country(String shipping_country) {
			this.shipping_country = shipping_country;
		}

		public int getShipping_price() {
			return shipping_price;
		}

		public void setShipping_price(int shipping_price) {
			this.shipping_price = shipping_price;
		}

		@Override
		public String toString() {
			return "shipping [shipping_num=" + shipping_num + ", product_num=" + product_num + ", shipping_country="
					+ shipping_country + ", shipping_price=" + shipping_price + "]";
		}
		
		
		
}
