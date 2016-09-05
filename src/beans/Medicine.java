package beans;

public class Medicine {
	private String region;
	private String pain;
	private String anti;
	private String band;
	private String other;
		public Medicine(String region2, String pain2, String anti2, String band2, String other2) {
		this.region=region2;
		this.pain=pain;
		this.anti=anti2;
		this.band=band2;
		this.other=other2;
		
	}
		public String getRegion() {
			return region;
		}
		public void setRegion(String region) {
			this.region = region;
		}
		public String getPain() {
			return pain;
		}
		public void setPain(String pain) {
			this.pain = pain;
		}
		public String getAnti() {
			return anti;
		}
		public void setAnti(String anti) {
			this.anti = anti;
		}
		public String getBand() {
			return band;
		}
		public void setBand(String band) {
			this.band = band;
		}
		public String getOther() {
			return other;
		}
		public void setOther(String other) {
			this.other = other;
		}
		
		
		
}
