package com.asminds.daopack;

import java.util.List;


import com.asminds.pojopack.Patientdetailspojo;
import com.asminds.pojopack.Patientregisterpojo;

public interface Daointerface 
{
	 public boolean insert(Patientregisterpojo p);
	 public boolean insert(Patientdetailspojo p);
	 public List<Patientdetailspojo> getAllDetails();
	 public List<Patientregisterpojo> validate(Patientregisterpojo ep);
		public void deleteDetails(Integer id);
		public Boolean updateParkingDao(Patientdetailspojo updateemp);
		public List<Patientdetailspojo> updateDAO(Patientdetailspojo p);
	

}
