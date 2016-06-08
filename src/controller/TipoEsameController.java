package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.TipoEsame;
import model.TipoEsameFacade;

@ManagedBean(name="tipoEsameController")
public class TipoEsameController {
	
	@EJB(beanName="tFacade")
	private TipoEsameFacade facade;
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String descrizione;
	private Long price;
	private String code;
	private TipoEsame tp;
	private List<TipoEsame> tps;
	
	
	public String createTipoEsame(){
		this.tp = facade.insertTipoEsame(nome, descrizione, price, code);
		return "tipoEsame";
	}
	
	public String listTipoEsami(){
		this.tps = facade.getAllTipoEsame();
	return "TipoEasmiList"; //da creare
}

	
	
	
	
	public List<TipoEsame> getTps() {
		return tps;
	}

	public void setTps(List<TipoEsame> tps) {
		this.tps = tps;
	}

	public TipoEsameFacade getFacade() {
		return facade;
	}
	




	public void setFacade(TipoEsameFacade facade) {
		this.facade = facade;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public String getDescrizione() {
		return descrizione;
	}



	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}



	public Long getPrice() {
		return price;
	}



	public void setPrice(Long prezzo) {
		this.price = prezzo;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	public TipoEsame getTp() {
		return tp;
	}



	public void setTp(TipoEsame tp) {
		this.tp = tp;
	}


}
