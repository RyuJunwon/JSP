package model;

import java.util.ArrayList;

public class ProductDAO {
	ArrayList<ProductVO> datas;
	
	
	public ProductDAO() {
		datas = new ArrayList<ProductVO>();
		datas.add(new ProductVO(1,"티셔츠", 2000));
		datas.add(new ProductVO(2,"목도리", 5000));
		datas.add(new ProductVO(3,"청바지", 4000));
		datas.add(new ProductVO(4,"운동화", 3000));
		datas.add(new ProductVO(5,"가방", 6000));
		
	}
	
	public boolean insert(ProductVO pVO) {
		return false;
	}
	public boolean update(ProductVO pVO) {
		return false;
	}
	public boolean delete(ProductVO pVO) {
		return false;
	}
	public ArrayList<ProductVO> selectAll(ProductVO pVO) {
		return datas;
	}
	public ProductVO selectOne(ProductVO pVO) {
		for(ProductVO v : datas) {
			if(v.getPK() == pVO.getPK()) {
				return v;
			}
		}
		return null;
	}
}
