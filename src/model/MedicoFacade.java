package model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless(name="medicoFacade")
public class MedicoFacade {
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	
	public Medico getMedico(String code){
		Query q = em.createQuery("SELECT m FROM Medico m WHERE m.code='"+ code + "'");
		Medico m = (Medico)q.getSingleResult();
		return m;
	}

}
