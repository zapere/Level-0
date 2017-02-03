import javax.swing.JOptionPane;

public class Problem1 {
	public static void main(String[] args) {
		int Sum = 0;
		for (int i = 0; i < 1000; i = i + 1) {
			if (i%3==0||i%5==0) {
				Sum = Sum + i;
			}
		}
		System.out.println("" + Sum);
	}
}
