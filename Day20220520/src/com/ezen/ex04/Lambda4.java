package com.ezen.ex04;

interface Printable4 { void print(String s); }

public class Lambda4 {

	public static void main(String[] args) {
		Printable3 prn;
		prn = s -> System.out.println(s); 
		prn.print("java is lambda5!!");
	}

}
