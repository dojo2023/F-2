package model;
import java.io.Serializable;

public class Story implements Serializable {
	private String id;
	private String genre;

	public Story(String id, String genre) {
		this.id = id;
		this.genre = genre;
	}

	public Story() {
		super();
		this.id = "";
		this.genre = "";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

}
