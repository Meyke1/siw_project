package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Paziente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String firstName;

	@Column
	private String lastName;
	
	@Column(nullable=false, unique=true)
	private String userName;
	
	@Column(nullable = false)
	private String password;
	
	@OneToMany(mappedBy = "paziente")
	private List<Esame> esami;
	
	public Paziente(){}

	public Paziente(String userName, String firstName, String lastName, String password) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.userName = userName;
	}
	
	public boolean verificaPassword(String password) {
		return this.password.equals(password);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Esame> getEsami() {
		return esami;
	}

	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	

	
	
	
	
	
	
	

}
