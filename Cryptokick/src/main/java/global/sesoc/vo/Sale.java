package global.sesoc.vo;

public class Sale {
   
   private int sale_num;
   private int sale_priceinfo;
   private int sale_amount;
   private int product_num;
   private String userid;
   private String sale_date;
   private int totalprice;
   private String firstname;
   private String lastname;
   private int zipcode;
   private String country;
   private String city;
   private String address1;
   private String address2;
   private int phone;
   private String email;
   private String productname;
   
   public Sale() {
      // TODO Auto-generated constructor stub
   }
   
   

   public Sale(int sale_num, int sale_priceinfo, int sale_amount, int product_num, String userid, String sale_date,
         int totalprice, String firstname, String lastname, int zipcode, String country, String city,
         String address1, String address2, int phone, String email, String productname) {
      super();
      this.sale_num = sale_num;
      this.sale_priceinfo = sale_priceinfo;
      this.sale_amount = sale_amount;
      this.product_num = product_num;
      this.userid = userid;
      this.sale_date = sale_date;
      this.totalprice = totalprice;
      this.firstname = firstname;
      this.lastname = lastname;
      this.zipcode = zipcode;
      this.country = country;
      this.city = city;
      this.address1 = address1;
      this.address2 = address2;
      this.phone = phone;
      this.email = email;
      this.productname = productname;
   }



   public int getSale_num() {
      return sale_num;
   }

   public void setSale_num(int sale_num) {
      this.sale_num = sale_num;
   }

   public int getSale_priceinfo() {
      return sale_priceinfo;
   }

   public void setSale_priceinfo(int sale_priceinfo) {
      this.sale_priceinfo = sale_priceinfo;
   }

   public int getSale_amount() {
      return sale_amount;
   }

   public void setSale_amount(int sale_amount) {
      this.sale_amount = sale_amount;
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

   public String getSale_date() {
      return sale_date;
   }

   public void setSale_date(String sale_date) {
      this.sale_date = sale_date;
   }

   public int getTotalprice() {
      return totalprice;
   }

   public void setTotalprice(int totalprice) {
      this.totalprice = totalprice;
   }

   public String getFirstname() {
      return firstname;
   }

   public void setFirstname(String firstname) {
      this.firstname = firstname;
   }

   public String getLastname() {
      return lastname;
   }

   public void setLastname(String lastname) {
      this.lastname = lastname;
   }

   public int getZipcode() {
      return zipcode;
   }

   public void setZipcode(int zipcode) {
      this.zipcode = zipcode;
   }

   public String getCountry() {
      return country;
   }

   public void setCountry(String country) {
      this.country = country;
   }

   public String getCity() {
      return city;
   }

   public void setCity(String city) {
      this.city = city;
   }

   public String getAddress1() {
      return address1;
   }

   public void setAddress1(String address1) {
      this.address1 = address1;
   }

   public String getAddress2() {
      return address2;
   }

   public void setAddress2(String address2) {
      this.address2 = address2;
   }

   public int getPhone() {
      return phone;
   }

   public void setPhone(int phone) {
      this.phone = phone;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getProductname() {
      return productname;
   }

   public void setProductname(String productname) {
      this.productname = productname;
   }

   @Override
   public String toString() {
      return "Sale [sale_num=" + sale_num + ", sale_priceinfo=" + sale_priceinfo + ", sale_amount=" + sale_amount
            + ", product_num=" + product_num + ", userid=" + userid + ", sale_date=" + sale_date + ", totalprice="
            + totalprice + ", firstname=" + firstname + ", lastname=" + lastname + ", zipcode=" + zipcode
            + ", country=" + country + ", city=" + city + ", address1=" + address1 + ", address2=" + address2
            + ", phone=" + phone + ", email=" + email + ", productname=" + productname + "]";
   }
   
   

}