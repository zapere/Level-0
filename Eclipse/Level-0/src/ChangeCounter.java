import javax.swing.JOptionPane;

public class ChangeCounter {
	public static void main(String[] args) {
		String Nickle = JOptionPane.showInputDialog("How many nickles do you have?");
		int nickel = Integer.parseInt(Nickle);
		nickel = nickel * 5;
		JOptionPane.showMessageDialog(null, "you have " + nickel + " cents in Nickles");
		String Quarter = JOptionPane.showInputDialog("How many quarters do you have?");
		int quarter = Integer.parseInt(Quarter);
		quarter = quarter * 25;
		JOptionPane.showMessageDialog(null, "you have " + quarter + " cents in quarters");
	}

}
