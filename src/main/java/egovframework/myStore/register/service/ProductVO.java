package egovframework.myStore.register.service;

import java.util.Date;

public class ProductVO {
	private int productNo; /* 상품 번호 */  
	private int aCategoryCode; /* a카테고리 코드 */
	private int bCategoryCode; /* b카테고리 코드 */
	private int userNo; /* 유저 번호 */
	private String productStatementCode; /* 상품 상태 코드 */
	private String productTitle; /* 상품 제목 */
	private int productPrice; /* 상품 가격 */
	private Date productDate; /* 등록 일시 */
	private int productQuantity; /* 수량 */
	private String productTrade; /* 거래 방식 */
	private int productViews; /* 조회수 */
	private String productContents; /* 상품 설명 */
	
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getaCategoryCode() {
		return aCategoryCode;
	}
	public void setaCategoryCode(int aCategoryCode) {
		this.aCategoryCode = aCategoryCode;
	}
	public int getbCategoryCode() {
		return bCategoryCode;
	}
	public void setbCategoryCode(int bCategoryCode) {
		this.bCategoryCode = bCategoryCode;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getProductStatementCode() {
		return productStatementCode;
	}
	public void setProductStatementCode(String productStatementCode) {
		this.productStatementCode = productStatementCode;
	}
	public String getProductTitle() {
		return productTitle;
	}
	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public Date getProductDate() {
		return productDate;
	}
	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductTrade() {
		return productTrade;
	}
	public void setProductTrade(String productTrade) {
		this.productTrade = productTrade;
	}
	public int getProductViews() {
		return productViews;
	}
	public void setProductViews(int productViews) {
		this.productViews = productViews;
	}
	public String getProductContents() {
		return productContents;
	}
	public void setProductContents(String productContents) {
		this.productContents = productContents;
	}
}
