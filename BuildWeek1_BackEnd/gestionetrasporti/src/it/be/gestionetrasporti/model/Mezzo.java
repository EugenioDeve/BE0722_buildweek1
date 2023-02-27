package it.be.gestionetrasporti.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;

@Entity
public class Mezzo {

	@Id
	@SequenceGenerator(name = "mezzo_seq", sequenceName = "mezzo_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mezzo_seq")
	private Long id;
	
	private String codice;
	
	@Enumerated(EnumType.STRING)
	private TipoMezzo tipoMezzo;
	
	@OneToMany(mappedBy = "mezzo",cascade = CascadeType.ALL,orphanRemoval = true)
	@OrderBy(value = "dataInizio DESC")
	private List<StatoMezzo> listaStatoMezzo;
	
	@ManyToOne
	private Tratta trattaAssegnata;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCodice() {
		return codice;
	}
	public void setCodice(String codice) {
		this.codice = codice;
	}
	public TipoMezzo getTipoMezzo() {
		return tipoMezzo;
	}
	public void setTipoMezzo(TipoMezzo tipoMezzo) {
		this.tipoMezzo = tipoMezzo;
	}
	public Tratta getTrattaAssegnata() {
		return trattaAssegnata;
	}
	public void setTrattaAssegnata(Tratta trattaAssegnata) {
		this.trattaAssegnata = trattaAssegnata;
	}
	


	}
