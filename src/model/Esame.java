package model;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
//import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Esame {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false)
	private String code;
	
	@Temporal (TemporalType.TIMESTAMP)
	private Date creationTime;
	@ManyToOne
	@JoinColumn (name="tipoEsame_id")
	private TipoEsame tipoEsame;
	
	@Temporal (TemporalType.TIMESTAMP)
	private Date dataPrenotazione;

	@OneToMany (fetch = FetchType.EAGER, cascade = {CascadeType.MERGE})
    @JoinColumn (name = "esame_id")
	private List<RisultatoEsame> risultati;
	

	@ManyToOne
	private Medico medico;
	
	@ManyToOne
	private Paziente paziente;
	
	
	public Esame(){}

	public Esame(Paziente paziente, TipoEsame tipoEsame, String code, Date dataPrenotazione) {
		super();
		//this.medico = medico;
		this.paziente = paziente;
		this.tipoEsame = tipoEsame;
		this.code = code;
		this.dataPrenotazione = dataPrenotazione;
		this.risultati = new LinkedList<>();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public TipoEsame getTipoEsame() {
		return tipoEsame;
	}

	public void setTipoEsame(TipoEsame tipoEsame) {
		this.tipoEsame = tipoEsame;
	}
/*
	public RisultatoEsame getRisultato() {
		return risultato;
	}

	public void setRisultato(RisultatoEsame risultato) {
		this.risultato = risultato;
	}
*/
	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public Paziente getPaziente() {
		return paziente;
	}

	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}

	public Date getDataPrenotazione() {
		return dataPrenotazione;
	}

	public void setDataPrenotazione(Date dataPrenotazione) {
		this.dataPrenotazione = dataPrenotazione;
	}

	public List<RisultatoEsame> getRisultati() {
		return risultati;
	}

	public void setRisultati(List<RisultatoEsame> risultati) {
		this.risultati = risultati;
	}
	
	public void addRisultato(RisultatoEsame risultato){
		this.risultati.add(risultato);
	}
	
	
	
	
	
	
	
	

}
