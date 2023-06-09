package org.mvc.jdbc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class Initializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] a = { Config.class };
		return a;
	}

	@Override
	protected String[] getServletMappings() {
		String[] str = { "/" };
		return str;
	}

}
