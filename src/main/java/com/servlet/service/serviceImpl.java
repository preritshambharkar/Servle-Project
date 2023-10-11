package com.servlet.service;

import com.servlet.Dao.RegistrationDao;
import com.servlet.enttity.RegistrationModel;

public class serviceImpl {

	public static int registerUser(RegistrationModel rm) {
		int i=0;
		if(rm != null) {
			i = RegistrationDao.registerUser(rm);
		}
		return i;
	}

}
