import javax.swing.JOptionPane;

public class FunctionTester {
	public static void main(String[] args) {
		
		show("hi");
		show("what do you want");
		show("i already did what i wanted to do");
		show("and what was that?");
		show("to say hi!");
	}
	static void print(String s)
	{
		System.out.println(s);
	}
	static void show(String s)
	{
		JOptionPane.showMessageDialog(null, s);
	}
}
