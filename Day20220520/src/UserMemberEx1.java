interface Printable {
	void print();
}

class Papers {
	private String con;
	public Papers(String s) { con = s; }
	public Printable getPrinter() { return new Printer(); }
	
	private class Printer implements Printable {
		
		public void print() {
			System.out.println("흑백 : "  + con);
		}
	}
	private class Printer2 implements Printable {
		
		public void print() {
			System.out.println("컬러 : " + con);
		}
	}
}

public class UserMemberEx1 {
	public static void main(String[] args) {
		Papers p = new Papers("message java!!");
		Printable prn = p.getPrinter();
		prn.print();
	}
}
