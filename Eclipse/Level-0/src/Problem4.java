
public class Problem4 {
	public static void main(String[] args) {
		int biggestNumber = 0;
		int a = 0;
		int b = 0;

		for (int first = 100; first < 1000; first++) {
			for (int second = 100; second < 1000; second++) {
				int Product = first * second;
				String s = Integer.toString(Product);
				if (isPalindrome(s)) {
					System.out.println(" " + Product);
					if (Product > biggestNumber) {
						biggestNumber = Product;
						a = first;
						b = second;
					}
				}
			}
		}
		System.out.println("The biggest palindrome is " + biggestNumber + " which is " + a + " * " + b);
	}

	public static String reverse(String number) {
		return new StringBuilder(number).reverse().toString();
	}

	public static Boolean isPalindrome(String s) {
		String r = reverse(s);
		if (r.equals(s)) {
			return true;
		} else {
			return false;
		}
	}
}
