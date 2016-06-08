package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Esame {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Date dataEsecuzione;
	
	
	@Temporal (TemporalType.TIMESTAMP)
	private Date creationTime;
	@ManyToOne
	private TipoEsame tipoEsame;
	
	@OneToOne
	private RisultatoEsame risultato;
	
	@ManyToOne
	private Medico medico;
	
	@ManyToOne
	private Paziente paziente;
	
	
	public Esame(){}

	public Esame(Medico medico, Paziente paziente, TipoEsame tipoEsame) {
		super();
		this.medico = medico;
		this.paziente = paziente;
		this.tipoEsame = tipoEsame;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public Date getDataEsecuzione() {
		return dataEsecuzione;
	}

	public void setDataEsecuzione(Date dataEsecuzione) {
		this.dataEsecuzione = dataEsecuzione;
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

	public RisultatoEsame getRisultato() {
		return risultato;
	}

	public void setRisultato(RisultatoEsame risultato) {
		this.risultato = risultato;
	}

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
	
	
	
	

}
