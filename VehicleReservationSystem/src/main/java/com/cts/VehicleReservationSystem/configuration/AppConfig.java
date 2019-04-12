package com.cts.VehicleReservationSystem.configuration;

import static org.hibernate.cfg.AvailableSettings.C3P0_ACQUIRE_INCREMENT;
import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_MAX_STATEMENTS;
import static org.hibernate.cfg.AvailableSettings.C3P0_MIN_SIZE;
import static org.hibernate.cfg.AvailableSettings.C3P0_TIMEOUT;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@PropertySource("classpath:db.properties")
@EnableTransactionManagement
@ComponentScans(value = {@ComponentScan("com.cts.VehicleReservationSystem.dao"),
		@ComponentScan("com.cts.VehicleReservationSystem.service")})

public class AppConfig {
	
	@Autowired
	private Environment environment;
	
	@Bean("sessionFactory")
	public LocalSessionFactoryBean getSessionFactory(){
		LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
		Properties properties = new Properties();
		properties.put(org.hibernate.cfg.Environment.DRIVER,environment.getProperty("mysql.driver"));
		properties.put(org.hibernate.cfg.Environment.URL, environment.getProperty("mysql.url"));
		properties.put(org.hibernate.cfg.Environment.USER, environment.getProperty("mysql.user"));
		properties.put(org.hibernate.cfg.Environment.PASS, environment.getProperty("mysql.password"));
		//hibernate settings
		
		properties.put(org.hibernate.cfg.Environment.SHOW_SQL, environment.getProperty("hibernate.show_sql"));
		properties.put(org.hibernate.cfg.Environment.HBM2DDL_AUTO, environment.getProperty("hibernate.hbm2ddl.auto"));
		
		// Setting C3P0 properties
		properties.put(C3P0_MIN_SIZE, 
				environment.getProperty("hibernate.c3p0.min_size"));
		properties.put(C3P0_MAX_SIZE, 
				environment.getProperty("hibernate.c3p0.max_size"));
		properties.put(C3P0_ACQUIRE_INCREMENT,
				environment.getProperty("hibernate.c3p0.acquire_increment"));
		properties.put(C3P0_TIMEOUT, 
				environment.getProperty("hibernate.c3p0.timeout"));
		properties.put(C3P0_MAX_STATEMENTS, 
				environment.getProperty("hibernate.c3p0.max_statements"));
		
		sessionFactoryBean.setHibernateProperties(properties);
//		sessionFactoryBean.setAnnotatedClasses(Login.class);
		sessionFactoryBean.setPackagesToScan("com.cts.VehicleReservationSystem.bean");
		return sessionFactoryBean;
		
		
		
		
		
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager(){
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(getSessionFactory().getObject());
		return transactionManager;
	}
	
	
	
		
}


//class used for config purpose @ ne ye btaya
//ComponentScan(value = "com.cts.product") aise be likh skte h