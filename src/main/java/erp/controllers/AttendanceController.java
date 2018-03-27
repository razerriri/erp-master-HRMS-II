package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.AttendanceBeans;
import erp.hrms.beans.EmployeeBeans;
import erp.hrms.beans.UserAttendance;
import erp.hrms.dao.AttendanceDao;
import erp.hrms.dao.EmployeeDao;
import erp.hrms.dao.UserAttendanceDao;

@Controller
public class AttendanceController {
	
	@Autowired
	EmployeeDao employeeDao;	
	@Autowired
	AttendanceDao attendanceDao;
	@Autowired
	UserAttendanceDao userAttendanceDao;
	
	
	
	@RequestMapping(value= {"view-filter"}, method=RequestMethod.POST)
	public ModelAndView filterAttendance(@ModelAttribute("attendancebeans")AttendanceBeans attendancebeans)
	{
		
		List<AttendanceBeans> attendanceList = attendanceDao.getAttendance();
		ModelAndView mv = new ModelAndView("attendance/view_time_attendance");
		mv.addObject("attendance-beans",new AttendanceBeans());
		mv.addObject("attendanceList",attendanceList);
	
		
		return mv;
	}
	
	@RequestMapping(value="attendance-save", method= RequestMethod.POST)
	public ModelAndView warehouseAdd(@ModelAttribute("attendance")AttendanceBeans attendance)
	{
		attendanceDao.save(attendance);
		return new ModelAndView("redirect:/view-time");	
		
	}
	
	
	
	@RequestMapping(value= {"user-form"})
	public ModelAndView UserForm()
	{
		
		ModelAndView mv = new ModelAndView("attendance/k_employee_user");
		
		return mv;
	}
	
	@RequestMapping(value="user-time-in", method= RequestMethod.POST)
	public ModelAndView userIn(@ModelAttribute("userAttendance")UserAttendance userAttendance)
	{
		userAttendanceDao.save(userAttendance);
		return new ModelAndView("redirect:/user-form");	
		
	}
	
	@RequestMapping(value="user-time-out", method= RequestMethod.POST)
	public ModelAndView userOut(@ModelAttribute("userAttendance")UserAttendance userAttendance)
	{
		userAttendanceDao.update(userAttendance);
		return new ModelAndView("redirect:/user-form");	
		
	}
	
	
	
	
	
	
	
	
	
	
}
