package global.sesoc.dao;

import java.util.ArrayList;

import global.sesoc.vo.Product;


public interface ProductMapper {
	public ArrayList<Product> selectAll(Product product);
	
}
