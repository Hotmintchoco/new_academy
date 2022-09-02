package DBPKG;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClassDAO {

	PreparedStatement ps = null;
	
	public static Connection getConnection() throws Exception {
		 Class.forName("oracle.jdbc.OracleDriver");
		 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@"
		 		+ "//localhost:1521/xe","system","1234");
		 return con;
	}
	
	public void disConnction() {
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 과정 리스트 출력
	public List<ClassVO> getClassList() {
		List<ClassVO> list = new ArrayList<ClassVO>();
		String sql = "select * from TBL_CLASS_202201 order by class_seq";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ClassVO vo = new ClassVO();
				
				vo.setClassSeq(rs.getInt(1));
				vo.setRegistMonth(rs.getString(2));
				vo.setcNo(rs.getString(3));
				vo.setClassArea(rs.getString(4));
				vo.setTution(rs.getInt(5));
				vo.setTeacherCode(rs.getString(6));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return list;
	}
	
	// 수강생 리스트 출력
	public List<MemberVO> getMemberList() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		String sql = "select * from TBL_MEMBER_202201 order by member_seq";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				MemberVO vo = new MemberVO();
				
				vo.setMemberSeq(rs.getInt(1));
				vo.setNo(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setPhone(rs.getString(4));
				vo.setAddress(rs.getString(5));
				vo.setRegistDate(rs.getString(6));
				vo.setType(rs.getString(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return list;
	}
	
	//과정 마지막 순번 출력
	public int lastSeq() {
		int seq = 0;
		String sql = "select max(class_seq) from tbl_class_202201";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			
			seq = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return seq;
	}
	
	//수강생 마지막 순번 출력
	public int lastMemberSeq() {
		int seq = 0;
		String sql = "select max(MEMBER_SEQ) from TBL_MEMBER_202201";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			
			seq = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return seq;
	}
	
	public void insertClass(ClassVO vo) {
		String sql = "insert into TBL_CLASS_202201"
				+ "(class_seq, regist_month, c_no, class_area, tution, teacher_code)"
				+ "values(?, ?, ?, ?, ?, ?)";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, vo.getClassSeq());
			ps.setString(2, vo.getRegistMonth());
			ps.setString(3, vo.getcNo());
			ps.setString(4, vo.getClassArea());
			ps.setInt(5, vo.getTution());
			ps.setString(6, vo.getTeacherCode());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
	
	public void insertMember(MemberVO vo) {
		String sql = "insert into TBL_MEMBER_202201"
				+ "(MEMBER_SEQ, C_NO, C_NAME, PHONE, ADDRESS, REGIST_DATE, C_TYPE)"
				+ "values(?, ?, ?, ?, ?, ?, ?)";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, vo.getMemberSeq());
			ps.setString(2, vo.getNo());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getPhone());
			ps.setString(5, vo.getAddress());
			ps.setString(6, vo.getRegistDate());
			ps.setString(7, vo.getType());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
	
	
	// 과정 리스트 출력
	public DetailClassVO getDetail(String no) {
		DetailClassVO detail = new DetailClassVO();
		String sql = "select t1.regist_month, t1.c_no, t1.class_area, t1.tution,"
				+ " t2.teacher_code, t2.teacher_name, t2.class_name"
				+ " from tbl_class_202201 t1, tbl_teacher_202201 t2"
				+ " where t1.teacher_code = t2.teacher_code and c_no=?"
				+ " GROUP BY t1.regist_month, t1.c_no, t1.class_area, t1.tution, "
				+ " t2.teacher_code, t2.teacher_name, t2.class_name";
		try {
			System.out.println(no);
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, no);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getString(1));
				detail.setRegistMonth(rs.getString(1));
				detail.setcNo(rs.getString(2));
				detail.setClassArea(rs.getString(3));
				detail.setTution(rs.getInt(4));
				detail.setTeacherCode(rs.getString(5));
				detail.setTeacherName(rs.getString(6));
				detail.setClassName(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return detail;
	}
	
	public DetailMemberVO getDetailMember(int no) {
		DetailMemberVO detail = new DetailMemberVO();
		String sql = "select t1.MEMBER_SEQ, t1.C_NAME, t1.phone, t1.address, t1.REGIST_DATE, t1.C_TYPE, t2.class_name, t2.teacher_name, t1.C_NO "
				+ "from tbl_member_202201 t1, tbl_teacher_202201 t2, tbl_class_202201 t3 "
				+ "where t1.C_NO = t3.C_NO "
				+ "and t2.teacher_code = t3.teacher_code "
				+ "and t1.MEMBER_SEQ = ? "
				+ "group by t1.MEMBER_SEQ, t1.C_NAME, t1.phone, t1.address, t1.REGIST_DATE, t1.C_TYPE, "
				+ "t2.class_name, t2.teacher_name, t1.C_NO";
		try {
			System.out.println(no);
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				detail.setNo(rs.getInt(1));
				detail.setMemberName(rs.getString(2));
				detail.setPhone(rs.getString(3));
				detail.setAddress(rs.getString(4));
				detail.setRegistDate(rs.getString(5));
				detail.setType(rs.getString(6));
				detail.setClassName(rs.getString(7));
				detail.setTeacherName(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return detail;
	}
		
	// 과정 정보 출력
	public ClassVO get(int seq) {
		ClassVO vo = new ClassVO();
		String sql = "select * from TBL_CLASS_202201 where class_seq = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, seq);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				vo.setClassSeq(rs.getInt(1));
				vo.setRegistMonth(rs.getString(2));
				vo.setcNo(rs.getString(3));
				vo.setClassArea(rs.getString(4));
				vo.setTution(rs.getInt(5));
				vo.setTeacherCode(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return vo;
	}
	
	public MemberVO getMember(int seq) {
		MemberVO vo = new MemberVO();
		String sql = "select * from TBL_MEMBER_202201 where MEMBER_SEQ = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, seq);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				vo.setMemberSeq(rs.getInt(1));
				vo.setNo(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setPhone(rs.getString(4));
				vo.setAddress(rs.getString(5));
				vo.setRegistDate(rs.getString(6));
				vo.setType(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
		return vo;
	}
	
	
	public void updateClass(ClassVO vo) {
		String sql = "update TBL_CLASS_202201 set regist_month=?, c_no=?, class_area=?, tution=?, teacher_code=? "
				+ "where class_seq = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, vo.getRegistMonth());
			ps.setString(2, vo.getcNo());
			ps.setString(3, vo.getClassArea());
			ps.setInt(4, vo.getTution());
			ps.setString(5, vo.getTeacherCode());
			ps.setInt(6, vo.getClassSeq());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
	
	public void updateMember(MemberVO vo) {
		String sql = "update TBL_MEMBER_202201 set c_no=?, C_NAME=?, PHONE=?, ADDRESS=?, REGIST_DATE=?, C_TYPE=?  "
				+ "where MEMBER_SEQ = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, vo.getNo());
			ps.setString(2, vo.getName());
			ps.setString(3, vo.getPhone());
			ps.setString(4, vo.getAddress());
			ps.setString(5, vo.getRegistDate());
			ps.setString(6, vo.getType());
			ps.setInt(7, vo.getMemberSeq());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
	
	public void deleteClass(int seq) {
		String sql = "delete tbl_class_202201 where class_seq = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, seq);
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
	
	public void deleteMember(int seq) {
		String sql = "delete TBL_MEMBER_202201 where MEMBER_SEQ = ?";
		try {
			Connection conn = getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, seq);
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnction();
		}
	}
		
}
