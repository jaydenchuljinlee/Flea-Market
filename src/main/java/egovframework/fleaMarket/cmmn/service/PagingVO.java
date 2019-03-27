package egovframework.fleaMarket.cmmn.service;

public class PagingVO {

	private int page = 1;		//현재 페이지 번호
	private int pageScale;		//보여지는 페이지 번호의 갯수
	private int pageGroup;		//현재 페이지 번호의 그룹
	private int startPage;		//보여지는 페이지번호 중에서 첫번쨰 번호
	private int endPage;		//보여지는 페이지번호 중에서 마지막 번호 
	private int prePage;		//이전 페이지 그룹의 마지막 번호
	private int nextPage;		//다음 페이지 그룹의 첫번째 번호
	private int totalPage;		//총 페이지 번호의 갯수
	private int rows;			//한 페이지에 보여지는 로우
	
	
	@Override
	public String toString() {
		return "PagingVO [page=" + page + ", pageScale=" + pageScale + ", pageGroup=" + pageGroup + ", startPage="
				+ startPage + ", endPage=" + endPage + ", prePage=" + prePage + ", nextPage=" + nextPage
				+ ", totalPage=" + totalPage + ", rows=" + rows + "]";
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageScale() {
		return pageScale;
	}
	public void setPageScale(int pageScale) {
		this.pageScale = pageScale;
	}
	public int getPageGroup() {
		return pageGroup;
	}
	public void setPageGroup(int pageGroup) {
		this.pageGroup = pageGroup;
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
	public int getPrePage() {
		return prePage;
	}
	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
}
