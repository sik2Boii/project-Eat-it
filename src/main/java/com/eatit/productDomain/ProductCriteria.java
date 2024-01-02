package com.eatit.productDomain;

/**
 *  ����¡ ó���� ���ؼ� ������ ��ü
 *   => ��������ȣ, ����������� �����ϴ� ��ü  
 */
public class ProductCriteria {

	private int page;
	private int pageSize;
	
	public ProductCriteria() {
		this.page = 1;
		this.pageSize = 10;
	}
		
	// alt shift s + r

	// �������� �����Ѵ�
	public void setPage(int page) {
		if(page <=0) {
			this.page = 1;
			return;
		}
		this.page = page;		
	}
	public void setPageSize(int pageSize) {
		
		if(pageSize <= 0 || pageSize > 100) {
			this.pageSize = 10;
			return;
		}
		
		this.pageSize = pageSize;
	}
	
	
	public int getPage() {
		return page;
	}
	public int getPageSize() {
		return pageSize;
	}
	
	//private int startPage; // ����������� get�޼��常 ����
	// ������ ������, mapper���� ��� # {startPage} ��� ȣ��
	public int getStartPage() {
		// ������ ������ �������Ǵ� ��(�����ε���)���� ����
		return (this.page - 1) * pageSize;
	}

	
	
	// alt shift s + s
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pageSize=" + pageSize + "]";
	}
	
}