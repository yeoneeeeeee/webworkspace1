package com.semi.pet.model.vo;

import java.sql.Date;

public class Pet {

	private String petNo;		//	PET_NO
	private String petName; 	//	PET_NAME
	private String petKind; 	//	PET_KIND
	private int petAge; 		//	PET_AGE
	private String gender; 		//	PET_GENDER
	private int price; 			//	PET_PRICE
	private Date petRescue; 	//	PET_RESCUE
	private String status;		//	STATUS
	
	public Pet() {
		
	}

	
	/**
	 * selectPet 전체 조회
	 * @param 
	 */
	public Pet(String petNo, String petName, String petKind, int petAge, String gender, int price, Date petRescue,
			String status) {
		super();
		this.petNo = petNo;
		this.petName = petName;
		this.petKind = petKind;
		this.petAge = petAge;
		this.gender = gender;
		this.price = price;
		this.petRescue = petRescue;
		this.status = status;
	}

	
	/**
	 * petDetail 상세조회
	 * @param 
	 */
	public Pet(String petName, String petKind, int petAge, String gender, int price, Date petRescue) {
		super();
		this.petName = petName;
		this.petKind = petKind;
		this.petAge = petAge;
		this.gender = gender;
		this.price = price;
		this.petRescue = petRescue;
	}


	
	public String getPetNo() {
		return petNo;
	}

	public void setPetNo(String petNo) {
		this.petNo = petNo;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetKind() {
		return petKind;
	}

	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}

	public int getPetAge() {
		return petAge;
	}

	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getPetRescue() {
		return petRescue;
	}

	public void setPetRescue(Date petRescue) {
		this.petRescue = petRescue;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Pet [petNo=" + petNo + ", petName=" + petName + ", petKind=" + petKind + ", petAge=" + petAge
				+ ", gender=" + gender + ", price=" + price + ", petRescue=" + petRescue + ", status=" + status + "]";
	}
	
}
