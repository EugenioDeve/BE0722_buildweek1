package it.be.gestionetrasporti.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public abstract class PuntoVendita {
	
	@Id
	@SequenceGenerator(name = "puntovendita_seq", sequenceName = "puntovendita_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "puntovendita_seq")
	private Long id;
	
	private String codice;

}
