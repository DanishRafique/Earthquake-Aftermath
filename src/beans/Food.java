package beans;

public class Food {
	private String region;
	private String rice;
	private String wheat;
	private String water;
	private String other;
	public Food(String region, String rice, String wheat, String water, String other) {
		super();
		this.region = region;
		this.rice = rice;
		this.wheat = wheat;
		this.water = water;
		this.other = other;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getRice() {
		return rice;
	}
	public void setRice(String rice) {
		this.rice = rice;
	}
	public String getWheat() {
		return wheat;
	}
	public void setWheat(String wheat) {
		this.wheat = wheat;
	}
	public String getWater() {
		return water;
	}
	public void setWater(String water) {
		this.water = water;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
}
