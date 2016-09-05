package beans;

public class ContactUs {
	@Override
	public String toString() {
		return "ContactUs [fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", email=" + email + ", text="
				+ text + "]";
	}
	String fname;
	String lname;
	String phone;
	String email;
	String text;
	public ContactUs(String fname2, String lname2, String phone2, String email2, String text2) {
		this.fname=fname2;
		lname=lname2;
		phone=phone2;
		email=email2;
		text=text2;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
	
}
