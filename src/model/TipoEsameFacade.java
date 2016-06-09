package model;


import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless
public class TipoEsameFacade {
	
	@PersistenceContext(unitName = "siw-progetto")
	private EntityManager em;
	
	public TipoEsame insertTipoEsame(String nome, String descrizione, Long prezzo, String code){
		TipoEsame tipoEsame=new TipoEsame(nome, descrizione, prezzo, code);
		em.persist(tipoEsame);
		return tipoEsame;
	}
	
	public void updateTipoEsame(TipoEsame tipoEsame){
		em.merge(tipoEsame);
	}
	
	public TipoEsame getTipoEsame(Long id) {
		TipoEsame tipoEsame = em.find(TipoEsame.class, id);
		return tipoEsame;
	}
	
	public List<TipoEsame> getAllTipoEsame() {
		CriteriaQuery<TipoEsame> cq = em.getCriteriaBuilder().createQuery(TipoEsame.class);
		cq.select(cq.from(TipoEsame.class));
		List<TipoEsame> tipiEsami = em.createQuery(cq).getResultList();
		return tipiEsami;
	}
	
	public TipoEsame findTipoEsame(String code){
		Query q = em.createQuery("SELECT t FROM TipoEsame t WHERE t.code='"+ code + "'");
		TipoEsame t = (TipoEsame)q.getSingleResult();
		return t;
	}
	

}
