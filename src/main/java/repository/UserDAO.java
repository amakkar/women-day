package repository;

import java.util.List;

import javax.transaction.Transactional;

import model.User;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public UserDAO() {
		
	}

	public UserDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	/**
	 * Get List of all users
	 * @return list of users
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> getAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(User.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}
	
	/**
	 * Add or update a user into db
	 * @param user user to add or update.
	 */
	@Transactional
	public void addOrUpdate(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	}

}
