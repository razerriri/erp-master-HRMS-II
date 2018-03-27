package erp.hrms.beans;

public class Shift {
	
	private int shiftId;
	private String shiftCode;
	private int gracePeriod;
	private int startTime;
	private int endTime;
	private String sRemarks;
	private String sGraceTime;
	private int schedId;
	
	public int getShiftId() {
		return shiftId;
	}
	public void setShiftId(int shiftId) {
		this.shiftId = shiftId;
	}
	public String getShiftCode() {
		return shiftCode;
	}
	public void setShiftCode(String shiftCode) {
		this.shiftCode = shiftCode;
	}
	public int getGracePeriod() {
		return gracePeriod;
	}
	public void setGracePeriod(int string) {
		this.gracePeriod = string;
	}
	public int getStartTime() {
		return startTime;
	}
	public void setStartTime(int startTime) {
		this.startTime = startTime;
	}
	public int getEndTime() {
		return endTime;
	}
	public void setEndTime(int endTime) {
		this.endTime = endTime;
	}
	public String getsRemarks() {
		return sRemarks;
	}
	public void setsRemarks(String sRemarks) {
		this.sRemarks = sRemarks;
	}
	public int getSchedId() {
		return schedId;
	}
	public void setSchedId(int schedId) {
		this.schedId = schedId;
	}
	public String getsGraceTime() {
		return sGraceTime;
	}
	public void setsGraceTime(String sGraceTime) {
		this.sGraceTime = sGraceTime;
	}

}
