package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.saeyan.dto.EmployeeVO;

import util.DBManager;

public class EmployeeDAO {
	private EmployeeDAO() {}
	
	private static EmployeeDAO instance = new EmployeeDAO();
	
	public static EmployeeDAO getInstance() {
		return instance;
	}
	
	public List<EmployeeVO> selectAllBoard() {
		String sql = "select * from employees";
		
		List<EmployeeVO> list = new ArrayList<EmployeeVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				EmployeeVO bVo = new EmployeeVO();
				bVo.setId(rs.getString("id"));
				bVo.setPass(rs.getString("pass"));
				bVo.setName(rs.getString("name"));
				bVo.setLev(rs.getString("lev"));
				bVo.setEnter(rs.getTimestamp("enter"));
				bVo.setGender(rs.getInt("gender"));
				bVo.setPhone(rs.getString("phone"));
				list.add(bVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeConnection(conn, pstmt, rs);
		}
		return list;
	}

	public void insertBoard(EmployeeVO bVo) {
		String sql = "insert into employees(id, pass, name, lev, "
				+ "gender, phone) values("
				+ "?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getId());
			pstmt.setString(2, bVo.getPass());
			pstmt.setString(3, bVo.getName());
			pstmt.setString(4, bVo.getLev());
			pstmt.setInt(5, bVo.getGender());
			pstmt.setString(6, bVo.getPhone());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}

	public EmployeeVO selectOneBoardById(String id) {
		String sql = "select * from employees where id = ?";
		EmployeeVO bVo = new EmployeeVO();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bVo.setId(rs.getString("id"));
				bVo.setPass(rs.getString("pass"));
				bVo.setName(rs.getString("name"));
				bVo.setLev(rs.getString("lev"));
				bVo.setEnter(rs.getTimestamp("enter"));
				bVo.setGender(rs.getInt("gender"));
				bVo.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeConnection(conn, pstmt, rs);
		}
		return bVo;
	}

	public void updateBoard(EmployeeVO bVo) {
		String sql = "update employees set name=?, pass=?, "
				+ "lev=?, gender=?, phone=? where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getPass());
			pstmt.setString(3, bVo.getLev());
			pstmt.setInt(4, bVo.getGender());
			pstmt.setString(5, bVo.getPhone());
			pstmt.setString(6, bVo.getId());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}

	public void deleteBoard(String id) {
		String sql = "delete employees where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeConnection(conn, pstmt);
		}
	}
}
