package com.ezen.ex05;

public class MakeThreadEx01 {

	public static void main(String[] args) {
		Runnable task = () -> {
			int n1 = 10;
			int n2 = 20;
			String name = Thread.currentThread().getName();
			
			System.out.println(name + " : " + (n1+n2));
		};
		
		Thread t = new Thread(task);
		t.start();
		System.out.println("End : " + Thread.currentThread().getName());
		
		
	}

}
