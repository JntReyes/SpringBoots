package boots.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity (name="films")
public class Film implements Serializable {

	@Id @GeneratedValue (strategy=GenerationType.IDENTITY)
	private int id;
	@Column (length=50)
	private String title;
	@Column (length=50)
	private String description;
	@Column (length=50)
	private String language;
	@Column (length=50, name="rental_duration")
	private String rentalDuration;
	@Column (length=50)
	private String length;
	@Column (name="release_year")
	private int releaseYear;
	@Column (name="replacement_cost")
	private int replacementCost;
	@Column (length=50, name="special_features")
	private String specialFeatures;
	@Column (length=50, name="full_text")
	private String fullText;
	
	
	
	public Film(){this("","","","","",0,0,"","");}
	
	public Film(String title, String description, String language, String rentalDuration, String length,
			int releaseYear, int replacementCost, String specialFeatures, String fullText) {
		super();
		this.title = title;
		this.description = description;
		this.language = language;
		this.rentalDuration = rentalDuration;
		this.length = length;
		this.releaseYear = releaseYear;
		this.replacementCost = replacementCost;
		this.specialFeatures = specialFeatures;
		this.fullText = fullText;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getRentalDuration() {
		return rentalDuration;
	}
	public void setRentalDuration(String rentalDuration) {
		this.rentalDuration = rentalDuration;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public int getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}
	public int getReplacementCost() {
		return replacementCost;
	}
	public void setReplacementCost(int replacementCost) {
		this.replacementCost = replacementCost;
	}
	public String getSpecialFeatures() {
		return specialFeatures;
	}
	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}
	public String getFullText() {
		return fullText;
	}
	public void setFullText(String fullText) {
		this.fullText = fullText;
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", title=" + title + ", description=" + description + ", language=" + language
				+ ", rentalDuration=" + rentalDuration + ", length=" + length + ", releaseYear=" + releaseYear
				+ ", replacementCost=" + replacementCost + ", specialFeatures=" + specialFeatures + ", fullText="
				+ fullText + "]";
	}
	
	
	
	
	
	
}