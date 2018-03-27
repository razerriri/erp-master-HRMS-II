package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Tuser;
import erp.hrms.dao.RequestDao;
import erp.hrms.beans.Requests;

@Controller
public class ErpController {
	
	
	@Autowired 
	RequestDao requestDao;
	@RequestMapping(value= {"/","index/"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping(value="manage-users/")
	public ModelAndView manageUsers() {
		ModelAndView mv = new ModelAndView("manage-users");
		return mv;
	}
	
	//Compensation Planning And Administration
	@RequestMapping(value= {"/hrms/cpa/","/hrms/cpa/index/"})
	public ModelAndView cpaIndex() {
		ModelAndView mv = new ModelAndView("cpa/index");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/tcompensation/")
	public ModelAndView tCompensation() {
		ModelAndView mv = new ModelAndView("cpa/tcompensation");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/compensation-plan/")
	public ModelAndView compensationPlan() {
		ModelAndView mv = new ModelAndView("cpa/compensation");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/administration")
	public ModelAndView administration() {
		ModelAndView mv = new ModelAndView("cpa/administration");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/rcompensation/")
	public ModelAndView rCompensation() {
		ModelAndView mv = new ModelAndView("cpa/rcompensation");
		return mv;
	}
	
	
	//HR ANALYTICS
	@RequestMapping(value="/hrms/hranalytics/dashboard/")
	public ModelAndView hrAnanalyticsDashboard() {
		ModelAndView mv = new ModelAndView("hranalytics/dashboard");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/reports/")
	public ModelAndView hranalyticsReports() {
		ModelAndView mv = new ModelAndView("hranalytics/reports");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/performance-management/")
	public ModelAndView hranalyticsPerformanceManagement() {
		ModelAndView mv = new ModelAndView("hranalytics/performance-management");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/workforce/")
	public ModelAndView hranalyticsWorkforce() {
		ModelAndView mv = new ModelAndView("hranalytics/workforce");
		return mv;
	}
	
	//PAYROLL
	@RequestMapping(value="/hrms/payroll/generate-payroll/")
	public ModelAndView generatePayroll() {
		ModelAndView mv = new ModelAndView("payroll/generate-payroll");
		return mv;
	}
	
	@RequestMapping(value="/hrms/payroll/reports/")
	public ModelAndView reports() {
		ModelAndView mv = new ModelAndView("payroll/reports");
		return mv;
	}
	
	//NEW HIRE ON BOARD//
	
	@RequestMapping("/hrms/newhireonboard/nhindex/")
	public ModelAndView a_index() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_index");	
		return mav;
	}
	
	@RequestMapping("/hrms/newhireonboard/newhire/")
	public ModelAndView a_newhire() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_newhire");	
		return mav;
		}
	
	@RequestMapping("/hrms/newhireonboard/checklist")
	public ModelAndView a_checklist() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_checklist");	
		return mav;
	}
	
	@RequestMapping("/hrms/newhireonboard/cl_content")
	public ModelAndView a_cl_content() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_cl_content");	
		return mav;
	}
	
	@RequestMapping("/hrms/newhireonboard/email")
	public ModelAndView a_email() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_email");	
		return mav;
	}
	
	@RequestMapping("/hrms/newhireonboard/report")
	public ModelAndView a_report() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_report");	
		return mav;
	}
	
	//CALENDAR
	
		@RequestMapping(value="calendar/")
		public ModelAndView hCalendar() {
			ModelAndView mv = new ModelAndView("calendar");
			return mv;
		}
		
		/// USERSIDE
		
		@RequestMapping(value="/hrms/users/schedules/")
		public ModelAndView hUser() {
			ModelAndView mv = new ModelAndView("users/myschedule");
			return mv;
		}
		
		
		//////SHIFT AND SCHEDULING/////////////
		
		
		
		@RequestMapping(value="/hrms/hrshiftsched/requests/")
		public ModelAndView hRequests() {
			List<Requests> reqlist = requestDao.getRequests();
			ModelAndView mv = new ModelAndView("hrshiftsched/requests");
			mv.addObject("reqlist", reqlist);
			return mv;
		}
		
		
		@RequestMapping(value="/hrms/hrshiftsched/schedules/")
		public ModelAndView hSchedules() {
			ModelAndView mv = new ModelAndView("hrshiftsched/schedules");
			return mv;
		}
		
		
		@RequestMapping(value="/hrms/hrshiftsched/reports/")
		public ModelAndView hReports() {
			ModelAndView mv = new ModelAndView("hrshiftsched/reports");
			return mv;
		}
		
		//PERFORMANCE
		@RequestMapping(value="/hrms/hr_performance_management/admin_dashboard/")
		public ModelAndView admin_dashboard() {
			ModelAndView mv = new ModelAndView("hr_performance_management/admin_dashboard");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/admin_queries_evaluation/")
		public ModelAndView admin_q_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/admin_queries_evaluation");
			return mv;
			
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/admin_reports_evaluation/")
		public ModelAndView admin_r_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/admin_reports_evaluation");
			return mv;	
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/evaluatee_queries_evaluation/")
		public ModelAndView evaluatee_q_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/evaluatee_queries_evaluation");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/evaluatee_reports_evaluation/")
		public ModelAndView evaluatee_r_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/evaluatee_reports_evaluation");
			return mv;
		}	
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_dashboard/")
		public ModelAndView supervisor_d() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_dashboard");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_evaluation_ipcr/")
		public ModelAndView supervisor_e_i() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_evaluation_ipcr");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_evaluation_opcr/")
		public ModelAndView supervisor_e_o() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_evaluation_opcr");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_queries_evaluated/")
		public ModelAndView supervisor_q_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_queries_evaluated");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_queries_notevaluated/")
		public ModelAndView supervisor_q_n() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_queries_notevaluated");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_reports_evaluated/")
		public ModelAndView supervisor_r_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_reports_evaluated");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_reports_notevaluated/")
		public ModelAndView supervisor_r_n() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_reports_notevaluated");
			return mv;
		}
		
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_transaction_evaluation/")
		public ModelAndView supervisor_t_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_transaction_evaluation");
			return mv;
		}
		
		
	
}
