package controller;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.Esame;
import model.EsameFacade;
import model.Medico;
import model.MedicoFacade;
import model.Paziente;
import model.PazienteFacade;
import model.RisultatoEsame;
import model.TipoEsame;
import model.TipoEsameFacade;

@ManagedBean
public class EsameController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String pid;
	private Paziente paziente;
	private Long mid;
	private Medico medico;
	private Esame esame;
	private List<Esame> esami;
	private List<Esame> esamiMedico;
	private String tid;
	private TipoEsame tipoEsame;
	private String code;
	private Date dataDiPrenotazione;
	private String nomeMedico;
	private String cognomeMedico;
	private String errore;
	private String nomeRisultato;
	private String valoreRisultato;
	private RisultatoEsame risultato;

	@EJB
	private EsameFacade eFacade;
	@EJB
	private PazienteFacade pFacade;
	@EJB
	private MedicoFacade mFacade;
	@EJB
	private TipoEsameFacade tFacade;
	
	public String creaEsame(){
		this.paziente = this.pFacade.findPaziente(pid);
		//this.medico = this.mFacade.getMedico(mid);
		this.tipoEsame = this.tFacade.findTipoEsame(tid);
		this.esame = this.eFacade.createEsame(paziente, tipoEsame, code, new Date());
		return "esame"; 
	}
	
	public String associaMedico(){
		this.medico = this.mFacade.getMedico(mid);
		this.esame = this.eFacade.findEsame(code);
		this.esame.setMedico(medico);
		this.eFacade.updateEsame(esame);
		return "esame";
	}
	
	public String inserisciRisultato(){
		this.esame = this.eFacade.findEsame(code);
		this.risultato = new RisultatoEsame(nomeRisultato, valoreRisultato);
		this.esame.addRisultato(risultato);
		this.eFacade.updateEsame(esame);
		return "esame";
		
	}
	
	public String findEsamiMedico(){
		this.medico = this.mFacade.searchByName(this.nomeMedico,this.cognomeMedico);
		if (medico==null){
			this.errore = "medico non presente nel db";
			return "esamiMedico";
			}
		else{
			this.errore = null;
			this.esamiMedico = eFacade.getAllEsamiMedico(medico);
			return "listEsamiMedico";
		}
		
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

	

	public Long getMid() {
		return mid;
	}

	public void setMid(Long mid) {
		this.mid = mid;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public MedicoFacade getmFacade() {
		return mFacade;
	}

	public void setmFacade(MedicoFacade mFacade) {
		this.mFacade = mFacade;
	}

	public Esame getEsame() {
		
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

	public List<Esame> getEsami() {
		this.esami = eFacade.getAllEsami();
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

	public String getNomeMedico() {
		return nomeMedico;
	}

	public void setNomeMedico(String nomeMedico) {
		this.nomeMedico = nomeMedico;
	}

	public String getCognomeMedico() {
		return cognomeMedico;
	}

	public void setCognomeMedico(String cognomeMedico) {
		this.cognomeMedico = cognomeMedico;
	}

	public List<Esame> getEsamiMedico() {
		return esamiMedico;
	}

	public void setEsamiMedico(List<Esame> esamiMedico) {
		this.esamiMedico = esamiMedico;
	}

	public String getErrore() {
		return errore;
	}

	public void setErrore(String errore) {
		this.errore = errore;
	}

	public String getNomeRisultato() {
		return nomeRisultato;
	}

	public void setNomeRisultato(String nomeRisultato) {
		this.nomeRisultato = nomeRisultato;
	}

	public String getValoreRisultato() {
		return valoreRisultato;
	}

	public void setValoreRisultato(String valoreRisultato) {
		this.valoreRisultato = valoreRisultato;
	}

	public RisultatoEsame getRisultato() {
		return risultato;
	}

	public void setRisultato(RisultatoEsame risultato) {
		this.risultato = risultato;
	}
	
	
	
	
	
	

	
}