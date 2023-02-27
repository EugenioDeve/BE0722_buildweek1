package it.be.gestionetrasporti.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import it.be.gestionetrasporti.model.TitoloDiViaggio;
import it.be.gestionetrasporti.util.JpaUtil;

public class TitoloDiViaggioDAO {
	private static final Logger logger = LoggerFactory.getLogger(TitoloDiViaggioDAO.class);

	public void save(TitoloDiViaggio object) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		try {

			EntityTransaction transaction = em.getTransaction();
			transaction.begin();

			em.persist(object);

			transaction.commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();

			logger.error("Error saving object: " + object.getClass().getSimpleName(), ex);
			throw ex;

		} finally {
			em.close();
		}

	}

	public void refresh(TitoloDiViaggio object) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		try {

			em.refresh(object);

		} finally {
			em.close();
		}

	}

	public TitoloDiViaggio getById(Long id) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		try {

			return em.find(TitoloDiViaggio.class, id);

		} finally {
			em.close();
		}

	}

	public Boolean verificaTessera(String numeroTessera) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		try {

			Query query = em.createQuery(
					"SELECT abb FROM Abbonamento abb WHERE abb.tessera.numeroTessera = :numeroTessera AND abb.dataScadenza > CURRENT_DATE");

			query.setParameter("numeroTessera", numeroTessera);
			List resultList = query.getResultList();

			if (!resultList.isEmpty()) {
				return true;
			} else {
				return false;
			}

		} finally {
			em.close();
		}
	}

	public void delete(TitoloDiViaggio object) {
		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();
		try {

			EntityTransaction transaction = em.getTransaction();
			transaction.begin();

			em.remove(object);

			transaction.commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
			logger.error("Error deleting object: " + object.getClass().getSimpleName(), ex);
			throw ex;

		} finally {
			em.close();
		}

	}

}
