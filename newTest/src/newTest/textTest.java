package newTest;

public class textTest {
	public static void main(String[] args) {
		String str = "아무렇게나 길게 쓴 글을 만든다.";
		
		if (str.length() > 5) {
			String s = str.substring(0, 5);
			System.out.println(s + "...");
		}
	}
}
