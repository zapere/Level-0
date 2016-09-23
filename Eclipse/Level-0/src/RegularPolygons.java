import org.jointheleague.graphical.robot.Robot;
import org.teachingextensions.logo.Colors;

public class RegularPolygons {
	public static void main(String[] args) {
		Robot robot = new Robot();
		robot.setSpeed(100);
		robot.moveTo(500, 500);
		robot.penDown();
		robot.setPenColor(Colors.getRandomColor());
		int sides = 4;
		int sides2 = 3;
		float angle = getAngle(sides);
		System.out.println(angle);
		for(int i=0;i<sides;i=i+1){
			robot.setPenColor(Colors.getRandomColor());
			robot.move(100);
			robot.turn((int) (180-angle));
			
		}
		robot.turn(90);
		robot.move(50);
		robot.turn(90);
		robot.penUp();
		robot.move(100);
		robot.penDown();
		for(int i=0;i<sides2;i=i+1){
			robot.setRandomPenColor();
			robot.move(100);
			robot.turn((int) (180-getAngle(sides2)));
		}
//		robot.turn(-90);
//		robot.move(300);
		robot.moveTo(00, 00);
		

	}
	public static float getAngle(int sides){
		float total = sides*180-360;
		float angle = total/sides;
		return angle;
	}
	public static void drawShape(Robot robot, int x,int y,int sides,int length){
		robot.moveTo(500, 500);
		}
	
}
