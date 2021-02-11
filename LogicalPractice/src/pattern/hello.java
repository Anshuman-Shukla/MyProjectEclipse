package pattern;

public class hello {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		hi k = new hi();

		//k.hi(10,10);
	}

}

class hi {
	public void h1(int a) {
		System.out.println("parent class");
	}

}

class hey extends hi {
	public void h1(int b) {
		System.out.println("Overloaded method");
	}

	public void h1(int c, int d) {
		System.out.println("Over loading");
	}

}
