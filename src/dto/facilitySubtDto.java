package dto;

public class facilitySubtDto {
	private String facilitySubtName;
	private int facilityTitleIdx;
	public facilitySubtDto(String facilitySubtName, int facilityTitleIdx) {
		super();
		this.facilitySubtName = facilitySubtName;
		this.facilityTitleIdx = facilityTitleIdx;
	}
	public String getFacilitySubtName() {
		return facilitySubtName;
	}
	public void setFacilitySubtName(String facilitySubtName) {
		this.facilitySubtName = facilitySubtName;
	}
	public int getFacilityTitleIdx() {
		return facilityTitleIdx;
	}
	public void setFacilityTitleIdx(int facilityTitleIdx) {
		this.facilityTitleIdx = facilityTitleIdx;
	}
	
}