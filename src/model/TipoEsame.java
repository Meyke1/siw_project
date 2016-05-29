package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class TipoEsame {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false)
	private String nome;
	private String descrizione;
	private Long prezzo;
	
	@Column(nullable = false)
	private String code;
	
	@Temporal (TemporalType.TIMESTAMP)
	private Date creationTime;
	
	@OneToMany(mappedBy = "tipoEsame")
	private List<Esame> esami;
	
	
	
	
	public TipoEsame() {
	}
	
	
	
	
	public TipoEsame(String nome, String descrizione, Long prezzo, String code, Date creationTime) {
		super();
		this.nome = nome;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.code = code;
		this.creationTime = creationTime;
		this.esami = new ArrayList<>(); 
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

	public Long getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Long prezzo) {
		this.prezzo = prezzo;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public List<Esame> getEsami() {
		return esami;
	}

	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}


	
}
