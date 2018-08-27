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
public class SaleController {

	@Autowired
	ProductRepository repository;

	int rownum;
	int count;
	int totalprice;
	String firstname;
	String lastname;
	String zipcode;
	String country;
	String city;
	String address1;
	String address2;
	int phone;
	String email;
	String productname;

	
	@RequestMapping(value="/cartPage", method=RequestMethod.GET)
	public String cartPage() {

		return "member/sale/cartPage";
	} 

	@ResponseBody
	@RequestMapping(value="orderInfo", method=RequestMethod.POST)
	public String orderInfo(@RequestBody Sale sale) {
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
