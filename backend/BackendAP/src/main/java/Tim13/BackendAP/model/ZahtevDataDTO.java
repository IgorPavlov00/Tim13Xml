package Tim13.BackendAP.model;

public class ZahtevDataDTO {
    private String sifra;
    private String datumPodnosenja;
    private String ime;
    private String prezime;
    private String ulicaPodnosioca;
    private String mestoPodnosioca;
    private String drzavljanstvoPodnosioca;
    private String pseudonimPodnosioca;
    private String telefonPodnosioca;
    private String emailPodnosioca;
    private String obrazac;
    private String vrstaAutorskogDela;
    private String formaAutorskogDela;
    private String stvorenoURadnomOdnosu;
    private String imeAutoraZiv;
    private String prezimeAutoraZiv;
    private String ulicaAutoraZiv;
    private String mestoAutoraZiv;
    private String drzavljanstvoAutoraZiv;
    private String pseudonimAutoraZiv;
    private String opisAutorskogDela;
    private String primerAutorskogDela;
    private String imePunomocnika;
    private String prezimePunomocnika;
    private String ulicaPunomocnika;
    private String mestoPunomocnika;
    private String tipkorisnika;
    private String naslov;
    private String alternativniNaslov;
    private String naslovIzvornogDela;
    private String nacinKoriscenja;
    private String autorIzvornogDela;
    private String poslovno_ime;

    private String ime_sluzbenika;
    private String prezime_sluzbenika;
    private String razlog;

    public ZahtevDataDTO(String sifra, String datumPodnosenja, String ime, String prezime, String ulicaPodnosioca,String ime_sluzbenika,String prezime_sluzbenika,String razlog, String mestoPodnosioca, String drzavljanstvoPodnosioca, String pseudonimPodnosioca, String telefonPodnosioca, String emailPodnosioca, String obrazac, String vrstaAutorskogDela, String formaAutorskogDela, String stvorenoURadnomOdnosu, String imeAutoraZiv, String prezimeAutoraZiv, String ulicaAutoraZiv, String mestoAutoraZiv, String drzavljanstvoAutoraZiv, String pseudonimAutoraZiv, String opisAutorskogDela, String primerAutorskogDela, String imePunomocnika, String prezimePunomocnika, String ulicaPunomocnika, String mestoPunomocnika, String tipkorisnika, String naslov, String alternativniNaslov, String naslovIzvornogDela, String nacinKoriscenja, String autorIzvornogDela, String poslovno_ime) {
        this.sifra = sifra;
        this.datumPodnosenja = datumPodnosenja;
        this.ime = ime;
        this.prezime = prezime;
        this.ulicaPodnosioca = ulicaPodnosioca;
        this.mestoPodnosioca = mestoPodnosioca;
        this.drzavljanstvoPodnosioca = drzavljanstvoPodnosioca;
        this.pseudonimPodnosioca = pseudonimPodnosioca;
        this.telefonPodnosioca = telefonPodnosioca;
        this.emailPodnosioca = emailPodnosioca;
        this.obrazac = obrazac;
        this.vrstaAutorskogDela = vrstaAutorskogDela;
        this.formaAutorskogDela = formaAutorskogDela;
        this.stvorenoURadnomOdnosu = stvorenoURadnomOdnosu;
        this.imeAutoraZiv = imeAutoraZiv;
        this.prezimeAutoraZiv = prezimeAutoraZiv;
        this.ulicaAutoraZiv = ulicaAutoraZiv;
        this.mestoAutoraZiv = mestoAutoraZiv;
        this.drzavljanstvoAutoraZiv = drzavljanstvoAutoraZiv;
        this.pseudonimAutoraZiv = pseudonimAutoraZiv;
        this.opisAutorskogDela = opisAutorskogDela;
        this.primerAutorskogDela = primerAutorskogDela;
        this.imePunomocnika = imePunomocnika;
        this.prezimePunomocnika = prezimePunomocnika;
        this.ulicaPunomocnika = ulicaPunomocnika;
        this.mestoPunomocnika = mestoPunomocnika;
        this.tipkorisnika = tipkorisnika;
        this.naslov = naslov;
        this.alternativniNaslov = alternativniNaslov;
        this.naslovIzvornogDela = naslovIzvornogDela;
        this.nacinKoriscenja = nacinKoriscenja;
        this.autorIzvornogDela = autorIzvornogDela;
        this.poslovno_ime = poslovno_ime;
        this.ime_sluzbenika=ime_sluzbenika;
        this.prezime_sluzbenika=prezime_sluzbenika;
        this.razlog=razlog;
    }

    public String getIme_sluzbenika() {
        return ime_sluzbenika;
    }

    public void setIme_sluzbenika(String ime_sluzbenika) {
        this.ime_sluzbenika = ime_sluzbenika;
    }

    public String getPrezime_sluzbenika() {
        return prezime_sluzbenika;
    }

