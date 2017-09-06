public class Math {
	public static Integer subtraction(Integer a, Integer b) {
		return a-b;
	}
	public static Integer addition(Integer a, Integer b) {
		return a+b;
	}
	public static void main (String[] args) {
		Integer a = Integer.valueOf(args[0]);
		String action = args[1];
		Integer b = Integer.valueOf(args[2]);
		Integer r;
		switch (action) {
			case "-":
				r = subtraction(a,b);
				System.out.printf("Result: %d\n", r);
				break;
			case "+":
				r = addition(a,b);
				System.out.printf("Result: %d\n", r);
				break;
			default:
				r = null;
				System.out.printf("Unknown operator '%s'!\n", action);
				break;
		}

	}
}
