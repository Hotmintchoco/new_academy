package com.ezen.ex05;

class Box<T> {
	protected T ob;
	
	public void setOb(T o) {
		ob = o;
	}
	
	public T getOb() {
		return ob;
	}
}

class SteelBox<T> extends Box<T> {
	public SteelBox(T t) { ob = t;}
}

public class MultiTypeParam {
	public static void main(String[] args) {
		Box<Integer> iBox = new SteelBox<>(7979);
		Box<String> sBox = new SteelBox<>("simple");
		
		System.out.println(iBox.getOb());
		System.out.println(sBox.getOb());
	}

}
