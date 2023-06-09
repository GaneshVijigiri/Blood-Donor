package org.mvc.jdbc.dao;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.mvc.jdbc.config.BloodDonar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository
public class BloodDonarImp implements BloodDonarDao {
	int sno = 0;
	public int age;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int register(BloodDonar donar) {
		String tempDob = donar.getDob();
		String dob = tempDob.substring(0, 4);
		int tempAge = Integer.parseInt(dob);
		Date date = new Date();
		age = (date.getYear()+1900)-(tempAge);
		int num = 0;
		if (donar.getMobileNumber().length() == 10) {
			if (donar.getAadharNumber().length() == 12) {
				if (age >= 18) {
					if (donar.getPassword().equals(donar.getConfirmPassword())) {

						String insert = "insert into donar(firstname, lastname, gender, dob, mobilenumber, aadharnumber, bloodgroup, state, city, pincode,email, password) values(?,?,?,?,?,?,?,?,?,?,?,?)";
						num = jdbcTemplate.update(insert, donar.getFirstName(), donar.getLastName(), donar.getGender(),
								donar.getDob(), donar.getMobileNumber(), donar.getAadharNumber(), donar.getBloodGroup(),
								donar.getState(), donar.getCity(), donar.getPincode(), donar.getMail(),
								donar.getPassword());

					}
				}
			}
		}
		return num;
	}

	public BloodDonar login(BloodDonar donar) {
		BloodDonar bloodDonar = null;
		BloodDonar donar2 = select(donar);
		sno = donar2.getSno();
		if (donar.getMobileNumber().equals(donar2.getMobileNumber())) {
			if (donar2.getPassword().equals(donar.getPassword())) {
				String select = "select * from donar where mobilenumber=? and password=?";
				bloodDonar = jdbcTemplate.queryForObject(select, new BloodDonarRowMapperImp(), donar.getMobileNumber(),
						donar.getPassword());
			}
		}
		return bloodDonar;
	}

	public BloodDonar select(BloodDonar donar) {
		String select = "select * from donar where mobilenumber=? and password=?";
		BloodDonar object = jdbcTemplate.queryForObject(select, new BloodDonarRowMapperImp(), donar.getMobileNumber(),
				donar.getPassword());
		return object;
	}

	public List<BloodDonar> search(BloodDonar donar) {
		String select = "select * from donar where bloodgroup=? and city=? and state=? and sno!=?";
		List<BloodDonar> list = jdbcTemplate.query(select, new BloodDonarRowMapperImp(), donar.getBloodGroup(),
				donar.getCity(), donar.getState(),sno);

		return list;
	}

	public int forgotPassword(BloodDonar donar) {
		int num = 0;
		if (donar.getPassword().equals(donar.getConfirmPassword())) {
			String update = "update donar set password = ? where mobilenumber=?";
			num = jdbcTemplate.update(update, donar.getPassword(), donar.getMobileNumber());
		}
		return num;
	}
	

	public int edit(BloodDonar donar) {
		String select = "select * from donar where sno=?";
		BloodDonar bloodDonar = jdbcTemplate.queryForObject(select, new BloodDonarRowMapperImp(), sno);
		String firstName;
		String lastName;
		String dob;
		String gender;
		String mobileNumber;
		String aadharNumber;
		String bloodGroup;
		String state;
		String city;
		String pincode;
		String mail;
		
		if (donar.getFirstName().isEmpty()) {
			firstName = bloodDonar.getFirstName();
		} else {
			firstName = donar.getLastName();
		}
		if (donar.getLastName().isEmpty()) {
			lastName = bloodDonar.getLastName();
		} else {
			lastName = donar.getLastName();
		}
		if (donar.getDob().isEmpty()) {
			dob = bloodDonar.getDob();
		} else {
			dob = donar.getDob();
		}
		if (donar.getGender().equals("--Gender--")) {
			gender = bloodDonar.getGender();
		} else {
			gender = donar.getGender();
		}
		if (donar.getMobileNumber().isEmpty()) {
			mobileNumber = bloodDonar.getMobileNumber();
		} else {
			mobileNumber = donar.getMobileNumber();
		}
		if (donar.getAadharNumber().isEmpty()) {
			aadharNumber = bloodDonar.getAadharNumber();
		} else {
			aadharNumber = donar.getAadharNumber();
		}
		if (donar.getBloodGroup().equals("--select--")) {
			bloodGroup = bloodDonar.getBloodGroup();
		} else {
			bloodGroup = donar.getBloodGroup();
		}
		if (donar.getState().isEmpty()) {
			state = bloodDonar.getState();
		} else {
			state = donar.getState();
		}
		if (donar.getCity().isEmpty()) {
			city = bloodDonar.getCity();
		} else {
			city = donar.getCity();
		}
		if (donar.getPincode().isEmpty()) {
			pincode = bloodDonar.getPincode();
		} else {
			pincode = donar.getPincode();
		}
		if (donar.getMail().isEmpty()) {
			mail = bloodDonar.getMail();
		} else {
			mail = donar.getMail();
		}
		if (donar.getMobileNumber().isEmpty()) {
			mobileNumber = bloodDonar.getMobileNumber();
		} else {
			mobileNumber = donar.getMobileNumber();
		}
		
		String update = "update donar set firstname = ?, lastname=?, gender=?, dob=?, mobilenumber=?, aadharnumber=?, bloodgroup=?, state=?, city=?, pincode=?, email=? where sno=?";
		int num = jdbcTemplate.update(update, firstName, lastName, gender,dob, mobileNumber, aadharNumber, bloodGroup, state, city, pincode, mail, sno);
		return num;
	}

	public BloodDonar profile(BloodDonar donar) {
		String select = "select * from donar where sno=?";
		BloodDonar bloodDonar = jdbcTemplate.queryForObject(select, new BloodDonarRowMapperImp(), sno);
		return bloodDonar;
		
	}
}