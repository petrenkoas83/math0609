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
		switch (action) {
			case "-":
				System.out.printf("Result: %d\n", subtraction(a,b));
				break;
			case "+":
				System.out.printf("Result: %d\n", addition(a,b));
				break;
			default:
				System.out.printf("Unknown operator '%s'!\n", action);
				break;
		}

	}
}
