
public class Problem3 {
	public static void main(String[] args) {
		for (int first = 100; first < 1000; first++) {
			for(int second = 100; second < 1000; second++){
				int Product = first*second;
				if(isPalindrome(Product)){
					System.out.println(""+Product);
				}
			}
		}
	}

	public static boolean isPalindrome(int n) {
		String s = Integer.toString(n);

		for (int j = 0; j < s.length() / 2; j++) {
			if (s.charAt(j) != s.charAt(s.length() - 1 - j)) {
				return false;
			}

		}
		return true;
	}
}
