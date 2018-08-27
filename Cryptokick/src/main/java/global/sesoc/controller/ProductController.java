package global.sesoc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.dao.ProductRepository;
import global.sesoc.util.CryptoCurrency;
import global.sesoc.util.ExchangeRateInformation;
import global.sesoc.vo.FileBean;
import global.sesoc.vo.Product;
import global.sesoc.vo.Sale;

@Controller
public class ProductController {

	@Autowired
	ProductRepository repository;

	int rownum;
	int count;
	int totalprice;
	String firstname;
	String lastname;
	int zipcode;
	String country;
	String city;
	String address1;
	String address2;
	int phone;
	String email;
	String productname;

	@RequestMapping(value = "/detailedProduct", method = RequestMethod.GET)
	public String detailedProduct() {
		System.out.println("여기까지옴.");

		return "common/product/detailedProduct";
	}

	@ResponseBody
	@RequestMapping(value = "getHash", method = RequestMethod.GET)
	public int getHash() {
		int nonce = 1;

		while (true) {

			if (nonce % 10000 == 0) {
				System.out.println("시도 : " + nonce);

			}

			if (CryptoCurrency.getHash(nonce + "").substring(0, 6).equals("000000")) {

				System.out.println("정답: " + nonce);

				return nonce;

			}

			nonce++;
		}
	}

	@RequestMapping(value = "/Projects", method = RequestMethod.GET)
	public String AllProjects(Product product, Model model) {
		System.out.println(product);

		ArrayList<Product> plist = new ArrayList<>();

		product.setProduct_num(0);

		model.addAttribute("category", product.getProduct_category());

		if (product.getProduct_category().equals("All")) {
			product.setProduct_category(null);
		}

		if (product.getProduct_content() == null) {
			product.setProduct_content("Newest");
		}

		if (product.getProduct_name() != null) {
			product.setProduct_name(product.getProduct_name().toLowerCase());
		}
		System.out.println(product);
		plist = repository.selectAll(product);
		System.out.println(plist);
		model.addAttribute("pList", plist);

		rownum = 9;
		count = 0;

		System.out.println(product.getProduct_content());

		model.addAttribute("search", product.getProduct_name());
		model.addAttribute("sort", product.getProduct_content());

		return "common/product/projects";
	}

	@ResponseBody
	@RequestMapping(value="/scrolldown", method=RequestMethod.GET)
	public ArrayList<Product> scrolldown(Product product) {
		System.out.println("scroll" +product);
		count++;

		if(product.getProduct_category().equals("All")) {
			product.setProduct_category(null);
		}

		if(product.getProduct_content()== null) {
			product.setProduct_content("Newest");
		}

		if(product.getProduct_name()!=null) {
			product.setProduct_name(product.getProduct_name().toLowerCase());
		}

		if(product.getProduct_name()=="") {
			product.setProduct_name(null);
		}


		product.setProduct_num(rownum*count);
		ArrayList<Product> plist = new ArrayList<>();
		System.out.println(product);
		plist = repository.selectAll(product);
		System.out.println(plist);

		return plist;
	}

	// createProduct 페이지 요청
	@RequestMapping(value = "/createProduct", method = RequestMethod.GET)
	public String createProduct() {

		return "company/product/createProduct";
	}

	@RequestMapping("/ckeditorImageUpload")
	public void procFileUpload(FileBean fileBean, HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		System.out.println("이미지업로드 upload : " + fileBean.getUpload());
		HttpSession session = request.getSession();
		String root_path = session.getServletContext().getRealPath("/");
		String attach_path = "resources/uploadImage/";

		String filePath = System.getProperty("user.home") + "/Pictures/imgs/"
				+ fileBean.getUpload().getOriginalFilename();

		PrintWriter printWriter = null;

		MultipartFile upload = fileBean.getUpload();
		String fileName = "";
		String CKEditorFuncNum = "";

		if (upload != null) {
			fileName = upload.getOriginalFilename();
			fileBean.setFilename(fileName);
			CKEditorFuncNum = fileBean.getCKEditorFuncNum();
			try {
				File file = new File(filePath);
				// log.info(root_path + attach_path + filename);
				upload.transferTo(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		printWriter = response.getWriter();

		String fileUrl = "getImg/" + fileName;

		/*
		 * printWriter.
		 * println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
		 * + fileBean.getCKEditorFuncNum() + ",'" + fileUrl + "','success'" +
		 * ")</script>");
		 */

		String text = "{\"uploaded\": 1, \"fileName\": \"" + fileName + "\", \"url\": \"" + fileUrl + "\"}";
		printWriter.print(text);
		// printWriter.println("{'uploaded': 1, 'fileName': 'XQjCjpD.png', 'url':
		// 'c:/uploadimg/XQjCjpD.png'}");
		/*
		 * printWriter.println("{"); printWriter.println(" \"uploaded\": 1,");
		 * printWriter.println("\"fileName\":" + "\"" + filename+"\",");
		 * printWriter.println(" \"url\":" + "\"" + fileUrl +"\"" );
		 * printWriter.println("}");
		 */

		printWriter.flush();

		/*
		 * String file_path = attach_path + filename; model.addAttribute("file_path",
		 * file_path); model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		 * 
		 * System.out.println("파일빈값 : "+fileBean + ", path값 :"+file_path);
		 * System.out.println("모델값 : "+model.toString());
		 */
		// return "editor";

	}

	@RequestMapping(value = "/getImg/{fileName}", method = RequestMethod.GET)
	public void getImage(@PathVariable("fileName") String fileName, HttpServletResponse response) throws Exception {
		// fileName 부분이 업로드한 그림파일 이름입니다.
		// 파일이 있는 위치는 다음과 같구요
		// 참고로 확장자는 입력이 안 되는지라... 그 부분은 잘 생각해 보시면 됩니다 ^^...
		String filePath = System.getProperty("user.home") + "/Pictures/imgs/" + fileName + ".jpg";
		File f = new File(filePath);
		// 이제 파일을 보내주면 됩니다.
		FileInputStream fis = new FileInputStream(f);
		FileCopyUtils.copy(fis, response.getOutputStream());
	}

	@RequestMapping(value="/cartPage", method=RequestMethod.GET)
	public String cartPage() {



		return "member/sale/cartPage";
	} 

	@ResponseBody
	@RequestMapping(value="orderInfo", method=RequestMethod.POST)
	public String orderInfo(@RequestBody Sale sale) {
		totalprice = sale.getTotalprice();
		firstname = sale.getFirstname();
		lastname = sale.getLastname();
		zipcode = sale.getZipcode();
		country = sale.getCountry();
		city = sale.getCity();
		address1 = sale.getAddress1();
		address2 = sale.getAddress2();
		phone = sale.getPhone();
		email = sale.getEmail();
		productname= sale.getProductname();
		System.out.println(totalprice);




		return address1;
	}

	
	@RequestMapping(value="/orderComplete", method=RequestMethod.GET)
	public String orderComplete(Model model) {




		return "member/sale/orderComplete";
	} 

	@RequestMapping(value="/paymentPage", method=RequestMethod.GET)
	public String paymentPage(Model model) {

		ExchangeRateInformation test1 = new ExchangeRateInformation();
		double currency = test1.exchange();

		model.addAttribute("currency", currency);
		return "member/sale/paymentPage";
	}
}
