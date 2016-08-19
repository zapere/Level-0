import javax.swing.JOptionPane;

public class ChangeCounter {
	public static void main(String[] args) {

		// String Nickle = JOptionPane.showInputDialog("How many nickles do you have?");
		// int nickel = Integer.parseInt(Nickle);
		// nickel = nickel * 5;
		// JOptionPane.showMessageDialog(null, "you have " + nickel + " cents in Nickles");
		// String Quarter = JOptionPane.showInputDialog("How many quarters do you have?");
		// int quarter = Integer.parseInt(Quarter);
		// quarter = quarter * 25;
		// JOptionPane.showMessageDialog(null, "you have " + quarter + " cents in quarters");
		// String Penny = JOptionPane.showInputDialog("How many pennies do you have?");
		// int penny = Integer.parseInt(Penny);
		// penny = penny * 1;
		// JOptionPane.showMessageDialog(null, "you have " + penny + " cents in pennies");
		// String Dime = JOptionPane.showInputDialog("How many Dimes do you have?");
		// int dime = Integer.parseInt(Dime);
		// dime = dime * 10;
		// JOptionPane.showMessageDialog(null, "you have " + dime + " cents in dimes");
		// int total = nickel + quarter + penny + dime;
		// JOptionPane.showMessageDialog(null, "you have "+total/100+ " dollars in total");

		int nickel2 = showCoinDialog("nickel", 5);
		int quarter2 = showCoinDialog("quarter", 25);
		int penny2 = showCoinDialog("penny",1);
		int dime2 = showCoinDialog("dime",10);
		float total2 = dime2+penny2+quarter2+nickel2;
		JOptionPane.showMessageDialog(null, "you have "+total2/100+ " dollars in total");
	}

	public static int showCoinDialog(String coin, int valueInCents) {
		String count = JOptionPane.showInputDialog("How many " + coin + "s do you have?");
		int value = Integer.parseInt(count);
		value = value * valueInCents;
		JOptionPane.showMessageDialog(null, "you have " + value + " cents in " + coin + "s");
		return value;
	}

	
	
}
