import java.io.IOException;

public class RocketshipCountdown {

	public static void main(String[] args) {
		
		for(int i=1;i>0;i=i-1){
			try {
				Runtime.getRuntime().exec("say "+i).waitFor();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(i==1){
				try {
					Runtime.getRuntime().exec("say BLASTOFF");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
	}
}
