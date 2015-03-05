package repository;

import java.util.List;

import javax.transaction.Transactional;

import model.Item;
import model.User;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDAO {
	
	@Autowired
    private SessionFactory sessionFactory;

	public ItemDAO() {
		
	}
	
	public ItemDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	/**
	 * Get List of all items
	 * @return list of items
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Item> getAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Item.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Item> getAll(String locality, String city) {
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Item.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}
	
	/**
	 * Add or update a item into db
	 * @param item item to add or update.
	 */
	@Transactional
	public void addOrUpdate(Item item) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(item);
	}
}
