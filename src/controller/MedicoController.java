package controller;


import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.Medico;
import model.MedicoFacade;

@ManagedBean
@SessionScoped
public class MedicoController {
	
	
	@EJB
	private MedicoFacade medicoFacade;
	
	private Long id;

	private String nome;
	private String cognome;
	private String specializzazione;
	
	private Medico medico;
	private List<Medico> medici;
	
	public String createMedico() {
		this.medico = medicoFacade.createMedico(nome, cognome, specializzazione);
		return "medico"; 
	}

	public MedicoFacade getMedicoFacade() {
		return medicoFacade;
	}

	public void setMedicoFacade(MedicoFacade medicoFacade) {
		this.medicoFacade = medicoFacade;
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

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getSpecializzazione() {
		return specializzazione;
	}

	public void setSpecializzazione(String specializzazione) {
		this.specializzazione = specializzazione;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public List<Medico> getMedici() {
		this.medici = medicoFacade.getAllMedici();
		return medici;
	}

	public void setMedici(List<Medico> medici) {
		this.medici = medici;
	}
	
	

}
