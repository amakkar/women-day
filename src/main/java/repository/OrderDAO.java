package repository;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public OrderDAO() {
		
	}

	public OrderDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

}
