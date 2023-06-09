package org.mvc.jdbc.dao;

import java.util.List;

import org.mvc.jdbc.config.BloodDonar;

public interface BloodDonarDao {
	int register(BloodDonar donar);

	BloodDonar login(BloodDonar donar);

	BloodDonar select(BloodDonar donar);
	
	List<BloodDonar> search(BloodDonar donar);
	
	int forgotPassword(BloodDonar donar);
	
	BloodDonar profile(BloodDonar donar);
	
	int edit(BloodDonar donar);
}
