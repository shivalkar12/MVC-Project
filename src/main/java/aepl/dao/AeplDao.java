package aepl.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import aepl.dto.UserDTO;

@Component
public class AeplDao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("you");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public void save(UserDTO userDTO) {
		et.begin();
		em.persist(userDTO);
		et.commit();
	}
}
