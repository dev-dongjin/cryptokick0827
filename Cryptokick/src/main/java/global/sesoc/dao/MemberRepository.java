package global.sesoc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.vo.Company;
import global.sesoc.vo.WebMember;

@Repository
public class MemberRepository {
	
	@Autowired
	SqlSession session;

	public int insertMember(WebMember member) {
	    MemberMapper mapper=session.getMapper(MemberMapper.class);
	    int result=mapper.insertMember(member);
		
		return result;
	}


	public WebMember idCheck(WebMember member) {
		MemberMapper  mapper=session.getMapper(MemberMapper.class);
		WebMember m=mapper.idCheck(member);
		
		return m;
	}


	public int insertCompany(Company company) {
		MemberMapper mapper=session.getMapper(MemberMapper.class);
		int result=mapper.insertCompany(company);
		
		return result;
	}


	public WebMember selectOne(WebMember member) {
		MemberMapper  mapper=session.getMapper(MemberMapper.class);
		WebMember m=mapper.selectOne(member);
		
		return m;
	}


	public Company selectOneCompany(Company company) {
		System.out.println(company);
		MemberMapper mapper=session.getMapper(MemberMapper.class);
		Company com=mapper.selectOneCompany(company);
		System.out.println(com);
		return com;
	}





}
