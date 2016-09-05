package beans;

import javax.servlet.http.Part;

public class SeekHelp {
	private String firstName;
	private String lastName;
	private String city;
	private String country;
	private Part image;
	private String firstName1;
	private String lastName1;
	private String contact;
	public SeekHelp(String firstN, String lastN, String city, String coun, Part p, String fn, String ln, String contact2) {
		this.firstName=firstN;
		this.lastName=lastN;
		this.city=city;
		this.country=coun;
		this.image=p;
		this.firstName1=fn;
		this.lastName1=ln;
		this.contact=contact2;
		
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Part getImage() {
		return image;
	}
	public void setImage(Part image) {
		this.image = image;
	}
	public String getFirstName1() {
		return firstName1;
	}
	public void setFirstName1(String firstName1) {
		this.firstName1 = firstName1;
	}
	public String getLastName1() {
		return lastName1;
	}
	public void setLastName1(String lastName1) {
		this.lastName1 = lastName1;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	
	
	
	
	
}
