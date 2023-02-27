package it.be.gestionetrasporti.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class StatoMezzo {

	@Id
	@SequenceGenerator(name = "statomezzo_seq", sequenceName = "statomezzo_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "statomezzo_seq")
	private Long id;
	
	private TipoStatoMezzo tipoStatoMezzo;
	
	private Date dataInizio;
	
	private Date dataFine;
	
	@ManyToOne
	private Mezzo mezzo;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public TipoStatoMezzo getTipoStatoMezzo() {
		return tipoStatoMezzo;
	}
	public void setTipoStatoMezzo(TipoStatoMezzo tipoStatoMezzo) {
		this.tipoStatoMezzo = tipoStatoMezzo;
	}
	public Date getDataInizio() {
		return dataInizio;
	}
	public void setDataInizio(Date dataInizio) {
		this.dataInizio = dataInizio;
	}
	public Date getDataFine() {
		return dataFine;
	}
	public void setDataFine(Date dataFine) {
		this.dataFine = dataFine;
	}
	public Mezzo getMezzo() {
		return mezzo;
	}
	public void setMezzo(Mezzo mezzo) {
		this.mezzo = mezzo;
	}
	


	}
