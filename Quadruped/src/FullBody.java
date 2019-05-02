import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

public class FullBody {
	
	private Image bodyImage;
	private Image legTL, legTR, legBL, legBR; // In relation to the robot body
	private Body body;
	private Legs leg1, leg2, leg3, leg4;
	private int width, height;
	
	public FullBody(Simulator simulator) {
		
		int bodyWidth = 0, bodyHeight = 0;
		
		width = simulator.getWidth();
		height = simulator.getHeight();
		
		bodyImage = (new ImageIcon("body.png")).getImage();
		legTL = (new ImageIcon("leg1.png")).getImage();
		legTR = (new ImageIcon("leg2.png")).getImage();
		legBL = (new ImageIcon("leg3.png")).getImage();
		legBR = (new ImageIcon("leg4.png")).getImage();
		
//		try {
//			BufferedImage bufferedImage = ImageIO.read(new File("body.png"));
//			
//			bodyWidth = bufferedImage.getWidth();
//			System.out.print((width/2) + "");
//			bodyHeight = bufferedImage.getHeight();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
		body = new Body(width/2, height/2, bodyImage);
		leg1 = new Legs(width/2 + 30, height/2 + 110, legTL);
		leg2 = new Legs(width/2 + 30, height/2 + 110, legTR);
		leg3 = new Legs(width/2 + 30, height/2 + 110, legBL);
		leg4 = new Legs(width/2 + 30, height/2 + 110, legBR);
	}
	
	public void draw(Graphics2D g) {
		body.draw(g);
		leg1.draw(g);
		leg2.draw(g);
		leg3.draw(g);
		leg4.draw(g);
	}
}
