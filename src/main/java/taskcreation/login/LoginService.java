package taskcreation.login;

public class LoginService {
	
	public boolean validateUser(String user,String password) {
		if(user.equals("Manu") && password.equals("dhruvi")) {
			return true;	
		}else {
			return false;
		}
		
	}

}
