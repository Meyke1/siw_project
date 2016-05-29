package model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless(name="pazienteFacade")
public class PazienteFacade {
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	
	public Paziente validate (String userName, String password){
		Query q = em.createQuery("SELECT p FROM Paziente p WHERE p.userName='"+ userName + "' AND p.password='"+password+"'");
		Paziente p = (Paziente)q.getSingleResult();
		return p;
	}


	public EntityManager getEm() {
		return em;
	}


	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	public Paziente createPaziente(String firstName, String lastName, String userName, String password){
		Paziente paziente = new Paziente(firstName, lastName, userName, password);
		em.persist(paziente);
		return paziente;
	}

	public void addEsame(Paziente paziente, Esame esame) {
		paziente.getEsami().add(esame);
		em.merge(paziente);
	}
	
	public Paziente findPaziente(String code){
		Query q = em.createQuery("SELECT p FROM Paziente p WHERE p.code='"+ code + "'");
		Paziente p = (Paziente)q.getSingleResult();
		return p;
	}

}
