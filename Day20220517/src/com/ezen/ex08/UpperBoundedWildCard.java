package com.ezen.ex08;

class Box<T> {
	protected T ob;
	
	public void setOb(T o) {
		ob = o;
	}
	
	public T getOb() {
		return ob;
	}
	
	@Override
	public String toString() {
		return ob.toString();
	}
}

class UnBoxer {
	
	public static void peekBox(Box<? extends Number> box) {
		System.out.println(box);
	}
}

public class UpperBoundedWildCard {

	public static void main(String[] args) {
		Box<Integer> box = new Box<>();
		box.setOb(100);
		UnBoxer.peekBox(box);
	}

}
