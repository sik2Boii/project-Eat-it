package com.eatit.productDomain;

/**
 *	 ����¡ ó���� �ʿ��� ������ ����
 *		=> �� ����, ������������ȣ, �������� ��ȣ, ������ũ,������ũ , ���� ũ��
 *          +Cri(��������ȣ, ������������)
 *
 *     �� ���� : totalCount (DB��ȸ)
 *     �� ������ : endPage = �ø�(��������ȣ/���� ũ��) * ���� ũ��
 *     ���� ������ : startPage = (endPage - ���� ũ��) + 1;
 *     ���� ��ũ :  prev(boolean) = startPage != 1
 *     ���� ��ũ :  next(boolean) = endPage * ������ ������ < totalCount
 *
 */
public class PageVO {
	
	private int totalCount;  // �� ����
	private int startPage;	 // ������ �� ���۹�ȣ
	private int endPage;	 // ������ �� ����ȣ
	
	private boolean prev; 	 // ������ũ
	private boolean next;	 // ������ũ
	
	private int displayPageNum = 10; //������ ���� ũ��
	
	//private int page;
	//private int pageSize;
	private ProductCriteria cri;
	
	// => ��������ȣ, ������ ������ ����
	public void setCri(ProductCriteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		// ����¡ ó���� �ʿ��� ������ ��� ���
		calcData();
	}
	
	private void calcData() {
		// ����¡ó�� ������ ��� ���
		
		// �� ��������ȣ
		endPage =  (int)(Math.ceil(cri.getPage() / (double)displayPageNum)) * displayPageNum;
		// ���� ��������ȣ
		startPage = (endPage - displayPageNum) + 1;
		
		// �� ������ ��ȣüũ (���� ���°��)
		//int tmpEndPage = totalCount / cri.getPageSize() + (totalCount%cri.getPageSize()==0? 0:1);
		int tmpEndPage = (int)(Math.ceil(((double)totalCount / cri.getPageSize())));
		
		if(endPage > tmpEndPage) {
			endPage = tmpEndPage;
		}
		
		// ���� ��ũ
		prev = startPage != 1;
		//prev = startPage == 1? false:true;
		// ���� ��ũ	
		next = endPage * cri.getPageSize() < totalCount;
		//next = endPage * cri.getPageSize() >= totalCount? false:true;

		// ����¡ó�� ������ ���Ϸ�
	} // calcData() 
	

	
	
	public int getTotalCount() {
		return totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public ProductCriteria getCri() {
		return cri;
	}

	
	@Override
	public String toString() {
		return "PageVO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
	

}