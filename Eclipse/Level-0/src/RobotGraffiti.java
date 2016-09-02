import java.awt.KeyboardFocusManager;

import org.teachingextensions.logo.Colors;
import org.teachingextensions.logo.Tortoise;

public class RobotGraffiti {
	public static void main(String[] args) {
		new RobotGraffiti().controlTheTortoise();
	}

	private void controlTheTortoise() {
		Tortoise.getBackgroundWindow().setBackgroundImage("https://s-media-cache-ak0.pinimg.com/736x/c9/29/0c/c9290c6bf5c89347baa65e133ecd733b.jpg");
		Tortoise.penDown();
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.setSpeed(2);
		Tortoise.penUp();
		Tortoise.turn(270);
		Tortoise.move(200);
		Tortoise.turn(-270);
		Tortoise.penDown();
		E();
		L();
		I();
	}

	private void I() {
		Tortoise.penUp();
		Tortoise.turn(90);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(30);
		Tortoise.turn(90);
		Tortoise.penDown();
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(10); 
		Tortoise.penUp();
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(20);
		Tortoise.penDown();
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(75);

	}

	private void L() {
		Tortoise.penUp();
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(30);
		Tortoise.penDown();
		Tortoise.turn(270);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(100);
	}

	private void E() {
		Tortoise.move(100);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.turn(90);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(75);
		Tortoise.turn(180);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(75);
		Tortoise.turn(270);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(50);
		Tortoise.turn(270);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(50);
		Tortoise.turn(180);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(50);
		Tortoise.turn(270);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(50);
		Tortoise.turn(270);
		Tortoise.setPenColor(Colors.getRandomColor());
		Tortoise.move(75);
	}

}
