package codingTest;

public class test2 {
	public static void main(String[] args) {
		System.out.println(test2.solution(3, 3));
	}
	
	public static long solution(int a, int b) {
        long answer = 0;
        
        int bInt = a > b ? a : b;
        int sInt = a < b ? a : b;
        
        for(int i=sInt; i<=bInt; i++) {
        	answer += i;
        }
        
        return answer;
    }
}
