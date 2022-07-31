package com.mz.notice.model.service;

import static com.mz.common.JDBCTemplate.close;
import static com.mz.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.mz.notice.model.dao.TosDao;
import com.mz.notice.model.vo.Tos;

public class TosService {
	
	// 서원
	// 관리자 이용약관 조회
	public ArrayList<Tos> selectAdminTosList(){
		Connection conn = getConnection();
		ArrayList<Tos> list = new TosDao().selectAdminTosList(conn);
		close(conn);
		return list;
	}
	

}
