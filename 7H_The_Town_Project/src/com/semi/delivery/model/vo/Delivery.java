package com.semi.delivery.model.vo;


public class Delivery {

	private int delNo;				//	DEL_NO
	private String delStatus;		//	DEL_STATUS
	private String curSpot;			//	CUR_SPOT
	private int petNo;				//	PET_NO
	private int userNo;				//	USER_NO
	
	
	public Delivery() {
		
	}
	
	/**
	 * @author 전체 목록
	 */
	public Delivery(int delNo, String delStatus, String curSpot, int petNo, int userNo) {
		super();
		this.delNo = delNo;
		this.delStatus = delStatus;
		this.curSpot = curSpot;
		this.petNo = petNo;
		this.userNo = userNo;
	}

	
	
	/**
	 * @param 배송고유번호별 배송현황 조회
	 */
	public Delivery(int delNo, String delStatus, String curSpot, int userNo) {
		super();
		this.delNo = delNo;
		this.delStatus = delStatus;
		this.curSpot = curSpot;
		this.userNo = userNo;
	}

	
	public int getDelNo() {
		return delNo;
	}
	
	public void setDelNo(int delNo) {
		this.delNo = delNo;
	}
	
	public String getDelStatus() {
		return delStatus;
	}
	
	public void setDelStatus(String delStatus) {
		this.delStatus = delStatus;
	}
	
	public String getCurSpot() {
		return curSpot;
	}
	
	public void setCurSpot(String curSpot) {
		this.curSpot = curSpot;
	}
	
	public int getPetNo() {
		return petNo;
	}
	
	public void setPetNo(int petNo) {
		this.petNo = petNo;
	}
	
	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
		
}
