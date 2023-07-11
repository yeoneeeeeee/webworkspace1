package com.semi.pet.model.vo;

public class PetInpo {
	//이름, 견종, 나이, 성별
	String petNo;
	String petName;
	int petAge;
	String petGender;
	
	public PetInpo() {
		
	}

	public PetInpo(String petNo, String petName, int petAge, String petGender) {
		super();
		this.petNo = petNo;
		this.petName = petName;
		this.petAge = petAge;
		this.petGender = petGender;
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

	public int getPetAge() {
		return petAge;
	}

	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}

	public String getPetGender() {
		return petGender;
	}

	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}

	@Override
	public String toString() {
		return "PetInpo [petNo=" + petNo + ", petName=" + petName + ", petAge=" + petAge + ", petGender=" + petGender
				+ "]";
	}
	
}
