package dto;

public class amenitySubtDto {
	private String amenitySubtName;
	private int amenityTitleIdx;
	public amenitySubtDto(String amenitySubtName, int amenityTitleIdx) {
		super();
		this.amenitySubtName = amenitySubtName;
		this.amenityTitleIdx = amenityTitleIdx;
	}
	public String getAmenitySubtName() {
		return amenitySubtName;
	}
	public void setAmenitySubtName(String amenitySubtName) {
		this.amenitySubtName = amenitySubtName;
	}
	public int getAmenityTitleIdx() {
		return amenityTitleIdx;
	}
	public void setAmenityTitleIdx(int amenityTitleIdx) {
		this.amenityTitleIdx = amenityTitleIdx;
	}
	
}