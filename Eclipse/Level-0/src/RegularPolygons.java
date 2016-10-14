import org.jointheleague.graphical.robot.Robot;
import org.teachingextensions.logo.Colors;

public class RegularPolygons {
	public static void main(String[] args) {
		Robot robot = new Robot();
		robot.setSpeed(100);
		robot.moveTo(600,512);
		robot.penDown();
		robot.setPenColor(Colors.getRandomColor());
		drawShape(robot,600,500,5,300);
		robot.turn(-90);
		robot.move(-200);
		drawShape(robot,600,500,4,300);
		drawShape(robot,600,500,4,300);
		drawShape(robot,600,500,4,300);
		drawShape(robot,600,500,4,300);
		drawShape(robot,600,500,4,300);
		drawShape(robot,600,500,4,300);


	}

	

	public static double getAngle(int sides) {
		double total = sides * 180 - 360;
		double angle = total / sides;
		return angle;
	}

	public static void drawShape(Robot robot, int x, int y, int sides, int length) {
		robot.penUp();
		robot.penDown();
		robot.setPenColor(Colors.getRandomColor());
		int sides2 = 3;
		double angle = getAngle(sides);
		System.out.println(angle);
		for (int i = 0; i < sides; i = i + 1) {
			robot.setPenColor(Colors.getRandomColor());
			robot.move(length);
			robot.turn((int) (180.0 - angle));

		}
	}

}
