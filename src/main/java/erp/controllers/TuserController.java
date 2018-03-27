package erp.controllers;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Tuser;
import erp.hrms.dao.TuserDao;
import erp.hrms.dao.TimesheetApproveDao;


@Controller
public class TuserController 
{
	
	@Autowired
	TuserDao tuserDao;
	
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView saveTuser(@ModelAttribute("tsuser") Tuser tuser)
	{
		tuserDao.save(tuser);
		return new ModelAndView("redirect:/index");
	}
	@RequestMapping(value="financial/save",method = RequestMethod.POST)
	public ModelAndView saveexpense(@ModelAttribute("tsuser") Tuser tuser)
	{
		tuserDao.saveforexpenseupdatereimburse(tuser);
		return new ModelAndView("redirect:/financial");
	}
	@RequestMapping(value="reimbursement/save",method = RequestMethod.POST)
	public ModelAndView savereimbursement(@ModelAttribute("tsuser") Tuser tuser)
	{
		tuserDao.saveforreimbursement(tuser);
		return new ModelAndView("redirect:/rrp2");
	}
	
	@RequestMapping(value = "Timesheet/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteTimesheet(@PathVariable int id) {
		tuserDao.delete(id);
		return new ModelAndView("redirect:/Timesheet");
	}
	
	@RequestMapping(value="Timesheet/edit", method = RequestMethod.POST)
	public ModelAndView editDept(@ModelAttribute("tsuser") Tuser tuser) {
		tuserDao.update(tuser);
		return new ModelAndView("redirect:/Timesheet");
	}
	
/*	@RequestMapping(value = "Approve_Timesheet/edit",method=RequestMethod.POST)
	public ModelAndView editpra(@ModelAttribute("approves") Tuser tuser)
	{
		tuserDao.updatestatus(tuser);
		return new ModelAndView("redirect:hr-timesheet/Approve_Timesheet");
		
	}
*/	
}
