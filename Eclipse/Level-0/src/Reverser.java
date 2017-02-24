import javax.swing.JOptionPane;

public class Reverser {
	public static void main(String[] args) {
		String reverseMe = JOptionPane.showInputDialog(null, "What word do you want to reverse?");
		System.out.println(""+reverse(reverseMe));
		if (isPalindrome(reverseMe)) {
			JOptionPane.showMessageDialog(null, reverseMe + " is a palindrome");		
		} else {
			JOptionPane.showMessageDialog(null, reverseMe + " is not a palindrome");		
		}
	}

	public static String reverse(String number) {
		return new StringBuilder(number).reverse().toString();
	}
	public static Boolean isPalindrome(String s){
		String r = reverse(s);
		if(r.equals(s)){
			return true;
		}
		else{
			return false;
		}
	}
}













