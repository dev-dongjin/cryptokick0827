package global.sesoc.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.vo.Product;

@Repository
public class ProductRepository {
	//SqlSession 필요
	@Autowired
	SqlSession session;
	
	
	public ArrayList<Product> selectAll(Product product){
		ProductMapper mapper = session.getMapper(ProductMapper.class); 
		ArrayList<Product> list = new ArrayList<>();
		list = mapper.selectAll(product);
		System.out.println("repository ="+list);
		return list;
	}
	
	
}
