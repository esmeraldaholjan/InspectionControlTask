package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import dao.Detalji;
import dao.Kontrola;
import dao.KontrolaHandler;
import dao.Proizvodi;
import dao.ProizvodiHandler;
import dao.Tijelo;
import dao.TijeloHandler;
import util.DateConvertor;


@Controller
public class MainController extends HttpServlet {
	
	//Naslovna stranica
	@RequestMapping(value = "/")
	public ModelAndView homePage(HttpServletResponse response) throws IOException {
		ModelAndView model = new ModelAndView("Home");
		return model;
	}
	
	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public ModelAndView hmPage(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = null;
		model = new ModelAndView("Home");
		model.setViewName("Home");
		return model;
	}
	
	//Evidencija proizvoda
	@RequestMapping(value = "/Proizvodi", method = RequestMethod.GET)
	public ModelAndView evProducts(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Proizvodi") Proizvodi proizvod){	
		
		ModelAndView model = null;
		ProizvodiHandler phd = new ProizvodiHandler();
		model = new ModelAndView("Proizvodi");
		
		ArrayList<Proizvodi> tabelaProizvoda = new ArrayList<Proizvodi>();
		tabelaProizvoda = phd.getProducts();
		
		model.addObject("tabelaProizvoda", tabelaProizvoda);
		model.setViewName("Proizvodi");
		return model;
	}
	
	//Evidencija inspekcijskih kontrola
	@RequestMapping(value = "/Kontrola", method = RequestMethod.GET)
	public ModelAndView evControl(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Kontrola") Kontrola kontrola){	
		
		ModelAndView model = null;
		KontrolaHandler khd = new KontrolaHandler();
		model = new ModelAndView("Kontrola");
		
		ArrayList<Kontrola> tabelaKontrola = new ArrayList<Kontrola>();
		tabelaKontrola = khd.getControls();
		
		model.addObject("tabelaKontrola", tabelaKontrola);
		model.setViewName("Kontrola");
		return model;
	}
	
	//Evidencija inspekcijskih tijela
	@RequestMapping(value = "/Tijelo", method = RequestMethod.GET)
	public ModelAndView evBody(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Tijelo") Tijelo tijelo){	
		
		ModelAndView model = null;
		TijeloHandler thd = new TijeloHandler();
		model = new ModelAndView("Tijelo");
		
		ArrayList<Tijelo> tabelaTijela = new ArrayList<Tijelo>();
		tabelaTijela = thd.getBody();
		
		model.addObject("tabelaTijela", tabelaTijela);
		model.setViewName("Tijelo");
		return model;
	}
	
	
	
	//Dodati proizvod
	@RequestMapping(value = "/AddProduct")
	public ModelAndView addProduct(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Proizvodi") Proizvodi proizvod){	
		
		ModelAndView model = null;
		model = new ModelAndView("AddProduct");
		
		ProizvodiHandler phd = new ProizvodiHandler();
		int idProizvoda = proizvod.getIdProizvoda();
		String nazivProizvoda = proizvod.getNazivProizvoda();
		String proizvodjac = proizvod.getProizvodjac();
		int serijskiBroj = proizvod.getSerijskiBroj();
		String zemljaPorijekla = proizvod.getZemljaPorijekla();
		String opis = proizvod.getOpis();
		phd.addProducts(idProizvoda, nazivProizvoda, proizvodjac, serijskiBroj, zemljaPorijekla, opis);
		
		model.setViewName("AddProduct");
		return model;
	}
	
	//Izbrisati proizvod
	@RequestMapping(value = "/DeleteProduct")
	public String deleteProduct(@RequestParam String id, HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Proizvodi") Proizvodi proizvod){	
		
		ProizvodiHandler phd = new ProizvodiHandler();
		phd.deleteProducts(Integer.valueOf(id));
		
		return "redirect:/Proizvodi";
	}
	
	//Izmijeniti proizvod
	@RequestMapping(value = "/AdjustProduct", method = RequestMethod.GET)
	public ModelAndView adjustProduct(@RequestParam String id, HttpServletRequest request, HttpServletResponse response){	
		//@RequestParam String id, 
		ModelAndView model = null;
		model = new ModelAndView("AdjustProduct");
		
		ProizvodiHandler phd = new ProizvodiHandler();
		Proizvodi proizvod = phd.getProduct(Integer.valueOf(id));
		
		model.addObject("proizvod", proizvod);
		
		model.setViewName("AdjustProduct");
		return model;
	}
	
