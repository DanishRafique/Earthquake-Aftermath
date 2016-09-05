package beans;

public class Volunteer {
	
	private String firstName;
	private String lastName;
	private String city;
	private String country;
	private Integer area;
	private Integer num;
	private String email;
	public Volunteer(String fname, String lname, String city2, String country2, Integer area2,Integer num2, String email2) {
		this.firstName=fname;
		this.lastName=lname;
		this.city=city2;
		this.country=country2;
		this.area=area2;
		this.num=num2;
		this.email=email2;
				
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
	public Integer area() {
		return area;
	}
	public void setarea(Integer area) {
		this.area = area;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getnum() {
		return num;
	}

	public void setnum(Integer num) {
		this.num = num;
	}
	


	
}
