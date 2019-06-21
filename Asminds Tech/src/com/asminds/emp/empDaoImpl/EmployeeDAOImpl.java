package com.asminds.emp.empDaoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.query.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.asminds.emp.model.EmployeeModel;
import com.asminds.empDao.EmployeeDAO;

public class EmployeeDAOImpl implements EmployeeDAO 
{

	public boolean save(EmployeeModel mobj) {
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		
		s.save(mobj);
		
		t.commit();
		s.close();
		sf.close();
		System.out.println("object saved Successfully");
		return true;
	}

	public List<EmployeeModel> validation(EmployeeModel mobj) {
		
		System.out.println("I am in validation method" +"" +mobj.getId() + " "+mobj.getPassword());
		
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf=cfg.buildSessionFactory();
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		
		Query qry=s.createQuery("from EmployeeModel where id=:id and password=:password");
		qry.setParameter("id", mobj.getId());
		qry.setParameter("password", mobj.getPassword());
		
		List<EmployeeModel> lobj=qry.list();
		System.out.println("Total no.of Records: "+lobj.size());
		
		Iterator iterator=lobj.iterator();
		while(iterator.hasNext())
		{
			EmployeeModel obj=(EmployeeModel) iterator.next();
			System.out.println(obj.getName()+""+obj.getPassword()+""+obj.getDesignation());
		}
		
		t.commit();
		s.close();
		sf.close();
		
		return lobj;
	}

	public List<EmployeeModel> viewById(EmployeeModel emp) {
		// TODO Auto-generated method stub
		System.out.println("I am in Employee By Id");
		System.out.println(emp.getId());
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf=cfg.buildSessionFactory();
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		System.out.println("select * from EmployeeModel where id=" +emp.getId());
		Query qry=s.createQuery("from EmployeeModel where id="+emp.getId());
		System.out.println("from EmployeeModel where id="+emp.getId());
		List l=qry.list();
		System.out.println("Total number of records :" +l.size());
		Iterator it=l.iterator();
		while(it.hasNext()) {
			EmployeeModel reg=(EmployeeModel)it.next();
			System.out.println(reg.getId() +""+reg.getName() +"" +reg.getEmail());
		}
		t.commit();
		s.close();
		sf.close();
		
		return l;
	}
	

}
