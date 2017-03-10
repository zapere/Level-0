import java.math.BigInteger;

public class numberProduct {
	public static void main(String[] args) {
		BigInteger product = new BigInteger("1");
		for (int i = 1; i < 1000; i++) {
			if (isDivisableBy7(i)) {
				product = product.multiply(new BigInteger("" + i));

				System.out.println("" + product);
			}
		}
	}

	public static boolean isDivisableBy7(long n) {
		return n % 7 == 0;
	}

}
