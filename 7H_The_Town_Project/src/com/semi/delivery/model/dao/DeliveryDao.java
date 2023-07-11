package com.semi.delivery.model.dao;

import static com.semi.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;


import com.semi.delivery.model.vo.Delivery;
import com.semi.pet.model.dao.PetDao;

public class DeliveryDao {
	private Properties prop = new Properties();

	public DeliveryDao() {

		String fileName = PetDao.class.getResource("/sql/pet/pet-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Delivery selectDelivery(Connection conn, int delNo) {

		Delivery d = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectDelivery");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, delNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				d = new Delivery(rset.getInt("DEL_NO"), 
						rset.getString("DEL_STATUS"), 
						rset.getString("CUR_SPOT"),
						rset.getInt("PET_NO"), 
						rset.getInt("USER_NO"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return d;
	}
	
	public int insertDelivery(Connection conn, Delivery d) {

		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertDelivery");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, d.getDelNo());
			pstmt.setString(2, d.getDelStatus());
			pstmt.setString(3, d.getCurSpot());
			pstmt.setInt(4, d.getPetNo());
			pstmt.setInt(5, d.getUserNo());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	public int updateDelivery(Connection conn, Delivery d) {

		int result = 0;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updateDelivery");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, d.getDelNo());
			pstmt.setString(2, d.getDelStatus());
			pstmt.setString(3, d.getCurSpot());
			pstmt.setInt(4, d.getUserNo());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteDelivery(Connection conn, int delNo) {

		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("deleteDelivery");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, delNo);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}
	
}
