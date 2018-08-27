package global.sesoc.vo;

public class Viewer {
		
	private int viewer_num;
	private String viewer_countryinfo;
	private String viewer_cityinfo;
	private String viewer_ipinfo;
	private String userid;
	private int product_num;
	private String viewer_date;
	
	public Viewer() {
		// TODO Auto-generated constructor stub
	}

	public Viewer(int viewer_num, String viewer_countryinfo, String viewer_cityinfo, String viewer_ipinfo,
			String userid, int product_num, String viewer_date) {
		super();
		this.viewer_num = viewer_num;
		this.viewer_countryinfo = viewer_countryinfo;
		this.viewer_cityinfo = viewer_cityinfo;
		this.viewer_ipinfo = viewer_ipinfo;
		this.userid = userid;
		this.product_num = product_num;
		this.viewer_date = viewer_date;
	}

	public int getViewer_num() {
		return viewer_num;
	}

	public void setViewer_num(int viewer_num) {
		this.viewer_num = viewer_num;
	}

	public String getViewer_countryinfo() {
		return viewer_countryinfo;
	}

	public void setViewer_countryinfo(String viewer_countryinfo) {
		this.viewer_countryinfo = viewer_countryinfo;
	}

	public String getViewer_cityinfo() {
		return viewer_cityinfo;
	}

	public void setViewer_cityinfo(String viewer_cityinfo) {
		this.viewer_cityinfo = viewer_cityinfo;
	}

	public String getViewer_ipinfo() {
		return viewer_ipinfo;
	}

	public void setViewer_ipinfo(String viewer_ipinfo) {
		this.viewer_ipinfo = viewer_ipinfo;
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

	public String getViewer_date() {
		return viewer_date;
	}

	public void setViewer_date(String viewer_date) {
		this.viewer_date = viewer_date;
	}

	@Override
	public String toString() {
		return "Viewer [viewer_num=" + viewer_num + ", viewer_countryinfo=" + viewer_countryinfo + ", viewer_cityinfo="
				+ viewer_cityinfo + ", viewer_ipinfo=" + viewer_ipinfo + ", userid=" + userid + ", product_num="
				+ product_num + ", viewer_date=" + viewer_date + "]";
	}
	
		
}
