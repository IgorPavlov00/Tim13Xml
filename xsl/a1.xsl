<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <xsl:template match="/">
        <fo:root>

            <fo:layout-master-set>
                <fo:simple-page-master master-name="Letter" page-width="8.5in" page-height="11in" margin-top="1in" margin-bottom="0.66in" margin-left="0.56in" margin-right="0.56in" font-family="Arial, sans-serif">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="Letter">
                <fo:flow flow-name="xsl-region-body" font-size="10pt">
                    <fo:table>
                        <fo:table-column border-width="0.5px" border-style="solid"/>

                        <fo:table-body>
                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block font-weight="bold">
                                    ZAVOD ZA INTELEKTUALNU SVOJINU OBRAZAC A-1
                                    </fo:block>
                                    <fo:block>
                                    Beograd, Kneginje Ljubice 5
                                    </fo:block>
                                    <fo:block space-after="12pt"></fo:block>
                                    <fo:block text-align="center" font-weight="bold">
                                    ZAHTEV ZA UNOSENJJE U EVIDENCIJU I DEPONOVANJE AUTORSKIH DELA
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block space-after="36pt"></fo:block>
                                    <!-- Podaci o podnosiocu -->
                                    <fo:block space-after="36pt">
                                        
                                    1) Podnosilac - ime, prezime, adresa i drzavljanstvo autora ili drugog nosioca autorskog prava ako je podnosilac fizicko lice, odnosno poslovno ime i sediste nosioca autorskog prava ako je podnosilac pravno lice*:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/poslovno_ime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/prezime" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/sediste/ulica" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/ulica" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/sediste/mesto" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/mesto" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/drzavljanstvo" />
                                        </fo:block>

                                    </fo:block>

                                    <!-- Tabela telefon i mail-->
                                    <fo:table>
                                        <fo:table-column border-width="0.5px" border-style="solid"/>
                                        <fo:table-column border-width="0.5px" border-style="solid"/>

                                        <fo:table-body>
                                            <fo:table-row border-width="0.5px" border-style="solid">
                                                <fo:table-cell>
                                                    <fo:block>telefon: 
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block>
                                                        e-mail:
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>

                                    <fo:block space-before="36pt" space-after="48pt">
                                        2) Pseudonim ili znak autora, (ako ga ima):

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/pseudonim" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/pseudonim" />
                                        </fo:block>
                                    </fo:block>

                                    <fo:block space-after="48pt">
                                        3) Ime, prezime i adresa punomocnika, ako se prijava podnosi preko punomocnika:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/poslovno_ime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/prezime" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/ulica" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa/mesto" />
                                        </fo:block>
                                    </fo:block>

                                    <fo:block space-after="48pt">
                                        4) Naslov autorskog dela, odnosno alternativni naslov, ako ga ima, po kome autorsko delo moze da se identifikuje*:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/naslov" />
                                        </fo:block>
                                        <fo:block>
                                            (                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/alternativni_naslov" />
)
                                        </fo:block>
                                    </fo:block>

                                    <fo:block space-after="48pt">
                                        5) Podaci o naslovu autorskog dela na kome se zasniva delo prerade, ako je u pitanju autorsko delo prerade, kao i podatak o autoru izvornog dela:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/podaci_o_izvornom_delu/naslov" />
                                        </fo:block>
                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/podaci_o_izvornom_delu/autor" />
                                        </fo:block>
                                    </fo:block>

                                    <fo:block space-after="48pt">
                                        6) Podaci o vrsti autorskog dela (knjizevno delo, muzicko delo, likovno delo, racunarski program i dr.) *:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/vrsta_autorskog_dela" />
                                        </fo:block>
                                    </fo:block>

                                    <fo:block break-after="page" />
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>

                                    <fo:block space-after="48pt">         
                                        7) Podaci o formi zapisa autorskog dela (stampani tekst, opticki disk i slicno) *:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/forma_autorskog_dela" />
                                        </fo:block>
                                    </fo:block>
                                    <fo:block space-after="48pt">
                                        8) Podaci o autoru ako podnosilac prijave iz tacke 1. ovog zahteva nije autor i to: prezime, ime, adresa i drzavljanstvo autora (grupe autora ili koautora), a ako su u pitanju jedan ili vise autora koji nisu zivi, imena autora i godine smrti autora, a ako je u pitanju autorsko delo anonimnog autora navod da je autorsko delo delo anonimnog autora:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/ime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/ime" />
                                            <xsl:text>&#x20;</xsl:text>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_ziv/prezime" />
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autoru_mrtav/prezime" />
                                        </fo:block>
                                    </fo:block>
                                    <fo:block space-after="48pt">
                                        9) Podatak da li je u pitanju autorsko delo stvoreno u radnom odnosu:

                                        <fo:block>
                                            <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/stvoreno_u_radnom_odnosu = true()">Jeste</xsl:when>
                                                <xsl:otherwise>Nije</xsl:otherwise>
                                            </xsl:choose>
                                        </fo:block>
                                    </fo:block>
                                    <fo:block space-after="48pt">
                                        10) Nacin koriscenja autorskog dela ili nameravani nacin koriscenja autorskog dela:

                                        <fo:block>
                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_autorskom_delu/nacin_koriscenja" />
                                        </fo:block>
                                    </fo:block>
                                    <fo:block text-align="right">
                                        <fo:inline font-weight="bold">
                                        ________________________
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block>
                                        11)
                                    </fo:block>
                                    <fo:block text-align="right">
                                        <fo:inline font-weight="bold">
                                            Podnosilac prijave, nosilac prava
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block text-align="right">
                                        (mesto za potpis fizickog lica, odnosno potpis zastupnika pravnog lica ili ovlascenog predstavnika u pravnom licu)*
                                    </fo:block>

                                    <fo:block break-after="page" />
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block space-after="20pt">
                                        12) Prilozi koji se podnose uz zahtev:
                                    </fo:block>
                                    <fo:block text-align="center">
                                        <fo:inline font-weight="bold">
                                            POPUNJAVA ZAVOD:
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block>
                                        <fo:inline font-weight="bold">
                                            Prilozi uz prijavu:
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block>
                                        <fo:inline border-bottom="1pt solid black">
                                            <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/prilozi/opis_autorskog_dela = true()">x</xsl:when>
                                                <xsl:otherwise></xsl:otherwise>
                                            </xsl:choose>
                                        </fo:inline> opis autorskog dela (ako je delo podneto na optickom disku);
                                    </fo:block>
                                    <fo:block space-after="6in">
                                        <fo:inline border-bottom="1pt solid black">
                                            <xsl:choose>
                                                <xsl:when test="/zahtev_za_autorska_prava/prilozi/primer_autorskog_dela = true()">x</xsl:when>
                                                <xsl:otherwise></xsl:otherwise>
                                            </xsl:choose>
                                        </fo:inline> primer autorskog dela (slika, video zapis, audio zapis)
                                    </fo:block>
                                    <fo:table font-size="14pt">
                                        <fo:table-column border-width="0.5px" border-style="solid" column-width="2in"/>

                                        <fo:table-body>
                                            <fo:table-row border-width="0.5px" border-style="solid">
                                                <fo:table-cell>
                                                    <fo:block>
                                                    Broj prijave
                                                    </fo:block>
                                                    <fo:block font-weight="bold">
                                                        <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_zahtevu/obrazac" />
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>

                                            <fo:table-row border-width="0.5px" border-style="solid">
                                                <fo:table-cell>
                                                    <fo:block>
                                                    Datum podnosenja:
                                                    </fo:block>
                                                    <fo:block>
                                                        <fo:inline border-bottom="1pt solid black">
                                                            <xsl:value-of select="/zahtev_za_autorska_prava/podaci_o_zahtevu/datum_podnosenja" />
                                                        </fo:inline>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block>
                        Rubrike u zahtevu A-1 koje su oznacene sa * moraju da budu obavezno popunjene.
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
