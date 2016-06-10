package model;


import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless
public class EsameFacade {
	@PersistenceContext(unitName= "siw-progetto")
	private EntityManager em;
	
	public Esame createEsame(Paziente paziente, TipoEsame tipoEsame, String code, Date dataPrenotazione) {
		Esame esame = new Esame(paziente, tipoEsame, code, dataPrenotazione);
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
	
	//si poteva usare anche CriteriaBuilder. NOTA: la query deve essere tutta stringata. Altimenti convertire (es Long-->String)
	@SuppressWarnings("unchecked")
	public List<Esame> getAllEsamiMedico(Medico medico) {
		Query q = em.createQuery("SELECT e FROM Esame e WHERE e.medico.nome='"+ medico.getNome() + "' AND e.medico.cognome='"+ medico.getCognome() + "'");
        List<Esame> esami = q.getResultList();
		return esami;
	}
	
	public Esame findEsame(String code){
		Query q = em.createQuery("SELECT e FROM Esame e WHERE e.code='"+ code + "'");
		Esame e = (Esame)q.getSingleResult();
		return e;
	}
	

}
