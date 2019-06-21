package com.asminds.empDao;

import java.util.List;

import com.asminds.emp.model.EmployeeModel;

public interface EmployeeDAO 
{
	public boolean save(EmployeeModel mobj);
	public List<EmployeeModel> validation(EmployeeModel mobj);
	public List<EmployeeModel> viewById(EmployeeModel emp);
}
