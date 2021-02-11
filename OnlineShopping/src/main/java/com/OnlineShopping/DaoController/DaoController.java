package com.OnlineShopping.DaoController;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.OnlineShopping.Model.RegisteredUser;

@Component
public class DaoController {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void registeringUser(RegisteredUser user) {
		System.out.println("****Saving user*****");
		this.hibernateTemplate.saveOrUpdate(user);
	}

	public Boolean AllUserName(String name, String passw) {
		//System.out.println(name + "   " + passw);

		String qry = "from RegisteredUser";

		Boolean b = false;
		Session session = hibernateTemplate.getSessionFactory().openSession();
		Query createQuery = session.createQuery(qry);
		List<RegisteredUser> list = createQuery.list();
		for (RegisteredUser user : list) {
			//System.out.println(user.getName() + "  " + user.getPhoneno());
			if (name.equals(user.getName()) && passw.equals(user.getPassword())) {
				System.out.println(user.getName() + " : " + user.getEmail() + " : " + user.getPhoneno());
				b = true;
			}
			
		}

		session.close();
		return b;

	}

	public RegisteredUser UserDetails(int id) {
		RegisteredUser user_details = this.hibernateTemplate.get(RegisteredUser.class, id);
		return user_details;
	}
}
