package dao;

import java.sql.Date;

public class Detalji {
	
	private String nazivProizvoda;
	private int serijskiBroj;
	private String zemljaPorijekla;
	private Date datum;
	private String rezultatKontrole;
	public String getNazivProizvoda() {
		return nazivProizvoda;
	}
	public void setNazivProizvoda(String nazivProizvoda) {
		this.nazivProizvoda = nazivProizvoda;
	}
	public int getSerijskiBroj() {
		return serijskiBroj;
	}
	public void setSerijskiBroj(int serijskiBroj) {
		this.serijskiBroj = serijskiBroj;
	}
	public String getZemljaPorijekla() {
		return zemljaPorijekla;
	}
	public void setZemljaPorijekla(String zemljaPorijekla) {
		this.zemljaPorijekla = zemljaPorijekla;
	}
	public Date getDatum() {
		return datum;
	}
	public void setDatum(Date datum) {
		this.datum = datum;
	}
	public String getRezultatKontrole() {
		return rezultatKontrole;
	}
	public void setRezultatKontrole(String rezultatKontrole) {
		this.rezultatKontrole = rezultatKontrole;
	}
	

}
