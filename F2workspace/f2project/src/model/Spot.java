package model;
import java.io.Serializable;

public class Spot implements Serializable {
	private String id;
	private String date;
	private String genre;
	private String name;
	private String address;
	private String remarks;
	private String image;

	public Spot(String id, String date, String genre, String name, String address, String remarks, String image) {
		this.id = id;
		this.date = date;
		this.genre = genre;
		this.name = name;
		this.address = address;
		this.remarks = remarks;
		this.image = image;
	}

	public Spot() {
		super();
		this.id = "";
		this.date = "";
		this.genre = "";
		this.name = "";
		this.address = "";
		this.remarks = "";
		this.image = "";
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}