
public class Problem2 {
	public static void main(String[] args) {
		int Sum = 0;
		int j = 1;
		int k = 2;
		while (j <= 4000000) {
			if (j % 2 == 0) {
				Sum = Sum + j;
			}
			System.out.println("" + j);

			int newK = j + k;
			j = k;
			k = newK;
		}

		System.out.println("" + Sum + " Max "+Integer.MAX_VALUE);
	}
}
