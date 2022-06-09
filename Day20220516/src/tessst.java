import java.util.ArrayList;
import java.util.List;

public class tessst {

	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		
		list.add("이한호");
		list.add("김정민");
		list.add("윤부영");
		
		for (int i = 0; i < list.size(); i++) {
			String str = list.get(i);
			System.out.println(str);
		}
		
		for(String str : list) {
			System.out.println(str);
		}
	}

}
