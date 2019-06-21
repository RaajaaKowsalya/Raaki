package com.asminds.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.asminds.emp.empDaoImpl.EmployeeDAOImpl;
import com.asminds.emp.empDaoImpl.LeaveApplyDaoImpl;
import com.asminds.emp.model.EmployeeModel;
import com.asminds.emp.model.LeaveApplyModel;

@Controller
public class EmpControllerClass 
{
	@RequestMapping("/") 
	public String index()
	{
		System.out.println("I am in home");
		return "indexPage";
		
	}
	
	@RequestMapping(value="/indexPage", method = RequestMethod.POST)
	public ModelAndView validation(@ModelAttribute("userform") EmployeeModel mobj)
	{
		EmployeeDAOImpl obj=new EmployeeDAOImpl();
		System.out.println(mobj.getId() +"" +mobj.getPassword());
		List<EmployeeModel> lobj =obj.validation(mobj) ;
		System.out.println("I am in Validating a Password");
		String a=mobj.getName();
		String wrong="Sorry! Invalid Username or Password...";
		List<EmployeeModel> t=obj.viewById(mobj);
		if (lobj.size() != 0) {
			return new ModelAndView("indexPage","emp",t);
		} else {
			return new ModelAndView("home","wrong",wrong);
		}
		
	}
	
	@RequestMapping(value="/register")
	public String register()
	{
		System.out.println("I am in register page");
		return "register";
		
	}
	
	@RequestMapping("/registersave")
	public ModelAndView registersave(@ModelAttribute("s") EmployeeModel mobj)
	{
		EmployeeDAOImpl obj=new EmployeeDAOImpl();
		boolean b=obj.save(mobj);
		List<EmployeeModel> t=obj.viewById(mobj);
		if(b==true)
		{
		return new ModelAndView("indexPage","emp",t);
		}
		else
		{
			return new ModelAndView("home");
		}
	}
	@RequestMapping(value="/leaveapply",method=RequestMethod.POST)
	public ModelAndView registersave1(@ModelAttribute("s") LeaveApplyModel mobj)
	{
		LeaveApplyDaoImpl obj=new LeaveApplyDaoImpl();
		boolean b=obj.save(mobj);
		List<EmployeeModel> t=obj.viewById(mobj);
		if(b==true)
		{
		return new ModelAndView("indexPage","emp",t);
		}
		else
		{
			return new ModelAndView("home");
		}
	}
	@RequestMapping(value="/claimapply",method=RequestMethod.POST)
	public ModelAndView registersave2(@ModelAttribute("s") LeaveApplyModel mobj)
	{
		LeaveApplyDaoImpl obj=new LeaveApplyDaoImpl();
		boolean b=obj.save(mobj);
		List<EmployeeModel> t=obj.viewById(mobj);
		if(b==true)
		{
		return new ModelAndView("indexPage","emp",t);
		}
		else
		{
			return new ModelAndView("home");
		}
	}
	
	
	
}