	@RequestMapping(value = "/AdjustProductExecute")
	public ModelAndView adjustProductExecute(@RequestParam String idProizvoda, @RequestParam String nazivProizvoda, @RequestParam String proizvodjac, @RequestParam String serijskiBroj, @RequestParam String zemljaPorijekla, @RequestParam String opis, HttpServletRequest request, HttpServletResponse response){	
		//@RequestParam String id, 
		ModelAndView model = null;
		model = new ModelAndView("AdjustProductExecute");
		
		ProizvodiHandler phd = new ProizvodiHandler();
		phd.adjustProducts(Integer.valueOf(idProizvoda), nazivProizvoda, proizvodjac, Integer.valueOf(serijskiBroj), zemljaPorijekla, opis);
		
		ArrayList<Proizvodi> tabelaProizvoda = new ArrayList<Proizvodi>();
		tabelaProizvoda = phd.getProducts();
		
		model.addObject("tabelaProizvoda", tabelaProizvoda);
		
		model.setViewName("Proizvodi");
		return model;
	}
	
	
	
	
	//Dodati kontrolu
	@RequestMapping(value = "/AddControl", method = RequestMethod.GET)
	public ModelAndView addControl(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Kontrola") Kontrola kontrola){	
		
		ModelAndView model = null;
		model = new ModelAndView("AddControl");
		
		KontrolaHandler khd = new KontrolaHandler();
		int idKontrole = kontrola.getIdKontrole();
		Date datum = kontrola.getDatum();
		int idTijela = kontrola.getIdTijela();
		int idProizvoda = kontrola.getIdProizvoda();
		String rezultatKontrole = kontrola.getRezultatKontrole();
		boolean proizvodSiguran = kontrola.isProizvodSiguran();
		khd.addControls(idKontrole, datum, idTijela, idProizvoda, rezultatKontrole, proizvodSiguran);
		
		model.setViewName("AddControl");
		return model;
	}
	
	//Izbrisati kontrolu
	@RequestMapping(value = "/DeleteControl")
	public String deleteProduct(@RequestParam String id, HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Kontrola") Kontrola kontrola){	
		
		KontrolaHandler khd = new KontrolaHandler();
		khd.deleteControls(Integer.valueOf(id));
		
		return "redirect:/Kontrola";
	}
	
	//Izmijeniti kontrolu	
	@RequestMapping(value = "/AdjustControl", method = RequestMethod.GET)
	public ModelAndView adjustControl(@RequestParam String id, HttpServletRequest request, HttpServletResponse response){	

		ModelAndView model = null;
		model = new ModelAndView("AdjustControl");
		
		KontrolaHandler khd = new KontrolaHandler();
		Kontrola kontrola= khd.getControl(Integer.valueOf(id));
		
		model.addObject("kontrola", kontrola);
		
		model.setViewName("AdjustControl");
		return model;
	}
	
	@RequestMapping(value = "/AdjustControlExecute")
	public ModelAndView adjustControlExecute(@RequestParam String idKontrole, @RequestParam Date datum, @RequestParam int idTijela, @RequestParam int idProizvoda, @RequestParam String rezultatKontrole, @RequestParam boolean proizvodSiguran, HttpServletRequest request, HttpServletResponse response){	
	
		ModelAndView model = null;
		model = new ModelAndView("AdjustControlExecute");
		
		KontrolaHandler khd = new KontrolaHandler();
		khd.adjustControls(Integer.valueOf(idKontrole), datum, Integer.valueOf(idTijela), Integer.valueOf(idProizvoda), rezultatKontrole, proizvodSiguran);
		
		ArrayList<Kontrola> tabelaKontrola = new ArrayList<Kontrola>();
		tabelaKontrola = khd.getControls();
		
		model.addObject("tabelaKontrola", tabelaKontrola);
		
		model.setViewName("Kontrola");
		return model;
	}
	
	//Prikaz detalja kontrole
	@RequestMapping(value = "/DetaljiKontrole")
	public ModelAndView chooseId(@RequestParam String id, @ModelAttribute Detalji detalji){
		
		ModelAndView model = null;
		model = new ModelAndView("DetaljiKontrole");
		
		KontrolaHandler khd = new KontrolaHandler();
		ArrayList<Detalji> tabelaDetalja = new ArrayList<Detalji>();
		tabelaDetalja = khd.getDetails(Integer.valueOf(id));
		
		model.addObject("tabelaDetalja", tabelaDetalja);
		model.setViewName("DetaljiKontrole");
		
		return model;
	}
	
	//Prikaz datuma kontrole sortiran
	@RequestMapping(value = "/KontrolaSort")
	public ModelAndView sortControl(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Kontrola kontrola1, @RequestParam String fromDate, @RequestParam String toDate) throws ParseException{
	
		ModelAndView model = null;
		model = new ModelAndView("KontrolaSort");
		
		KontrolaHandler khd = new KontrolaHandler();
		ArrayList<Kontrola> tabelaKontrolaSort = new ArrayList<Kontrola>();
		
		Date fromDate1 = (Date) DateConvertor.stringToSqlDate(fromDate);
		Date toDate1 = (Date) DateConvertor.stringToSqlDate(toDate);
		
		tabelaKontrolaSort = khd.getControlsSort(fromDate1, toDate1);
		
		model.addObject("tabelaKontrolaSort", tabelaKontrolaSort);
		model.setViewName("KontrolaSort");
		return model;
	}
	
}






