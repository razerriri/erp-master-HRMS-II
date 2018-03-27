package erp.hrms.beans;

public class CompensationType {

private int compTypeId;
private String compTypeName;
private String compTypeDesc;
private float compValue;

public int getCompTypeId() {
	return compTypeId;
}

public void setCompTypeId(int compTypeId) {
	this.compTypeId = compTypeId;
}

public String getCompTypeName() {
	return compTypeName;
}

public void setCompTypeName(String compTypeName) {
	this.compTypeName = compTypeName;
}

public String getCompTypeDesc() {
	return compTypeDesc;
}

public void setCompTypeDesc(String compTypeDesc) {
	this.compTypeDesc = compTypeDesc;
}

public float getCompValue() {
	return compValue;
}

public void setCompValue(float compValue) {
	this.compValue = compValue;
}

}
