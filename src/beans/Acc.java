package beans;

public class Acc {
	private String region;
	private String clothes;
	private String blanket;
	private String tent;
	private String other;
	public Acc(String region, String clothes, String blanket, String tent, String other) {
		super();
		this.region = region;
		this.clothes = clothes;
		this.blanket = blanket;
		this.tent = tent;
		this.other = other;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getClothes() {
		return clothes;
	}
	public void setClothes(String clothes) {
		this.clothes = clothes;
	}
	public String getBlanket() {
		return blanket;
	}
	public void setBlanket(String blanket) {
		this.blanket = blanket;
	}
	public String getTent() {
		return tent;
	}
	public void setTent(String tent) {
		this.tent = tent;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
}
