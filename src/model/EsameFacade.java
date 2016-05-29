package model;

import java.util.Date;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless(name="esameFacade")
public class EsameFacade {
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	public Esame createEsame(String code, Medico medico, Paziente paziente, TipoEsame tipoEsame, Date creationTime) {
		Esame esame = new Esame(code, medico, paziente, tipoEsame, creationTime);
		em.persist(esame);
		return esame;
	}
	
	public Esame getEsame(Long id) {
	    Esame esame = em.find(Esame.class, id);
		return esame;
	}

	public void updateEsame(Esame esame) {
        em.merge(esame);
	}
	

}
