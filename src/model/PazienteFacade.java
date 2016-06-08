package model;





import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless(name="pazienteFacade")
public class PazienteFacade {
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	


	public EntityManager getEm() {
		return em;
	}


	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	public Paziente createPaziente(String nome, String cognome, Date dataDiNascita, Date dataIscrizione, String indirizzo, String username, String password){
		Paziente paziente = new Paziente(nome, cognome, dataDiNascita, dataIscrizione, indirizzo, username, password);
		em.persist(paziente);
		return paziente;
	}

	public void addEsame(Paziente paziente, Esame esame) {
		paziente.getEsami().add(esame);
		em.merge(paziente);
	}
	
	public Paziente getPaziente(String code){
		Query q = em.createQuery("SELECT p FROM Paziente p WHERE p.code='"+ code + "'");
		Paziente p = (Paziente)q.getSingleResult();
		return p;
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
