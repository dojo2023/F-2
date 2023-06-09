package model;
import java.io.Serializable;

public class Idpw implements Serializable {
	private String id;	// ID
	private String pw;	// PW
	private String answer;

	public Idpw(String id, String pw, String answer) {
		this.id = id;
		this.pw = pw;
		this.answer = answer;
	}

	public Idpw() {
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
