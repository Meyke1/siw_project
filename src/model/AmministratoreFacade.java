package model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless(name="amministratoreFacade")
public class AmministratoreFacade {
	
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	public Amministratore validate (String username, String password){
		Query q = em.createQuery("SELECT a FROM Amministratore a WHERE a.username='"+ username + "' AND a.password='"+password+"'");
		Amministratore a = (Amministratore)q.getSingleResult();
		return a;
	}
	
	
	public void updateAmministratore(Amministratore amministratore) {
        em.merge(amministratore);
	}
	
	

}
