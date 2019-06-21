package com.asminds.daoimplementpack;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.asminds.daopack.Daointerface;

import com.asminds.pojopack.Patientdetailspojo;
import com.asminds.pojopack.Patientregisterpojo;

public class patientimplm implements Daointerface 
{

	public boolean insert(Patientregisterpojo p) 
	{
		Configuration cfg=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session=sf.openSession();
		Transaction trans=session.beginTransaction();
		session.save(p);
		System.out.println("Saved Successfully...");
		trans.commit();
		session.close();
		sf.close();
		return true;
		
		
	}

	@Override
	public List<Patientregisterpojo> validate(Patientregisterpojo ep) {
		Configuration cfg=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session=sf.openSession();
		Query q = session.createQuery("from Patientregisterpojo where username=:username and password=:password");
		q.setParameter("username", ep.getUsername());
		q.setParameter("password", ep.getPassword());
		List l=q.list();
		System.out.println("Total Number of Records : "+l.size());
		Iterator it=l.iterator();
		while(it.hasNext()) {
			Object o=(Object)it.next();
			Patientregisterpojo e=(Patientregisterpojo)o;
			System.out.println("Username:"+e.getUsername());
			System.out.println("Password:"+e.getPassword());
		}
		session.close();
		return l;
	}

	@Override
	public boolean insert(Patientdetailspojo p)
	{

		Configuration cfg=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session=sf.openSession();
		Transaction trans=session.beginTransaction();
		session.save(p);
		System.out.println("Saved Successfully...");
		trans.commit();
		session.close();
		sf.close();
		return true;
		
		
	}

	@Override
	public List<Patientdetailspojo> getAllDetails() 
	{
		Configuration cfg=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session=sf.openSession();
		List<Patientdetailspojo> list = session.createQuery("from Patientdetailspojo s").list();	
		System.out.println(list.size());
		session.close();
		sf.close();
		return list;
	
	
	}

	@Override
	public void deleteDetails(Integer id)
	{
		Configuration cfg=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session session=sf.openSession();
		Object o=session.load(Patientdetailspojo.class, new Integer (id));
		Patientdetailspojo p=(Patientdetailspojo) o;
		Transaction trans=session.beginTransaction();
		session.delete(p);
		System.out.println("Delete Successfully...");
		trans.commit();
		session.close();
		sf.close();
		
	}

	@Override
	public Boolean updateParkingDao(Patientdetailspojo updateemp) 
	{
		System.out.println("I am in update employee dao implementation");
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml"); 

		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println(updateemp.getId() +" " +updateemp.getName());
	
		String hql = "UPDATE Patientdetailspojo set name = :name,phone = :phone,address = :address,doctor = :doctor,symp = :symp "  + 
	             "WHERE id = :id";
		Query query = session.createQuery(hql);
	query.setParameter("id", updateemp.getId());
	query.setParameter("name", updateemp.getName());
	query.setParameter("phone", updateemp.getPhone());
	query.setParameter("address", updateemp.getAddress());
	query.setParameter("doctor", updateemp.getDoctor());
	query.setParameter("symp", updateemp.getSymp());

	int result = query.executeUpdate();
	System.out.println("Rows affected: " + result);
	t.commit();
	session.close();
	factory.close();
	return true;
		
	}

	@Override
	public List<Patientdetailspojo> updateDAO(Patientdetailspojo p)
	{
		System.out.println("im in update method");
		System.out.println(p.getId());
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from Patientdetailspojo where id=" + p.getId());
		List l = q.list();
		System.out.println("total number of records" + l.size());
		//Iterator i = l.iterator();
		s.close();
		sf.close();
		return l;
	}
		

	}


