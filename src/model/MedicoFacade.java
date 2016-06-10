package model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless(name="medicoFacade")
public class MedicoFacade {
	@PersistenceContext(unitName= "siw-progetto")
	private EntityManager em;
	
	
	public Medico createMedico(String nome, String cognome, String specializzazione){
		Medico medico = new Medico(nome, cognome, specializzazione);
		em.persist(medico);
		return medico;
	}

	
	public Medico getMedico(Long id) {
	    Medico medico = em.find(Medico.class, id);
		return medico;
	}
	
	public List<Medico> getAllMedici() {
        CriteriaQuery<Medico> cq = em.getCriteriaBuilder().createQuery(Medico.class);
        cq.select(cq.from(Medico.class));
        List<Medico> medici = em.createQuery(cq).getResultList();
		return medici;
	}
	
	public void updateMedico(Medico medico) {
        em.merge(medico);
	}
	
	public Medico searchByName(String nome, String cognome) {
		try{
		    Query q = em.createQuery("SELECT m FROM Medico m WHERE m.nome='"+ nome + "' AND m.cognome='"+cognome+"'");
		    Medico m = (Medico)q.getSingleResult();
            return m;
		}
		catch(NoResultException e) {
	        return null;
	    }
	}

}
