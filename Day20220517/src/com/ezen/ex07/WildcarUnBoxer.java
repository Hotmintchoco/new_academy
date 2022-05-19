package com.ezen.ex07;

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

class Toy {
	@Override
	public String toString() {
		return "I am Toy";
	}
}

class UnBoxer {
	public static void outBox(Box<? extends Toy> box) {
		Toy t = box.getOb();
		System.out.println(t);
//		box.setOb(t);
	}
	
	public static void peekBox(Box<?> box) {
		System.out.println(box);
	}
}

public class WildcarUnBoxer {

	public static void main(String[] args) {
		Box<String> box = new Box<>();
		box.setOb("apple");
		UnBoxer.peekBox(box);
	}

}
