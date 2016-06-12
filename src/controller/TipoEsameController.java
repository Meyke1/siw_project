package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.Prerequisito;
import model.TipoEsame;
import model.TipoEsameFacade;

@ManagedBean
public class TipoEsameController {
		
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String descrizione;
	private Long price;
	private String code;
	private TipoEsame tp;
	private List<TipoEsame> tps;
	private List<Prerequisito> prerequisiti;
	
	@EJB
	private TipoEsameFacade facade;
	
	public String createTipoEsame(){
		this.tp = facade.insertTipoEsame(nome, descrizione, price, code);
		return "tipoEsame";
	}

	public String listTipoEsami(){
		this.tps = facade.getAllTipoEsame();
		return "tipoEsami"; 
	}
	
	public String findTipoEsame() {
		this.tp = facade.getTipoEsame(id);
		return "tipoEsame";
	}
	
	public String findTipoEsame(Long id) {
		this.tp = facade.getTipoEsame(id);
		return "tipoEsame";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public void setPrice(Long price) {
		this.price = price;
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

	public List<TipoEsame> getTps() {
		this.tps = facade.getAllTipoEsame();
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

	public List<Prerequisito> getPrerequisiti() {
		return prerequisiti;
	}

	public void setPrerequisiti(List<Prerequisito> prerequisiti) {
		this.prerequisiti = prerequisiti;
	}
	
	
	
	




	
	
}
