package com.semi.pet.model.service;

import static com.semi.common.JDBCTemplate.close;
import static com.semi.common.JDBCTemplate.commit;
import static com.semi.common.JDBCTemplate.getConnection;
import static com.semi.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.pet.model.dao.PetDao;
import com.semi.pet.model.vo.Pet;
import com.semi.pet.model.vo.PetInpo;

public class PetService {

	/**
	 * pet list 전체조회
	 * @return list
	 */
	public ArrayList<Pet> selectAllPet(PetInpo pi) {

		Connection conn = getConnection();

		ArrayList<Pet> list = new PetDao().selectAllPet(conn,pi);

		close(conn);

		return list;
	}
	
	/**
	 * pet 상세조회
	 * @param petNo
	 * @return p
	 */
	public Pet selectPet(String petNo) {

		Connection conn = getConnection();

		Pet p = new PetDao().selectPet(conn, petNo);

		close(conn);

		return p;
	}

	public int insertPet(Pet p) {

		Connection conn = getConnection();

		int result = new PetDao().insertPet(conn, p);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}

	public int updatePet(Pet p) {

		Connection conn = getConnection();

		int result = new PetDao().updatePet(conn, p);

		Pet updatePet = null;

		if (result > 0) {
			commit(conn);

			updatePet = new PetDao().selectPet(conn, p.getPetNo());
		} else {
			rollback(conn);
		}
		close(conn);

		return result;
	}

	public int deletePet(String petNo) {

		Connection conn = getConnection();

		int result = new PetDao().deletePet(conn, petNo);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);

		return result;
	}
	
}
