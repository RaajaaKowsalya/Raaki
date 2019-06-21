package com.asminds.controllerpack;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asminds.daoimplementpack.patientimplm;

import com.asminds.pojopack.Patientdetailspojo;
import com.asminds.pojopack.Patientregisterpojo;

@Controller
public class Pharmacycontrol 
{
	@RequestMapping("/")
	public String index()
	{
		System.out.println(" i am in first page");
		return "index";
		
	}
	@RequestMapping("/back")
	public String backToindex() {
		System.out.println("Log Out Method");
		return "index";
	}
	String user=null;
 	String pass=null;
	@RequestMapping("/save")
	public String logging(@ModelAttribute Patientregisterpojo ep) {
		System.out.println("Login Page");
		patientimplm d=new patientimplm();
		List<Patientregisterpojo> list=d.validate(ep);
		for(Patientregisterpojo Login : list) {
			 user=Login.getUsername();
			 pass=Login.getPassword();
			 System.out.println(Login.getUsername());
			 System.out.println(Login.getPassword());
		}
		if(user.equals(ep.getUsername()) && pass.equals(ep.getPassword())) {
			return "pharmacyadmin";
		}
		else {
			return "redirect:/";
		}
	}
	@RequestMapping("/registerpatient")
	public String registerEmployeemethod()
	{
		 System.out.println("Register patient Method controller");
		return "registerpatient";
	}
	@RequestMapping("/insertsave")
	public String insertsaveEmployeeDetailsmethod(@ModelAttribute ("a") Patientregisterpojo ep)
	{
		System.out.println("Insert Method for Employee Details");
		patientimplm d=new patientimplm();
		d.insert(ep);
		System.out.println(ep.getPatientid());
		System.out.println(ep.getPatientname());
		System.out.println(ep.getUsername());
		System.out.println(ep.getPassword());
		return "redirect:/";
	}
	@RequestMapping("/registerpatientDetails")
	public String register() {
		System.out.println("Register Method");
		return "registerpatientDetails";
	}
	@RequestMapping("/submit")
	public String insert(@ModelAttribute ("d") Patientdetailspojo pp) {
		System.out.println("Insert Method");
		patientimplm d=new patientimplm();
		d.insert(pp);
		System.out.println(pp.getId());
		System.out.println(pp.getName());
		System.out.println(pp.getAddress());
		System.out.println(pp.getPhone());
		System.out.println(pp.getSymp());
		return "pharmacyadmin";
	}
	@RequestMapping("/viewAllPatientList")
	public ModelAndView viewmethod() {
		System.out.println("ViewAll Method");
		patientimplm d=new patientimplm();
		List<Patientdetailspojo> details=d.getAllDetails();
		return new ModelAndView("viewAllPatientList", "patient", details);		
	}
	@RequestMapping("/patientAdminback")
	public String back() {
		System.out.println("back to admin");
		return "pharmacyadmin";
	}
	@RequestMapping("/delete")
	 public String deletemethod()
	 {
		 System.out.println("im in deletemethod controller");
		return "Deletepatient";
		 
	 }
	@RequestMapping(value="/deletedetails/{id}")  
	public ModelAndView delete(@PathVariable int id){ 
		patientimplm d=new patientimplm();
		d.deleteDetails(id);
   return new ModelAndView("redirect:/viewAllPatientList");  
	}
	@RequestMapping("/update")
	public ModelAndView updatemethod(@ModelAttribute("v") Patientdetailspojo up) {
		System.out.println("Update Method");
		patientimplm d=new patientimplm();
		List<Patientdetailspojo>l=d.updateDAO(up);
		System.out.println("total number of records"+l.size());
		//Iterator i=l.iterator();
	return new ModelAndView("updatepatient","update",l);
	}
	@RequestMapping("/updatecontroller")
	public String UpdateController(@ModelAttribute ("f") Patientdetailspojo loo) {
		System.out.println("updated Method 2");
		System.out.println(loo.getId());
		System.out.println(loo.getName());
		System.out.println(loo.getPhone());
		System.out.println(loo.getAddress());
		System.out.println(loo.getDoctor());
		System.out.println(loo.getSymp());
		
		patientimplm d=new patientimplm();
		Boolean b = d.updateParkingDao(loo);
		
		if(b==true) {
			return "redirect:/viewAllPatientList";
		}else {
			return "redirect:/";	
		}

}
}
