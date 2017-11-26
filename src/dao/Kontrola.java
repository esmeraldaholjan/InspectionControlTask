package dao;

import java.sql.Date;

public class Kontrola {
	
	private int idKontrole;
	private Date datum;
	private int idTijela;
	private int idProizvoda;
	private String rezultatKontrole;
	private boolean proizvodSiguran;
	
	public Kontrola(int idKontrole, Date datum, int idTijela, int idProizvoda, String rezultatKontrole,
			boolean proizvodSiguran) {
		super();
		this.idKontrole = idKontrole;
		this.datum = datum;
		this.idTijela = idTijela;
		this.idProizvoda = idProizvoda;
		this.rezultatKontrole = rezultatKontrole;
		this.proizvodSiguran = proizvodSiguran;
	}
	
	public Kontrola() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdKontrole() {
		return idKontrole;
	}
	public void setIdKontrole(int idKontrole) {
		this.idKontrole = idKontrole;
	}
	public Date getDatum() {
		return datum;
	}
	public void setDatum(Date datum) {
		this.datum = datum;
	}
	public int getIdTijela() {
		return idTijela;
	}
	public void setIdTijela(int idTijela) {
		this.idTijela = idTijela;
	}
	public int getIdProizvoda() {
		return idProizvoda;
	}
	public void setIdProizvoda(int idProizvoda) {
		this.idProizvoda = idProizvoda;
	}
	public String getRezultatKontrole() {
		return rezultatKontrole;
	}
	public void setRezultatKontrole(String rezultatKontrole) {
		this.rezultatKontrole = rezultatKontrole;
	}
	public boolean isProizvodSiguran() {
		return proizvodSiguran;
	}
	public void setProizvodSiguran(boolean proizvodSiguran) {
		this.proizvodSiguran = proizvodSiguran;
	}

	
}
