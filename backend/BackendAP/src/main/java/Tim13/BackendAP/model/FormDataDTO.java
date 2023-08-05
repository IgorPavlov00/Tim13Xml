package Tim13.BackendAP.model;


public class FormDataDTO {
    private String tip_korisnika;
    private String ime;
    private String prezime;
    private String adresa;
    private String mesto;
    private String drzavljanstvo;
    private String telefon1;
    private String email1;
    private String poslovno_ime;
    private String sediste_nosioca_autorsko_prava;
    private String telefon;
    private String email;
    private String pseudonim;
    private boolean punomocnik;
    private String punomocnik_ime;
    private String punomocnik_prezime;
    private String punomocnik_adresa;
    private String punomocnik_mesto;
    private String naslov;
    private String alternativni_naslov;
    private String naslov_izvornog_dela;
    private String autor_izvornog_dela;
    private String vrsta_dela;
    private String forma_zapisa;
    private String autorskoDeloStvorenoURadnomOdnosu;
    private String nacin_koriscenja;
    private String autori_zivi;
    private String imena_preminulih_autora;
    private String godina_smrti;
    private  String autorPodnosioc;

    public FormDataDTO(){

    }

    public FormDataDTO(String tip_korisnika, String autorPodnosioc,String ime, String prezime, String adresa, String drzavljanstvo,String punomocnik_mesto, String telefon1, String email1, String poslovno_ime, String sediste_nosioca_autorsko_prava, String telefon, String email, String pseudonim, boolean punomocnik, String punomocnik_ime, String punomocnik_prezime, String punomocnik_adresa, String naslov, String alternativni_naslov, String naslov_izvornog_dela, String autor_izvornog_dela, String vrsta_dela, String forma_zapisa, String autorskoDeloStvorenoURadnomOdnosu, String nacin_koriscenja, String autori_zivi, String imena_preminulih_autora, String godina_smrti,String mesto) {
        this.tip_korisnika = tip_korisnika;
        this.ime = ime;
        this.prezime = prezime;
        this.adresa = adresa;
        this.mesto=mesto;
        this.drzavljanstvo = drzavljanstvo;
        this.telefon1 = telefon1;
        this.email1 = email1;
        this.poslovno_ime = poslovno_ime;
        this.sediste_nosioca_autorsko_prava = sediste_nosioca_autorsko_prava;
        this.telefon = telefon;
        this.email = email;
        this.pseudonim = pseudonim;
        this.punomocnik = punomocnik;
        this.punomocnik_ime = punomocnik_ime;
        this.punomocnik_prezime = punomocnik_prezime;
        this.punomocnik_adresa = punomocnik_adresa;
        this.naslov = naslov;
        this.alternativni_naslov = alternativni_naslov;
        this.naslov_izvornog_dela = naslov_izvornog_dela;
        this.autor_izvornog_dela = autor_izvornog_dela;
        this.vrsta_dela = vrsta_dela;
        this.forma_zapisa = forma_zapisa;
        this.autorskoDeloStvorenoURadnomOdnosu = autorskoDeloStvorenoURadnomOdnosu;
        this.nacin_koriscenja = nacin_koriscenja;
        this.autori_zivi = autori_zivi;
        this.imena_preminulih_autora = imena_preminulih_autora;
        this.godina_smrti = godina_smrti;
        this.autorPodnosioc=autorPodnosioc;
        this.punomocnik_mesto=punomocnik_mesto;
    }

    public String getAutorPodnosioc() {
        return autorPodnosioc;
    }

    public void setAutorPodnosioc(String autorPodnosioc) {
        this.autorPodnosioc = autorPodnosioc;
    }

    public String getTip_korisnika() {
        return tip_korisnika;
    }

