
public class CustomProject {
	public static void main(String[] args) {
		int Sum = 0;
		for (int i = 0; i < 1001; i++) {
			if (isEven(i)) {

				int number = i;
				Sum = Sum + i;
				System.out.println("" + Sum);
			}
		}
	}

	public static boolean isEven(int evenNumber) {
		if (evenNumber % 2 == 0) {
			return true;
		}

		else {
			return false;
		}
	}
}
