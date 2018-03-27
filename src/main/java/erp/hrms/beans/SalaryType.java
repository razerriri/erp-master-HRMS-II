package erp.hrms.beans;

public class SalaryType {
	
private int salaryTypeId;
private String salaryTypeName;
private String salaryTypeCode;
private int unitsPerYear;
public int getSalaryTypeId() {
	return salaryTypeId;
}
public void setSalaryTypeId(int salaryTypeId) {
	this.salaryTypeId = salaryTypeId;
}
public String getSalaryTypeName() {
	return salaryTypeName;
}
public void setSalaryTypeName(String salaryTypeName) {
	this.salaryTypeName = salaryTypeName;
}
public String getSalaryTypeCode() {
	return salaryTypeCode;
}
public void setSalaryTypeCode(String salaryTypeCode) {
	this.salaryTypeCode = salaryTypeCode;
}
public int getUnitsPerYear() {
	return unitsPerYear;
}
public void setUnitsPerYear(int unitsPerYear) {
	this.unitsPerYear = unitsPerYear;
}

}