    public void setPrezime_sluzbenika(String prezime_sluzbenika) {
        this.prezime_sluzbenika = prezime_sluzbenika;
    }

    public String getRazlog() {
        return razlog;
    }

    public void setRazlog(String razlog) {
        this.razlog = razlog;
    }

    public String getSifra() {
        return sifra;
    }

    public void setSifra(String sifra) {
        this.sifra = sifra;
    }

    public String getDatumPodnosenja() {
        return datumPodnosenja;
    }

    public void setDatumPodnosenja(String datumPodnosenja) {
        this.datumPodnosenja = datumPodnosenja;
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

    public String getUlicaPodnosioca() {
        return ulicaPodnosioca;
    }

    public void setUlicaPodnosioca(String ulicaPodnosioca) {
        this.ulicaPodnosioca = ulicaPodnosioca;
    }

    public String getMestoPodnosioca() {
        return mestoPodnosioca;
    }

    public void setMestoPodnosioca(String mestoPodnosioca) {
        this.mestoPodnosioca = mestoPodnosioca;
    }

    public String getDrzavljanstvoPodnosioca() {
        return drzavljanstvoPodnosioca;
    }

    public void setDrzavljanstvoPodnosioca(String drzavljanstvoPodnosioca) {
        this.drzavljanstvoPodnosioca = drzavljanstvoPodnosioca;
    }

    public String getPseudonimPodnosioca() {
        return pseudonimPodnosioca;
    }

    public void setPseudonimPodnosioca(String pseudonimPodnosioca) {
        this.pseudonimPodnosioca = pseudonimPodnosioca;
    }

    public String getTelefonPodnosioca() {
        return telefonPodnosioca;
    }

    public void setTelefonPodnosioca(String telefonPodnosioca) {
        this.telefonPodnosioca = telefonPodnosioca;
    }

    public String getEmailPodnosioca() {
        return emailPodnosioca;
    }

    public void setEmailPodnosioca(String emailPodnosioca) {
        this.emailPodnosioca = emailPodnosioca;
    }

    public String getObrazac() {
        return obrazac;
    }

    public void setObrazac(String obrazac) {
        this.obrazac = obrazac;
    }

    public String getVrstaAutorskogDela() {
        return vrstaAutorskogDela;
    }

    public void setVrstaAutorskogDela(String vrstaAutorskogDela) {
        this.vrstaAutorskogDela = vrstaAutorskogDela;
    }

    public String getFormaAutorskogDela() {
        return formaAutorskogDela;
    }

    public void setFormaAutorskogDela(String formaAutorskogDela) {
        this.formaAutorskogDela = formaAutorskogDela;
    }

    public String getStvorenoURadnomOdnosu() {
        return stvorenoURadnomOdnosu;
    }

    public void setStvorenoURadnomOdnosu(String stvorenoURadnomOdnosu) {
        this.stvorenoURadnomOdnosu = stvorenoURadnomOdnosu;
    }

    public String getImeAutoraZiv() {
        return imeAutoraZiv;
    }

    public void setImeAutoraZiv(String imeAutoraZiv) {
        this.imeAutoraZiv = imeAutoraZiv;
    }

    public String getPrezimeAutoraZiv() {
        return prezimeAutoraZiv;
    }

    public void setPrezimeAutoraZiv(String prezimeAutoraZiv) {
        this.prezimeAutoraZiv = prezimeAutoraZiv;
    }

    public String getUlicaAutoraZiv() {
        return ulicaAutoraZiv;
    }

    public void setUlicaAutoraZiv(String ulicaAutoraZiv) {
        this.ulicaAutoraZiv = ulicaAutoraZiv;
    }

    public String getMestoAutoraZiv() {
        return mestoAutoraZiv;
    }

    public void setMestoAutoraZiv(String mestoAutoraZiv) {
        this.mestoAutoraZiv = mestoAutoraZiv;
    }

    public String getDrzavljanstvoAutoraZiv() {
        return drzavljanstvoAutoraZiv;
    }

    public void setDrzavljanstvoAutoraZiv(String drzavljanstvoAutoraZiv) {
        this.drzavljanstvoAutoraZiv = drzavljanstvoAutoraZiv;
    }

    public String getPseudonimAutoraZiv() {
        return pseudonimAutoraZiv;
    }

    public void setPseudonimAutoraZiv(String pseudonimAutoraZiv) {
        this.pseudonimAutoraZiv = pseudonimAutoraZiv;
    }

    public String getOpisAutorskogDela() {
        return opisAutorskogDela;
    }

    public void setOpisAutorskogDela(String opisAutorskogDela) {
        this.opisAutorskogDela = opisAutorskogDela;
    }

    public String getPrimerAutorskogDela() {
        return primerAutorskogDela;
    }

    public void setPrimerAutorskogDela(String primerAutorskogDela) {
        this.primerAutorskogDela = primerAutorskogDela;
    }

    public String getImePunomocnika() {
        return imePunomocnika;
    }

    public void setImePunomocnika(String imePunomocnika) {
        this.imePunomocnika = imePunomocnika;
    }

    public String getPrezimePunomocnika() {
        return prezimePunomocnika;
    }

    public void setPrezimePunomocnika(String prezimePunomocnika) {
        this.prezimePunomocnika = prezimePunomocnika;
    }

    public String getUlicaPunomocnika() {
        return ulicaPunomocnika;
    }

    public void setUlicaPunomocnika(String ulicaPunomocnika) {
        this.ulicaPunomocnika = ulicaPunomocnika;
    }

    public String getMestoPunomocnika() {
        return mestoPunomocnika;
    }

    public void setMestoPunomocnika(String mestoPunomocnika) {
        this.mestoPunomocnika = mestoPunomocnika;
    }

    public String getTipkorisnika() {
        return tipkorisnika;
    }

    public void setTipkorisnika(String tipkorisnika) {
        this.tipkorisnika = tipkorisnika;
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public String getAlternativniNaslov() {
        return alternativniNaslov;
    }

    public void setAlternativniNaslov(String alternativniNaslov) {
        this.alternativniNaslov = alternativniNaslov;
    }

    public String getNaslovIzvornogDela() {
        return naslovIzvornogDela;
    }

    public void setNaslovIzvornogDela(String naslovIzvornogDela) {
        this.naslovIzvornogDela = naslovIzvornogDela;
    }

    public String getNacinKoriscenja() {
        return nacinKoriscenja;
    }

    public void setNacinKoriscenja(String nacinKoriscenja) {
        this.nacinKoriscenja = nacinKoriscenja;
    }

    public String getAutorIzvornogDela() {
        return autorIzvornogDela;
    }

    public void setAutorIzvornogDela(String autorIzvornogDela) {
        this.autorIzvornogDela = autorIzvornogDela;
    }

    public String getPoslovno_ime() {
        return poslovno_ime;
    }

    public void setPoslovno_ime(String poslovno_ime) {
        this.poslovno_ime = poslovno_ime;
    }

    @Override
    public String toString() {
        return "ZahtevDataDTO{" +
                "sifra='" + sifra + '\'' +
                ", datumPodnosenja='" + datumPodnosenja + '\'' +
                ", ime='" + ime + '\'' +
                ", prezime='" + prezime + '\'' +
                ", ulicaPodnosioca='" + ulicaPodnosioca + '\'' +
                ", mestoPodnosioca='" + mestoPodnosioca + '\'' +
                ", drzavljanstvoPodnosioca='" + drzavljanstvoPodnosioca + '\'' +
                ", pseudonimPodnosioca='" + pseudonimPodnosioca + '\'' +
                ", telefonPodnosioca='" + telefonPodnosioca + '\'' +
                ", emailPodnosioca='" + emailPodnosioca + '\'' +
                ", obrazac='" + obrazac + '\'' +
                ", vrstaAutorskogDela='" + vrstaAutorskogDela + '\'' +
                ", formaAutorskogDela='" + formaAutorskogDela + '\'' +
                ", stvorenoURadnomOdnosu='" + stvorenoURadnomOdnosu + '\'' +
                ", imeAutoraZiv='" + imeAutoraZiv + '\'' +
                ", prezimeAutoraZiv='" + prezimeAutoraZiv + '\'' +
                ", ulicaAutoraZiv='" + ulicaAutoraZiv + '\'' +
                ", mestoAutoraZiv='" + mestoAutoraZiv + '\'' +
                ", drzavljanstvoAutoraZiv='" + drzavljanstvoAutoraZiv + '\'' +
                ", pseudonimAutoraZiv='" + pseudonimAutoraZiv + '\'' +
                ", opisAutorskogDela='" + opisAutorskogDela + '\'' +
                ", primerAutorskogDela='" + primerAutorskogDela + '\'' +
                ", imePunomocnika='" + imePunomocnika + '\'' +
                ", prezimePunomocnika='" + prezimePunomocnika + '\'' +
                ", ulicaPunomocnika='" + ulicaPunomocnika + '\'' +
                ", mestoPunomocnika='" + mestoPunomocnika + '\'' +
                ", tipkorisnika='" + tipkorisnika + '\'' +
                ", naslov='" + naslov + '\'' +
                ", alternativniNaslov='" + alternativniNaslov + '\'' +
                ", naslovIzvornogDela='" + naslovIzvornogDela + '\'' +
                ", nacinKoriscenja='" + nacinKoriscenja + '\'' +
                ", autorIzvornogDela='" + autorIzvornogDela + '\'' +
                ", poslovno_ime='" + poslovno_ime + '\'' +
                ", ime_sluzbenika='" + ime_sluzbenika + '\'' +
                ", prezime_sluzbenika='" + prezime_sluzbenika + '\'' +
                ", razlog='" + razlog + '\'' +
                '}';
    }
}
