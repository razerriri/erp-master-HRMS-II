package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import erp.hrms.beans.AddApp;

public class AddAppDao {

JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}

public int insertApp (AddApp a) {
	String sql = "insert into TBL_APPMGT_APP values('"+a.getfName()+"','"+a.getmName()+"','"+a.getlName()+"','"+a.getSuffix()+"','"+a.getBdate()+"','"+a.getpBirth()+"','"+a.getSex()+"','"+a.getCivil()+"','"+a.getResAdd()+"','"+a.getPerAdd()+"','"+a.getContact()+"','"+a.getEmailAdd()+"')";
	return template.update(sql);
}


}
