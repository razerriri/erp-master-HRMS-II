package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.CompensationType;
import erp.hrms.beans.Department;
import erp.hrms.beans.Employee;
import erp.hrms.beans.Gsis;
import erp.hrms.beans.Job;
import erp.hrms.beans.PayGrade;
import erp.hrms.beans.SalaryType;
import erp.hrms.dao.CompensationTypeDao;
import erp.hrms.dao.DepartmentDao;
import erp.hrms.dao.EmployeeDao;
import erp.hrms.dao.GsisDao;
import erp.hrms.dao.JobDao;
import erp.hrms.dao.PayGradeDao;
import erp.hrms.dao.SalaryTypeDao;
import erp.hrms.dao.ShiftDao;
import erp.hrms.beans.Shift;

@Controller
@RequestMapping(value="system-setup")
public class SystemSetupController {
	
	@Autowired
	DepartmentDao deptDao;
	
	@Autowired
	CompensationTypeDao compTypeDao;
	
	@Autowired
	JobDao jobDao;
	
	@Autowired
	PayGradeDao payGradeDao;
	
	@Autowired
	SalaryTypeDao salaryTypeDao;
	
	@Autowired 
	EmployeeDao employeeDao;
	
	@Autowired
	GsisDao gsisDao;
	
	@Autowired
	ShiftDao shiftDao;
	
	@RequestMapping("compensation-type/")
	public ModelAndView compensationType() {
		List<CompensationType> list = compTypeDao.getCompensationTypes();
		ModelAndView mv = new ModelAndView("system-setup/compensation-type");
		mv.addObject("list",list);
		mv.addObject("compType", new CompensationType());
		return mv;
	}
	
	@RequestMapping("deductions/")
	public ModelAndView deductions() {
		List<Gsis> list = gsisDao.getGsis();
		ModelAndView mv = new ModelAndView("system-setup/deductions");
		mv.addObject("list", list);
		mv.addObject("gsis", new Gsis());
		return mv;
	}

	@RequestMapping(value="department/")
	public ModelAndView department() {
		List<Department> list = deptDao.getDepartment();
		ModelAndView mv = new ModelAndView("system-setup/department");
		mv.addObject("list",list);
		mv.addObject("dept", new Department());
		return mv;
	}
	
	
	@RequestMapping("job-title/")
	public ModelAndView jobDescription() {
		List<Job> list = jobDao.getJob();
		List<Department> list2 = deptDao.getDepartment();
		List<SalaryType> list3 = salaryTypeDao.getSalaryTypes();
		List<PayGrade> list4 = payGradeDao.getPayGrades();
		ModelAndView mv = new ModelAndView("system-setup/job-title");
		mv.addObject("list",list);
		mv.addObject("list2",list2);
		mv.addObject("list3",list3);
		mv.addObject("list4",list4);
		mv.addObject("job", new Job());
		return mv;
	}
	
	@RequestMapping("old-employee/")
	public ModelAndView oldEmployee() {
		List<Department> list1 = deptDao.getDepartment();
		List<Job> list2 = jobDao.getJob();
		ModelAndView mv = new ModelAndView("system-setup/old-employee");
		mv.addObject("employee",new Employee());
		mv.addObject("list1",list1);
		mv.addObject("list2",list2);
		return mv;
	}
	
	@RequestMapping("other-deductions/")
	public ModelAndView otherDeduction() {
		ModelAndView mv = new ModelAndView("system-setup/other-deductions");
		return mv;
	}
	
	@RequestMapping("pay-grade/")
	public ModelAndView payGrade() {
		List<PayGrade> list = payGradeDao.getPayGrades();
		ModelAndView mv = new ModelAndView("system-setup/pay-grade");
		mv.addObject("list",list);
		mv.addObject("payGrade", new PayGrade());
		return mv;
	}
	
	@RequestMapping("salary-type/")
	public ModelAndView salaryType() {
		List<SalaryType> list = salaryTypeDao.getSalaryTypes();
		ModelAndView mv = new ModelAndView("system-setup/salary-type");
		mv.addObject("list",list);
		mv.addObject("salaryType", new SalaryType());
		return mv;
	}
	
	@RequestMapping("withholding-tax/")
	public ModelAndView withholdingTax() {
		ModelAndView mv = new ModelAndView("system-setup/withholding-tax");
		return mv;
	}
	
	@RequestMapping("time-work/")
	public ModelAndView shift() {
		List<Shift> list = shiftDao.getShift();
		ModelAndView mv = new ModelAndView("system-setup/time-work");
		mv.addObject("list",list);
		mv.addObject("Shift", new Shift());
		return mv;
	}
}
