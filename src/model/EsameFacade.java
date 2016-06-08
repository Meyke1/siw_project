package model;


import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;


@Stateless(name="esameFacade")
public class EsameFacade {
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	public Esame createEsame(Medico medico, Paziente paziente, TipoEsame tipoEsame) {
		Esame esame = new Esame(medico, paziente, tipoEsame);
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
	
	public List<Esame> getAllEsami() {
        CriteriaQuery<Esame> cq = em.getCriteriaBuilder().createQuery(Esame.class);
        cq.select(cq.from(Esame.class));
        List<Esame> esami = em.createQuery(cq).getResultList();
		return esami;
	}
	

}
