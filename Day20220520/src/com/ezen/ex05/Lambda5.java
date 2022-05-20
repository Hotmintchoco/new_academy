package com.ezen.ex05;

import java.util.Random;

interface Generator {
	int rand();
}

public class Lambda5 {

	public static void main(String[] args) {
		Generator gen = () -> { 
			Random rand = new Random();
			return rand.nextInt(50);
		};
		
		int num = gen.rand();
		System.out.println(num);
	}

}
