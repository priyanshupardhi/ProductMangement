package pojo;

public class LoginInfo {
      String username;
      String password;
      
     public LoginInfo() {
    	 
     }
      
      public LoginInfo(String username, String password) {
    	  this.password = password;
    	  this.username = username;
      }
      
	@Override
	public String toString() {
		return "LoginInfo [username=" + username + ", password=" + password + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
      
}
