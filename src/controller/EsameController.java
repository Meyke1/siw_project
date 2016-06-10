package controller;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.Esame;
import model.EsameFacade;
//import model.Medico;
//import model.MedicoFacade;
import model.Paziente;
import model.PazienteFacade;
import model.TipoEsame;
import model.TipoEsameFacade;

@ManagedBean
public class EsameController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String pid;
	private Paziente paziente;
	private String mid;
	//private Medico medico;
	private Esame esame;
	private List<Esame> esami;
	private String tid;
	private TipoEsame tipoEsame;
	private String code;
	private Date dataDiPrenotazione;

	@EJB
	private EsameFacade eFacade;
	@EJB
	private PazienteFacade pFacade;
	//@EJB
	//private MedicoFacade mFacade;
	@EJB
	private TipoEsameFacade tFacade;
	
	public String creaEsame(){
		this.paziente = this.pFacade.findPaziente(pid);
		//this.medico = this.mFacade.getMedico(mid);
		this.tipoEsame = this.tFacade.findTipoEsame(tid);
		this.esame = this.eFacade.createEsame(paziente, tipoEsame, code, new Date());
		return "esame"; 
	}
	
	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public TipoEsameFacade gettFacade() {
		return tFacade;
	}

	public void settFacade(TipoEsameFacade tFacade) {
		this.tFacade = tFacade;
	}

	public String listEsami() {
		this.esami = eFacade.getAllEsami();
		return "esamiPaziente"; 
	}

	public String findEsame() {
		this.esame = eFacade.getEsame(id);
		return "esame";
	}
	
	public String findEsame(Long id) {
		this.esame = eFacade.getEsame(id);
		return "esame";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public Paziente getPaziente() {
		return paziente;
	}

	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}
/*
	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}
*/
	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

	public List<Esame> getEsami() {
		return esami;
	}

	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}

	public TipoEsame getTipoEsame() {
		return tipoEsame;
	}

	public void setTipoEsame(TipoEsame tipoEsame) {
		this.tipoEsame = tipoEsame;
	}

	public EsameFacade geteFacade() {
		return eFacade;
	}

	public void seteFacade(EsameFacade eFacade) {
		this.eFacade = eFacade;
	}

	public PazienteFacade getpFacade() {
		return pFacade;
	}

	public void setpFacade(PazienteFacade pFacade) {
		this.pFacade = pFacade;
	}

	public Date getDataDiPrenotazione() {
		return dataDiPrenotazione;
	}

	public void setDataDiPrenotazione(Date dataDiPrenotazione) {
		this.dataDiPrenotazione = dataDiPrenotazione;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
/*
	public MedicoFacade getmFacade() {
		return mFacade;
	}

	public void setmFacade(MedicoFacade mFacade) {
		this.mFacade = mFacade;
	}
*/
	
}