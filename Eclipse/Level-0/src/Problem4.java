
public class Problem4 {
	public static void main(String[] args) {
		int biggestNumber = 0;
		int a = 0;
		int b = 0;
		
		for (int first = 100; first < 1000; first++) {
			for(int second = 100; second < 1000; second++){
				int Product = first*second;
				if(isPalindrome(Product)){
					System.out.println(""+Product);
					if(Product>biggestNumber){
						biggestNumber=Product;
						a=first;
						b=second;
					}
				}
			}
		}
		System.out.println("The biggest palindrome is "+biggestNumber+" which is "+a+" * "+b);
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
