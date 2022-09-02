package DBPKG;

/*
 CREATE TABLE TBL_MEMBER_202201 
   (   MEMBER_SEQ NUMBER(4,0), 
   C_NO CHAR(5 BYTE), 
   C_NAME VARCHAR2(12 BYTE), 
   PHONE VARCHAR2(11 BYTE), 
   ADDRESS VARCHAR2(50 BYTE), 
   REGIST_DATE CHAR(8 BYTE), 
   C_TYPE VARCHAR2(12 BYTE)
   );
 */

public class MemberVO {
	private int memberSeq;
	private String no, name, phone, address, registDate, type;
	
	
	public int getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
