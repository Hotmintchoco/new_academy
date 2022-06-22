package buildTest;

public class Calc02 {
	int num1, num2;
	
	public Calc02() {
		this(1, 1);
	}
	
	public Calc02(int x, int y) {
		num1 = x;
		num2 = y;
	}
	
	public int add() {return num1 + num2;}
	public int sub() {return num1 - num2;}
	public int mul() {return num1 * num2;}
	public double div() {return num1 / (double)num2;}
	
	public void getInfo( ) {
		System.out.println("두 정수 : " + num1 + ", " + num2);
		System.out.printf("%d + %d = %d\n", num1, num2, add());
		System.out.printf("%d - %d = %d\n", num1, num2, sub());
		System.out.printf("%d * %d = %d\n", num1, num2, mul());
		System.out.printf("%d / %d = %.2f\n", num1, num2, div());
	}
}
