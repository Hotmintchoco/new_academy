package com.ezen.ex05;

interface Calculate {
	int cal(int n1, int n2);
}

class Cal implements Calculate {
	@Override
	public int cal(int n1, int n2) {
		return n1 * n2;
	}
}

public class Lambda4 {

	public static void main(String[] args) {
		Calculate c;
		c = (n1, n2) -> n1 * n2;
		System.out.println(c.cal(5, 9));
		
		Calculate ca = new Cal();
		System.out.println(ca.cal(5, 9));
	}

}
