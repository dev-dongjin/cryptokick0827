package global.sesoc.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.dao.MemberRepository;
import global.sesoc.util.FileService;
import global.sesoc.vo.Company;
import global.sesoc.vo.WebMember;

@Controller
public class MemberController {

	@Autowired
	MemberRepository repository;
	final String uploadPath =System.getProperty("user.home")+"/Pictures/profile";


	//일반회원가입 화면요청
	@RequestMapping(value="/memberSignIn", method=RequestMethod.GET)
	public String memberSignIn() {


		return "member/memberSignIn";
	}
	// 일반회원 및 기업회원 선택 화면요청
	@RequestMapping(value="/signIn", method=RequestMethod.GET)
	public String signIn() {


		return "common/signIn";
	}
	// 기업회원란 화면요청
	@RequestMapping(value="/companySignIn", method=RequestMethod.GET)
	public String companySignIn() {


		return "company/companySignIn";
	}

	//일반회원 가입
	@RequestMapping(value="/memberSignIn", method=RequestMethod.POST)
	public String memberSignIn(MultipartFile upload, WebMember member,HttpSession session) {

		System.out.println(member);
		if(upload.getOriginalFilename() !="") {

			String savedfile = FileService.saveFile(upload,uploadPath);

			member.setImage(savedfile);

		}
        int result=repository.insertMember(member);

		
		System.out.println(member);

		return "home";
	}

	//기업회원 가입
	@RequestMapping(value="/companySignIn", method=RequestMethod.POST)
	public String companySignIn(MultipartFile upload,Company company,HttpSession session) {

		if(upload.getOriginalFilename() !="") {

			String savedfile = FileService.saveFile(upload,uploadPath);

			company.setCo_image(savedfile);

		}
        
		int result=repository.insertCompany(company);
		if(result==1) {
			session.setAttribute("co_id", company.getCo_id());

			System.out.println(session.getAttribute("co_id"));
		}
		System.out.println(company);

		return "home";
	}

	//로그인 화면요청
	@RequestMapping(value="/logIn", method=RequestMethod.GET)
	public String logIn(HttpSession session) {


		return "common/logIn";
	}

	//로그인 처리요청
	@RequestMapping(value="/memberLoginIn",method=RequestMethod.POST)
	public String memberLoginIn(WebMember member,HttpSession session) {
		//System.out.println("처리요청한 값"+member);
		WebMember m=repository.selectOne(member);
		if(m!=null) {
			session.setAttribute("userid", m.getUserid());
			session.setAttribute("username", m.getFirstname());
			System.out.println("로그인 완료임");
			System.out.println(session.getAttribute("userid"));
			return "home";

		}else {
			return "common/logIn";
		}

	}
	
	//기업회원 로그인
	@RequestMapping(value="/companyLogIn",method=RequestMethod.POST)
	public String companyLogIn(Company company,HttpSession session) {
		//System.out.println("처리요청한 값"+member);
		Company c=repository.selectOneCompany(company);
		if(c!=null) {
			session.setAttribute("userid", c.getCo_id());
			session.setAttribute("username", c.getCo_name());
			
			System.out.println("기업회원 로그인 완료임");
			System.out.println(session.getAttribute("userid"));
			return "home";

		}else {
			return "common/logIn";
		}

	}
	// 로그아웃 요청
	@RequestMapping(value="/logOut",method=RequestMethod.GET)
	public String logOut(HttpSession session) {

		session.invalidate();

		return "home";
	}
	// 중복확인
	@RequestMapping(value="duplicateCheck", method=RequestMethod.POST)
	public @ResponseBody Integer duplicateCheck(@RequestBody WebMember member) {
		WebMember m = repository.idCheck(member);

		if(m != null) return 1;		// 사용 불가능한 아이디
		else		  return 0;		// 사용 가능한 아이디
	}

	//프로필 화면요청
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String profile(Model model,WebMember member) { //model은 일시적인 현상임.
		/*WebMember member1=repository.selectOne(member);
		
        if(member1!=null) {
        	
        	return "home";
        }
        model.addAttribute("member", member);*/

		return "member/profile";
	}



}