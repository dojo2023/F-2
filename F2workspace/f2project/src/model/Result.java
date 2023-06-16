package model;
import java.io.Serializable;

public class Result implements Serializable {
	private String title;		// タイトル
	private String message;	// メッセージ
	private String backTo;		// 戻り先
	private String backTo_name;		// 戻り先の名前

	public Result() {
		this(null, null, null, null);
	}

	public Result(String title, String message, String backTo, String backTo_name) {
		this.title = title;
		this.message = message;
		this.backTo = backTo;
		this.backTo_name = backTo_name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getBackTo() {
		return backTo;
	}

	public void setBackTo(String backTo) {
		this.backTo = backTo;
	}

	public String getBackTo_name() {
		return backTo_name;
	}

	public void setBackTo_name(String backTo_name) {
		this.backTo_name = backTo_name;
	}
}
