package com.semi.pet.model.dao;

import static com.semi.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.pet.model.vo.Pet;
import com.semi.pet.model.vo.PetInpo;

public class PetDao {

	private Properties prop = new Properties();

	public PetDao() {

		String fileName = PetDao.class.getResource("/sql/pet/pet-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 전체 조회
	 * 
	 * @param conn
	 * @return list
	 */
	public ArrayList<Pet> selectAllPet(Connection conn, PetInpo pi) {

		ArrayList<Pet> list = new ArrayList();

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		String sql = prop.getProperty("selectAllPet");

		try {
			pstmt = conn.prepareStatement(sql);

			String petNo = null;
			String petName = null;
			int petAge = 0;
			String petGender = null;
			
			pstmt.setString(1, petNo);
			pstmt.setString(2, petName);
			pstmt.setInt(3, petAge);
			pstmt.setString(4, petGender);
			
			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Pet(rset.getString("PET_NO"), 
								rset.getString("PET_NAME"), 
								rset.getString("PET_KIND"),
								rset.getInt("PET_AGE"), 
								rset.getString("PET_GENDER"), 
								rset.getInt("PET_PRICE"),
								rset.getDate("PET_RESCUE"), 
								rset.getString("STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/**
	 * 
	 * @param conn
	 * @param petNo
	 * @return p
	 */
	public Pet selectPet(Connection conn, String petNo) {

		Pet p = null;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("selectPet");

		ResultSet rset = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, p.getPetNo());

			rset = pstmt.executeQuery();

			if(rset.next()) {
				p = new Pet(rset.getString("PET_NO"), 
							rset.getString("PET_NAME"), 
							rset.getString("PET_KIND"),
							rset.getInt("PET_AGE"), 
							rset.getString("PET_GENDER"), 
							rset.getInt("PET_PRICE"),
							rset.getDate("PET_RESCUE"), 
							rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public int insertPet(Connection conn, Pet p) {

		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertPet");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, p.getPetNo());
			pstmt.setString(2, p.getPetName());
			pstmt.setString(3, p.getPetKind());
			pstmt.setInt(4, p.getPetAge());
			pstmt.setString(5, p.getGender());
			pstmt.setInt(6, p.getPrice());
			pstmt.setDate(7, p.getPetRescue());
			pstmt.setString(8, p.getStatus());

			result = pstmt.executeUpdate();
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updatePet(Connection conn, Pet p) {

		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updatePet");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, p.getPetNo());
			pstmt.setString(2, p.getPetName());
			pstmt.setString(3, p.getPetKind());
			pstmt.setInt(4, p.getPetAge());
			pstmt.setString(5, p.getGender());
			pstmt.setInt(6, p.getPrice());
			pstmt.setDate(7, p.getPetRescue());
			pstmt.setString(8, p.getStatus());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deletePet(Connection conn, String petNo) {
		
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("deletePet");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, petNo);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
