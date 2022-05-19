
class Apples {
	@Override
	public String toString() {
		return "apple";
	}
}

class Orange {
	@Override
	public String toString() {
		return "orange";
	}
}

class Boxs {
	private Object ob;

	public Object getOb() {
		return ob;
	}

	public void setOb(Object ob) {
		this.ob = ob;
	}
}

public class GenericsEx1 {

	public static void main(String[] args) {
		Boxs aBox = new Boxs();
		Boxs oBox = new Boxs();
		
		aBox.setOb(new Apple());
		oBox.setOb(new Orange());
		
		Apple ap = (Apple)aBox.getOb();
		System.out.println(ap);
		
		Orange or = (Orange)oBox.getOb();
		System.out.println(or);
	}

}
