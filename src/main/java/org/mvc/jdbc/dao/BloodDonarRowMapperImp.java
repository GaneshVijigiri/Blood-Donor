package org.mvc.jdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.mvc.jdbc.config.BloodDonar;
import org.springframework.jdbc.core.RowMapper;

public class BloodDonarRowMapperImp implements RowMapper<BloodDonar> {

	public BloodDonar mapRow(ResultSet rs, int rowNum) throws SQLException {
		BloodDonar donar = new BloodDonar();
		donar.setSno(rs.getInt(1));
		donar.setFirstName(rs.getString(2));
		donar.setLastName(rs.getString(3));
		donar.setGender(rs.getString(4));
		donar.setDob(rs.getString(5));
		donar.setMobileNumber(rs.getString(6));
		donar.setAadharNumber(rs.getString(7));
		donar.setBloodGroup(rs.getString(8));
		donar.setState(rs.getString(9));
		donar.setCity(rs.getString(10));
		donar.setPincode(rs.getString(11));
		donar.setMail(rs.getString(12));
		donar.setPassword(rs.getString(13));
		return donar;
	}
}
