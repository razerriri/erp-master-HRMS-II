package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Tuser;
import erp.hrms.dao.TimesheetApproveDao;
import erp.hrms.dao.TuserDao;
@Controller
@RequestMapping(value="hr-timesheet")
public class TimesheetController 
{
	@Autowired
	TuserDao tuserDao;
	
	@Autowired
	TimesheetApproveDao timesheetapproveDao;
	//@RequestMapping(value = {"/","index"})
	//public ModelAndView index() {
	//	return new ModelAndView("index");
	//}
	//@RequestMapping(value={"/","Login"})
	//public ModelAndView login()
	//{
	//	ModelAndView mv = new ModelAndView("login");
	//	mv.addObject("tuser", new Tuser());
	//	return mv;
	//}
	/*
	@RequestMapping(value={"/","Dashboard"})
	public ModelAndView Dashboard()
	{
		List<Tuser> list = tuserDao.getviewforapprovecount();
		List<Tuser> list1 = tuserDao.getviewforapprovecountlastyear();
		ModelAndView mv = new ModelAndView("Dashboard");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		return mv;
	}
	@RequestMapping(value={"/","NT_Timesheet"})
	public ModelAndView NT_Timesheet()
	{
		ModelAndView mv = new ModelAndView("NT_Timesheet");
		mv.addObject("tuser", new Tuser());
		return mv;
	}
	@RequestMapping(value={"/","Monthly_Timesheet2"})
	public ModelAndView Monthly_Timesheet2()
	{
		List<Tuser> list = tuserDao.getviewforMtimesheet();	
		ModelAndView mv = new ModelAndView("Monthly_Timesheet2");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value={"/","Weekly_Timesheet"})
	public ModelAndView Weekly_Timesheet()
	{
		ModelAndView mv = new ModelAndView("Weekly_Timesheet");
		mv.addObject("tuser", new Tuser());
		return mv;
	}
	@RequestMapping(value={"/hrms/hr-timesheet/My_Timesheet"})
	public ModelAndView My_Timesheet()
	{
		ModelAndView mv = new ModelAndView("hr-timesheet/My_Timesheet");
		mv.addObject("tuser", new Tuser());
		return mv;
	}

	@RequestMapping(value={"/","Add_Monthly_Timesheet"})
	public ModelAndView Add_Monthly_Timesheet()
	{
		ModelAndView mv = new ModelAndView("Add_Monthly_Timesheet");
		mv.addObject("tuser", new Tuser());
		return mv;
	}
	@RequestMapping(value={"/","Add_Weekly_Timesheet"})
	public ModelAndView Add_Weekly_Timesheet()
	{
		ModelAndView mv = new ModelAndView("Add_Weekly_Timesheet");
		mv.addObject("tuser", new Tuser());
		return mv;
	}
	
	@RequestMapping(value= {"Reports"})
	public   ModelAndView users()
	{ 
		List<Tuser> list = tuserDao.getTusers();		
		ModelAndView mv = new ModelAndView("Timesheet_Reports");
		mv.addObject("list", list);
		return mv;
	} 	
	*/
	@RequestMapping(value= {"Approve_Timesheet/"})
	public   ModelAndView Approve_Timesheet()
	{ 
		List<Tuser> list = timesheetapproveDao.getviewforpending();	
	//	List<Tuser> list1 = tuserDao.getviewforapprove();
	//	List<Tuser> list2 = tuserDao.getviewfordisapprove();
		List<Tuser> list3 = timesheetapproveDao.getviewforapprovedisapprove();
		List<Tuser> list4 = timesheetapproveDao.getviewselected();
		List<Tuser> list5 = timesheetapproveDao.getsumofreghrs();
		ModelAndView mv = new ModelAndView("hr-timesheet/Approve_Timesheet");
		mv.addObject("list", list);
		//mv.addObject("list1", list1);
		//mv.addObject("list2", list2);
		mv.addObject("list3", list3);
		mv.addObject("list4", list4);
		mv.addObject("list5", list5);
		mv.addObject("approves",new Tuser());
		mv.addObject("disapproves",new Tuser());
		
		return mv;
	}
	@RequestMapping(value= {"Timesheet_Reports/"})
	public   ModelAndView Timesheet_Reports()
	{ 
		List<Tuser> list = tuserDao.getviewforreports();		
		ModelAndView mv = new ModelAndView("hr-timesheet/Timesheet_Reports");
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value={"report_print/"})
	public ModelAndView report_print()
	{
		List<Tuser> list = tuserDao.getviewforreports();	
		ModelAndView mv = new ModelAndView("hr-timesheet/report_print");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	/*
	@RequestMapping(value= {"Timesheet"})
	public   ModelAndView Timesheet()
	{ 
		List<Tuser> listfortimesheet = tuserDao.getviewfortimesheet();
		ModelAndView mv = new ModelAndView("Timesheet");
		mv.addObject("list", listfortimesheet);
		mv.addObject("timesheets",new Tuser());
		
		return mv;
	} 	
	@RequestMapping(value="users/delete/{id}", method =RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id)
	{
		tuserDao.delete(id);
		ModelAndView mv = new ModelAndView("redirect:/users");
		return mv;
	
	}
	
	//the reimbursement page
	@RequestMapping(value={"/","reimbursement_requisition"})
	public ModelAndView reimbursement_requisition()
	{
		ModelAndView mv = new ModelAndView("reimbursement_requisition");
		mv.addObject("tuser", new Tuser());
		return mv;
	}
	
	@RequestMapping(value={"/","Monthly_Timesheet_Add"})
	public ModelAndView Monthly_Timesheet_Add()
	{
		List<Tuser> list = tuserDao.getviewforMtimesheet();	
		ModelAndView mv = new ModelAndView("Monthly_Timesheet_Add");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value={"/","financial"})
	public ModelAndView financial()
	{
		List<Tuser> list = tuserDao.getIDofreimbursement();
		ModelAndView mv = new ModelAndView("financial");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		mv.addObject("financialss",new Tuser());
		

		return mv;
	}
	@RequestMapping(value={"/","report_print"})
	public ModelAndView report_print()
	{
		List<Tuser> list = tuserDao.getTusers();	
		ModelAndView mv = new ModelAndView("report_print");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value={"/","rrp1"})
	public ModelAndView rrp1()
	{
		List<Tuser> list = tuserDao.getempname();	
		ModelAndView mv = new ModelAndView("rrp1");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		mv.addObject("reimbursements",new Tuser());
		return mv;
	}
	@RequestMapping(value={"/","rrp2"})
	public ModelAndView rrp2()
	{
		List<Tuser> list = tuserDao.getTusers();	
		ModelAndView mv = new ModelAndView("rrp2");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value={"/","rrp3"})
	public ModelAndView rrp3()
	{
		List<Tuser> list = tuserDao.getTusers();	
		ModelAndView mv = new ModelAndView("rrp3");
		mv.addObject("tuser", new Tuser());
		mv.addObject("list", list);
		return mv;
	}
	*/
}
