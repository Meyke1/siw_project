package model;

//import java.util.ArrayList;
//import java.util.List;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
//import javax.persistence.OneToMany;
import javax.persistence.OneToMany;

@Entity
public class TipoEsame {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false)
	private String nome;
	private String descrizione;
	private Long price;
	
	@Column(nullable = false)
	private String code;
	
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn (name = "tipoEsame_id")
    private List<Prerequisito> prerequisiti;
	
	
	
	
	public TipoEsame() {
	}
	
	
	
	
	public TipoEsame(String nome, String descrizione, Long price, String code) {
		super();
		this.nome = nome;
		this.descrizione = descrizione;
		this.price = price;
		this.code = code;
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




	public List<Prerequisito> getPrerequisiti() {
		return prerequisiti;
	}




	public void setPrerequisiti(List<Prerequisito> prerequisiti) {
		this.prerequisiti = prerequisiti;
	}

	
	


	
}