    public void setTip_korisnika(String tip_korisnika) {
        this.tip_korisnika = tip_korisnika;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getAdresa() {
        return adresa;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public String getDrzavljanstvo() {
        return drzavljanstvo;
    }

    public void setDrzavljanstvo(String drzavljanstvo) {
        this.drzavljanstvo = drzavljanstvo;
    }

    public String getTelefon1() {
        return telefon1;
    }

    public void setTelefon1(String telefon1) {
        this.telefon1 = telefon1;
    }

    public String getEmail1() {
        return email1;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public String getPoslovno_ime() {
        return poslovno_ime;
    }

    public void setPoslovno_ime(String poslovno_ime) {
        this.poslovno_ime = poslovno_ime;
    }

    public String getSediste_nosioca_autorsko_prava() {
        return sediste_nosioca_autorsko_prava;
    }

    public void setSediste_nosioca_autorsko_prava(String sediste_nosioca_autorsko_prava) {
        this.sediste_nosioca_autorsko_prava = sediste_nosioca_autorsko_prava;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPseudonim() {
        return pseudonim;
    }

    public void setPseudonim(String pseudonim) {
        this.pseudonim = pseudonim;
    }

    public boolean isPunomocnik() {
        return punomocnik;
    }

    public void setPunomocnik(boolean punomocnik) {
        this.punomocnik = punomocnik;
    }

    public String getPunomocnik_ime() {
        return punomocnik_ime;
    }

    public void setPunomocnik_ime(String punomocnik_ime) {
        this.punomocnik_ime = punomocnik_ime;
    }

    public String getPunomocnik_prezime() {
        return punomocnik_prezime;
    }

    public void setPunomocnik_prezime(String punomocnik_prezime) {
        this.punomocnik_prezime = punomocnik_prezime;
    }

    public String getPunomocnik_adresa() {
        return punomocnik_adresa;
    }

    public void setPunomocnik_adresa(String punomocnik_adresa) {
        this.punomocnik_adresa = punomocnik_adresa;
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public String getAlternativni_naslov() {
        return alternativni_naslov;
    }

    public void setAlternativni_naslov(String alternativni_naslov) {
        this.alternativni_naslov = alternativni_naslov;
    }

    public String getNaslov_izvornog_dela() {
        return naslov_izvornog_dela;
    }

    public void setNaslov_izvornog_dela(String naslov_izvornog_dela) {
        this.naslov_izvornog_dela = naslov_izvornog_dela;
    }

    public String getAutor_izvornog_dela() {
        return autor_izvornog_dela;
    }

    public void setAutor_izvornog_dela(String autor_izvornog_dela) {
        this.autor_izvornog_dela = autor_izvornog_dela;
    }

    public String getVrsta_dela() {
        return vrsta_dela;
    }

    public void setVrsta_dela(String vrsta_dela) {
        this.vrsta_dela = vrsta_dela;
    }

    public String getForma_zapisa() {
        return forma_zapisa;
    }

    public void setForma_zapisa(String forma_zapisa) {
        this.forma_zapisa = forma_zapisa;
    }

    public String getAutorskoDeloStvorenoURadnomOdnosu() {
        return autorskoDeloStvorenoURadnomOdnosu;
    }

    public void setAutorskoDeloStvorenoURadnomOdnosu(String autorskoDeloStvorenoURadnomOdnosu) {
        this.autorskoDeloStvorenoURadnomOdnosu = autorskoDeloStvorenoURadnomOdnosu;
    }

    public String getNacin_koriscenja() {
        return nacin_koriscenja;
    }

    public void setNacin_koriscenja(String nacin_koriscenja) {
        this.nacin_koriscenja = nacin_koriscenja;
    }

    public String getAutori_zivi() {
        return autori_zivi;
    }

    public void setAutori_zivi(String autori_zivi) {
        this.autori_zivi = autori_zivi;
    }

    public String getImena_preminulih_autora() {
        return imena_preminulih_autora;
    }

    public void setImena_preminulih_autora(String imena_preminulih_autora) {
        this.imena_preminulih_autora = imena_preminulih_autora;
    }

    public String getGodina_smrti() {
        return godina_smrti;
    }

    public void setGodina_smrti(String godina_smrti) {
        this.godina_smrti = godina_smrti;
    }

    public String getMesto() {
        return mesto;
    }

    public void setMesto(String mesto) {
        this.mesto = mesto;
    }

    public String getPunomocnik_mesto() {
        return punomocnik_mesto;
    }

    public void setPunomocnik_mesto(String punomocnik_mesto) {
        this.punomocnik_mesto = punomocnik_mesto;
    }

    @Override
    public String toString() {
        return "FormDataDTO{" +
                "tip_korisnika='" + tip_korisnika + '\'' +
                ", ime='" + ime + '\'' +
                ", prezime='" + prezime + '\'' +
                ", adresa='" + adresa + '\'' +
                ", mesto='" + mesto + '\'' +
                ", drzavljanstvo='" + drzavljanstvo + '\'' +
                ", telefon1='" + telefon1 + '\'' +
                ", email1='" + email1 + '\'' +
                ", poslovno_ime='" + poslovno_ime + '\'' +
                ", sediste_nosioca_autorsko_prava='" + sediste_nosioca_autorsko_prava + '\'' +
                ", telefon='" + telefon + '\'' +
                ", email='" + email + '\'' +
                ", pseudonim='" + pseudonim + '\'' +
                ", punomocnik=" + punomocnik +
                ", punomocnik_ime='" + punomocnik_ime + '\'' +
                ", punomocnik_prezime='" + punomocnik_prezime + '\'' +
                ", punomocnik_adresa='" + punomocnik_adresa + '\'' +
                ", punomocnik_mesto='" + punomocnik_mesto + '\'' +
                ", naslov='" + naslov + '\'' +
                ", alternativni_naslov='" + alternativni_naslov + '\'' +
                ", naslov_izvornog_dela='" + naslov_izvornog_dela + '\'' +
                ", autor_izvornog_dela='" + autor_izvornog_dela + '\'' +
                ", vrsta_dela='" + vrsta_dela + '\'' +
                ", forma_zapisa='" + forma_zapisa + '\'' +
                ", autorskoDeloStvorenoURadnomOdnosu='" + autorskoDeloStvorenoURadnomOdnosu + '\'' +
                ", nacin_koriscenja='" + nacin_koriscenja + '\'' +
                ", autori_zivi='" + autori_zivi + '\'' +
                ", imena_preminulih_autora='" + imena_preminulih_autora + '\'' +
                ", godina_smrti='" + godina_smrti + '\'' +
                ", autorPodnosioc='" + autorPodnosioc + '\'' +
                '}';
    }
}
