import java.io.IOException;


import javax.mail.AuthenticationFailedException;



public class Sender {
	
	public static void main(String []args) throws IOException,AuthenticationFailedException  {
		
		
		SendMailWithAttatchment  objSender = new SendMailWithAttatchment();
		
		
		objSender.Send();
	}

}
