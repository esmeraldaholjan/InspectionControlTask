package dao;

public class Proizvodi {
	
	private int idProizvoda;
	private String nazivProizvoda;
	private String proizvodjac;
	private int serijskiBroj;
	private String zemljaPorijekla;
	private String opis;

	public int getIdProizvoda() {
		return idProizvoda;
	}
	public void setIdProizvoda(int idProizvoda) {
		this.idProizvoda = idProizvoda;
	}
	public String getNazivProizvoda() {
		return nazivProizvoda;
	}
	public void setNazivProizvoda(String nazivProizvoda) {
		this.nazivProizvoda = nazivProizvoda;
	}
	public String getProizvodjac() {
		return proizvodjac;
	}
	public void setProizvodjac(String proizvodjac) {
		this.proizvodjac = proizvodjac;
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
	public String getOpis() {
		return opis;
	}
	public void setOpis(String opis) {
		this.opis = opis;
	}

}
