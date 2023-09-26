package vo;

import java.util.ArrayList;

public class ProductDAO {
	ArrayList<ProductVO> datas;
	
	private static int PK = 1;
	
	public ProductDAO() {
		datas = new ArrayList<ProductVO>();
		datas.add(new ProductVO(PK++,"티셔츠", 2000));
		datas.add(new ProductVO(PK++,"목도리", 5000));
		datas.add(new ProductVO(PK++,"청바지", 4000));
		datas.add(new ProductVO(PK++,"운동화", 3000));
		datas.add(new ProductVO(PK++,"가방", 6000));
		
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
		return null;
	}
	public ProductVO selectOne(ProductVO pVO) {
		return null;
	}
}
