package erp.hrms.beans;

public class LeaveRequestBean {

	private int empLeaveReqID;
	private int reqEmpID;
	private String leaveFile;
	private String leaveType;
	private String leaveStart;
	private String leaveEnd;
	private int leaveDays;
	private String leaveReason;
	private String leaveRemarks;
	private String leaveStatus;
	
	private int empID;
	private String empFName;
	private String empMName;
	private String empLName;
	
	private int leaveID;
	private String leaveName;
	
	// tbl_emp_leave LEAVE BALANCE
	private int balID;
	private int balEmpID;
	private int balLeaveID;
	private String balLeaveName;
	private String balance;
	
	// LEAVE REQUEST
	public int getEmpLeaveReqID() {
		return empLeaveReqID;
	}
	public void setEmpLeaveReqID(int empLeaveReqID) {
		this.empLeaveReqID = empLeaveReqID;
	}
	public int getReqEmpID() {
		return reqEmpID;
	}
	public void setReqEmpID(int reqEmpID) {
		this.reqEmpID = reqEmpID;
	}
	public String getLeaveFile() {
		return leaveFile;
	}
	public void setLeaveFile(String leaveFile) {
		this.leaveFile = leaveFile;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getLeaveStart() {
		return leaveStart;
	}
	public void setLeaveStart(String leaveStart) {
		this.leaveStart = leaveStart;
	}
	public String getLeaveEnd() {
		return leaveEnd;
	}
	public void setLeaveEnd(String leaveEnd) {
		this.leaveEnd = leaveEnd;
	}
	public int getLeaveDays() {
		return leaveDays;
	}
	public void setLeaveDays(int leaveDays) {
		this.leaveDays = leaveDays;
	}
	public String getLeaveReason() {
		return leaveReason;
	}
	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}
	public String getLeaveRemarks() {
		return leaveRemarks;
	}
	public void setLeaveRemarks(String leaveRemarks) {
		this.leaveRemarks = leaveRemarks;
	}
	public String getLeaveStatus() {
		return leaveStatus;
	}
	public void setLeaveStatus(String leaveStatus) {
		this.leaveStatus = leaveStatus;
	}
	
	
	// EMPLOYEE 

	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpFName() {
		return empFName;
	}
	public void setEmpFName(String empFName) {
		this.empFName = empFName;
	}
	public String getEmpMName() {
		return empMName;
	}
	public void setEmpMName(String empMName) {
		this.empMName = empMName;
	}
	public String getEmpLName() {
		return empLName;
	}
	public void setEmpLName(String empLName) {
		this.empLName = empLName;
	}
	
	
	// LEAVE TYPE
	public int getLeaveID() {
		return leaveID;
	}
	public void setLeaveID(int leaveID) {
		this.leaveID = leaveID;
	}
	public String getLeaveName() {
		return leaveName;
	}
	public void setLeaveName(String leaveName) {
		this.leaveName = leaveName;
	}

	// LEAVE BALANCE
	
	public int getBalID() {
		return balID;
	}
	public void setBalID(int balID) {
		this.balID = balID;
	}
	public int getBalEmpID() {
		return balEmpID;
	}
	public void setBalEmpID(int balEmpID) {
		this.balEmpID = balEmpID;
	}
	public int getBalLeaveID() {
		return balLeaveID;
	}
	public void setBalLeaveID(int balLeaveID) {
		this.balLeaveID = balLeaveID;
	}
	public String getBalLeaveName() {
		return balLeaveName;
	}
	public void setBalLeaveName(String balLeaveName) {
		this.balLeaveName = balLeaveName;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}


}
