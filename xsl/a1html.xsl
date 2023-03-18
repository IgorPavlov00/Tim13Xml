<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
  <xsl:template match="/">
   <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Zahtev A</title>
        <!-- margin-top="1in" margin-bottom="0.66in"  margin-left="0.56in" margin-right="0.56in" -->
        <style type="text/css">
            body {
                font-family: Arial, sans-serif;
                font-size: 10pt;
            }
            .container {
                margin: 1in 0.56in 0.66in;
                border: 1px solid black;
            }
            .header {
                position: relative;
                display: flex;
                flex-direction: column;
                height: 150px;
                border-bottom: 1px solid black;
                font-size: 12pt;
            }
            .top-left,
            .top-right {
                position: absolute;
                top: 0;
                margin: 0 auto;
            }
            
            .top-left {
                left: 1%;
            }
            
            .top-right {
                text-align: left;
                right: 30%;
            }
            
            .bottom {
                margin-top: auto;
                margin-bottom: 1%;
            }
            .main {
                padding: 1cm;
                padding-top: 2cm;
            }
            .main table {
                margin-left: 1cm;
                margin-right: 0;
                width: 100%;
            }
            table {
                border-collapse: collapse;
            }
            table td {
                border: 1px solid black;
            }
            .footer {
            }
            .footer table {
                width: 20%;
                margin-left: auto;
                margin-right: 0;
            }
            .center {
                text-align: center;
            }
            .right {
                margin-left: auto;
                margin-right: 0;
                width: 30%;
            }
            .footnote {
                margin-left: 0.66in;
                margin-top: auto;
            }</style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="top-left">
                    <p><strong>ZAVOD ZA INTELEKTUALNU SVOJINU</strong></p>
                    <p>Beograd, Kneginje Ljubice 5</p>
                </div>
                <div class="top-right">
                    <p><strong>OBRAZAC A-1</strong></p>
                </div>
                <div class="bottom center">
                    <p><strong>ZAHTEV ZA UNOŠENJE U EVIDENCIJU I DEPONOVANJE
                            AUTORSKIH DELA</strong></p>
                </div>
            </div>
            <div class="main">
                <p>1) Podnosilac - ime, prezime, adresa i državljanstvo autora
                    ili drugog nosioca autorskog prava ako je podnosilac fizičko
                    lice, odnosno poslovno ime i sedište nosioca autorskog prava
                    ako je podnosilac pravno lice*:</p>
                <p>  <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/poslovno_ime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/prezime" />
                </p>

                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/sediste/ulica" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/ulica" /></p>

                <p>      <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/sediste/mesto" />

                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/mesto" /></p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/drzavljanstvo" /></p>
                <table>
                    <tr>
                        <td>telefon: <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/telefon" /></td>
                        <td>e-mail: <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/email" /></td>
                    </tr>
                </table>
                <br />
                <p>2) Pseudonim ili znak autora, (ako ga ima):</p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/pseudonim" />
                    <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/pseudonim" /></p>
                <br />
                <p>3) Ime, prezime i adresa punomoćnika, ako se prijava podnosi
                    preko punomoćnika:</p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/poslovno_ime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/prezime" /></p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/ulica" /></p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/mesto" /></p>
                <br />
                <p>4) Naslov autorskog dela, odnosno alternativni naslov, ako ga
                    ima, po kojem autorsko delo može da se identifikuje*:</p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/naslov" /></p>
                <p> (<xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/alternativni_naslov" />)</p>
                <br />
                <p>5) Podaci o naslovu autorskog dela na kojem se zasniva delo
                    prerade, ako je u pitanju autorsko delo prerade, kao i
                    podatak o autoru izvornog dela:</p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/podaci_o_izvornom_delu/naslov" /></p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/podaci_o_izvornom_delu/autor" /></p>
                <br />
                <p>6) Podaci o vrsti autorskog dela (književno delo, muzičko
                    delo, likovno delo, računarski program i dr.) *:</p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/vrsta_autorskog_dela" /></p>
                <br />
                <p>7) Podaci o formi zapisa autorskog dela (štampani tekst,
                    optički disk i slično) *:</p>
                <p>  <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/forma_autorskog_dela" /></p>
                <br />
                <p>8) Podaci o autoru ako podnosilac prijave iz tačke 1. ovog
                    zahteva nije autor i to: prezime, ime, adresa i
                    državljanstvo autora (grupe autora ili koautora), a ako su u
                    pitanju jedan ili više autora koji nisu živi, imena autora i
                    godine smrti autora a ako je u pitanju autorsko delo
                    anonimnog autora navod da je autorsko delo delo anonimnog
                    autora:</p>
                <p>   <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/ime" />
                                             <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/prezime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/prezime" /></p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/adresa/ulica" />
                                             <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/adresa/ulica" />
                                                 <xsl:text>&#x20;</xsl:text>
                                                <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/adresa/mesto" />
                                             <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/adresa/mesto" /></p>
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/drzavljanstvo" />
                                             <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/drzavljanstvo" /></p>
                
                <p><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/godina_smrti" />
                            
                                            <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/podaci_o_autoru_anoniman =true()">Anoniman autor</xsl:when>
                                                <xsl:otherwise></xsl:otherwise>
                                            </xsl:choose></p>
                <br />
                <p>9) Podatak da li je u pitanju autorsko delo stvoreno u radnom
                    odnosu:</p>
                <p> <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/stvoreno_u_radnom_odnosu = true()">Jeste</xsl:when>
                                                <xsl:otherwise>Nije</xsl:otherwise>
                                            </xsl:choose></p>
                <br />
                <p>10) Način korišćenja autorskog dela ili nameravani način
                    korišćenja autorskog dela:</p>
                <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/nacin_koriscenja" /></p>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <p>11) </p>
                <div class="right">
                    <p><strong>______________________________</strong></p>
                    <p>Podnosilac prijave, nosilac prava (mesto za potpis
                        fizičkog lica, odnosno potpis zastupnika pravnog lica ili
                        ovlašćenog predstavnika u pravnom licu)*:</p>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <p>12) Prilozi koji se podnose uz zahtev:</p>
                <br />
                <p class="center"><strong>POPUNJAVA ZAVOD</strong></p>
                <p><strong>Prilozi uz prijavu:</strong></p>
                <p> <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/prilozi/opis_autorskog_dela = true()">x</xsl:when>
                                                <xsl:otherwise></xsl:otherwise>
                                            </xsl:choose> opis autorskog dela(ako je delo podneto na optickom disku)</p>
                <p>  <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/prilozi/primer_autorskog_dela = true()">x</xsl:when>
                                                <xsl:otherwise></xsl:otherwise>
                                            </xsl:choose> primer autorskog dela (slika,video snimak,audio snimak) </p>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <div class="footer">
                <table>
                    <tr>
                        <td>
                            <p>Broj prijave</p>
                            <p><strong><xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_zahtevu/obrazac" /></strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>Datum podnošenja:</p>
                            <p> <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_zahtevu/datum_podnosenja" /></p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <p class="footnote">Rubrike u zahtevu A-1 koje su označene sa * moraju
            da budu obavezno popunjene.</p>
    </body>
</html>

  </xsl:template>
</xsl:stylesheet>
