package codingTest;

public class test1 {
	public static void main(String[] args) {
		int[] test = new int[] {5,8,4,0,6,7,9};
		
		System.out.println(solution(test));
	}
	
	public static int solution(int[] numbers) {
        int size = numbers.length;
        int answer = 0;
        	
		for (int i = 0; i <= 9; i++) {
			int tmp = -1;
			for (int j = 0; j < size; j++) {
				if (i == numbers[j]) {
					tmp = 0;
					break;
				}
			}
			if (tmp == -1) {
				answer += i;
			}
		}
        
        return answer;
    }
}
