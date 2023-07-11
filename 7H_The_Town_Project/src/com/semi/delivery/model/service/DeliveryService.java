package com.semi.delivery.model.service;

import static com.semi.common.JDBCTemplate.*;

import java.sql.Connection;

import com.semi.delivery.model.dao.DeliveryDao;
import com.semi.delivery.model.vo.Delivery;


public class DeliveryService {

	public Delivery selectDelivery(int delNo) {
		Connection conn = getConnection();

		Delivery d = new DeliveryDao().selectDelivery(conn, delNo);

		close(conn);

		return d;
	}

	public int insertDelivery(Delivery d) {
		Connection conn = getConnection();
		
		int result = new DeliveryDao().insertDelivery(conn, d);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int updateDelivery(Delivery d) {
		
		Connection conn = getConnection();
		
		int result = new DeliveryDao().updateDelivery(conn,d);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int deleteDelivery(int delNo) {
		
		Connection conn = getConnection();
		
		int result = new DeliveryDao().deleteDelivery(conn, delNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
