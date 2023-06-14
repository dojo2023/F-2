package model;
import java.io.Serializable;

public class Spot implements Serializable {
	private String date;
	private String genre;
	private String name;
	private String address;
	private String remarks;

	public Spot(String date, String genre, String name, String address, String remarks) {
		this.date = date;
		this.genre = genre;
		this.name = name;
		this.address = address;
		this.remarks = remarks;
	}

	public Spot() {
		super();
		this.date = "";
		this.genre = "";
		this.name = "";
		this.address = "";
		this.remarks = "";
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

}