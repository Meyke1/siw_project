package model;



import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless
public class PazienteFacade {
	@PersistenceContext(unitName= "siw-progetto")
	private EntityManager em;
	
	public Paziente createPaziente(String nome, String cognome, Date dataDiNascita, Date dataIscrizione, String indirizzo, String username, String password, String code){
		Paziente paziente = new Paziente(nome, cognome, dataDiNascita, dataIscrizione, indirizzo, username, password, code);
		em.persist(paziente);
		return paziente;
	}

	public Paziente findPaziente(String code){
		Query q = em.createQuery("SELECT p FROM Paziente p WHERE p.code='"+ code + "'");
		Paziente p = (Paziente)q.getSingleResult();
		return p;
	}
	
	public Paziente getPaziente(Long id) {
	    Paziente paziente = em.find(Paziente.class, id);
		return paziente;
	}
	
	public List<Paziente> getAllPazienti() {
        CriteriaQuery<Paziente> cq = em.getCriteriaBuilder().createQuery(Paziente.class);
        cq.select(cq.from(Paziente.class));
        List<Paziente> pazienti = em.createQuery(cq).getResultList();
		return pazienti;
	}
	
	public void updatePaziente(Paziente paziente) {
        em.merge(paziente);
	}

}
