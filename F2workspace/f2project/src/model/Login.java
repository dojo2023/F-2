package model;
import java.io.Serializable;

public class Login implements Serializable {
	private String id;	// ID
	private String pw;	// PW
	private String answer;

	public Login(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public Login() {
		this.id = "";
		this.pw = "";
		this.answer = "";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
}