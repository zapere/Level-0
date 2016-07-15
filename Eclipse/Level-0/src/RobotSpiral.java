import org.jointheleague.graphical.robot.Robot;
import org.teachingextensions.logo.Colors;

public class RobotSpiral {
	
	public static void main(String[] args) {
		Robot me = new Robot();
		me.getWindow().setSize(500, 500);
		me.moveTo(250, 250);
		me.penDown();
		me.setPenColor(Colors.getRandomColor());
		me.setPenWidth(5);
		me.setSpeed(1000);
		for (int i = 0; i < 1000; i++) {
			me.move(i);
			me.turn(30);
			me.setPenColor(Colors.getRandomColor());
		}
	}
}
