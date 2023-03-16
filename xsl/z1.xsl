<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="Letter" page-width="8.5in" page-height="11in" margin-top="1in" margin-bottom="0.66in" margin-left="0.56in" margin-right="0.56in" padding="10pt" font-family="Arial, sans-serif" font-size="6pt">
          <fo:region-body />
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="Letter">
        <fo:flow flow-name="xsl-region-body" font-size="10pt">
          <fo:block text-align="center" font-weight="bold" font-size="14pt"> ZAHTEV ZA PRIZNANJE
    ZIGA </fo:block>
          <fo:block text-align="center" font-weight="bold" space-after="10pt"> Zavodu za intelektualnu svojinu,
    Kneginje Ljubice 5, 11000 Beograd </fo:block>
          <fo:block text-align="center"> (popuniti na racunaru) </fo:block>
          <fo:table>
            <fo:table-column border-width="0.5px" border-style="solid" />
            <fo:table-body>              <!-- podaci o podnosiocu -->
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">1. Podnosilac prijave:</fo:inline> ime i
    prezime/poslovno ime, ulica i broj, postanski broj, mesto, drzava prebivalista/sedista: </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/ime" />
                    <xsl:text>&#x20;</xsl:text>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/prezime" />
                  </fo:block>
                  <fo:block>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/ulica" />
                  </fo:block>
                  <fo:block>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/postanski_broj" />
                    <xsl:text>&#x20;</xsl:text>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/mesto" />
                  </fo:block>
                  <fo:block>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/drzava" />
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>telefon: <fo:inline>
                            <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/telefon" />
                          </fo:inline>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>e-mail: <fo:inline>
                          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/email" />
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>faks: <fo:inline>
                        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/faks" />
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </fo:table-cell>
        </fo:table-row>        <!--
              podaci o punomocniku -->
        <fo:table-row border-width="0.5px" border-style="solid">
          <fo:table-cell>
            <fo:block>
              <fo:inline font-weight="bold">2. Punomocnik:</fo:inline> ime i
    prezime/poslovno ime, ulica i broj, postanski broj, mesto, drzava prebivalista/sedista: </fo:block>
          </fo:table-cell>
        </fo:table-row>
        <fo:table-row border-width="0.5px" border-style="solid">
          <fo:table-cell>
            <fo:block>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/ime" />
              <xsl:text>&#x20;</xsl:text>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/prezime" />
            </fo:block>
            <fo:block>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/ulica" />
            </fo:block>
            <fo:block>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/postanski_broj" />
              <xsl:text>&#x20;</xsl:text>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/mesto" />
            </fo:block>
            <fo:block>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/drzava" />
            </fo:block>
          </fo:table-cell>
        </fo:table-row>
        <fo:table-row border-width="0.5px" border-style="solid">
          <fo:table-cell>
            <fo:table>
              <fo:table-column border-width="0.5px" border-style="solid" />
              <fo:table-column border-width="0.5px" border-style="solid" />
              <fo:table-column border-width="0.5px" border-style="solid" />
              <fo:table-body>
                <fo:table-row border-width="0.5px" border-style="solid">
                  <fo:table-cell>
                    <fo:block>telefon: <fo:inline>
                      <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/telefon" />
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block>e-mail: <fo:inline>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/email" />
                  </fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell>
                <fo:block>faks: <fo:inline>
                  <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/faks" />
                </fo:inline>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
    </fo:table-cell>
  </fo:table-row>  <!--
              podaci o predstavniku -->
  <fo:table-row border-width="0.5px" border-style="solid">
    <fo:table-cell>
      <fo:block>
        <fo:inline font-weight="bold">3. Podaci o zajednickom predstavniku ako postoji
    vise podnosilaca prijave:</fo:inline>
      </fo:block>
    </fo:table-cell>
  </fo:table-row>
  <fo:table-row border-width="0.5px" border-style="solid">
    <fo:table-cell>
      <fo:block>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/ime" />
        <xsl:text>&#x20;</xsl:text>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/prezime" />
      </fo:block>
      <fo:block>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/ulica" />
      </fo:block>
      <fo:block>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/postanski_broj" />
        <xsl:text>&#x20;</xsl:text>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/mesto" />
      </fo:block>
      <fo:block>
        <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/drzava" />
      </fo:block>
    </fo:table-cell>
  </fo:table-row>
  <fo:table-row border-width="0.5px" border-style="solid">
    <fo:table-cell>
      <fo:table>
        <fo:table-column border-width="0.5px" border-style="solid" />
        <fo:table-column border-width="0.5px" border-style="solid" />
        <fo:table-column border-width="0.5px" border-style="solid" />
        <fo:table-body>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>telefon: <fo:inline>
                <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/telefon" />
              </fo:inline>
            </fo:block>
          </fo:table-cell>
          <fo:table-cell>
            <fo:block>e-mail: <fo:inline>
              <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/email" />
            </fo:inline>
          </fo:block>
        </fo:table-cell>
        <fo:table-cell>
          <fo:block>faks: <fo:inline>
            <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/faks" />
          </fo:inline>
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-body>
</fo:table>
</fo:table-cell>
</fo:table-row><!--
              podaci o zigu -->
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:table>
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-body>
    <fo:table-row border-width="0.5px" border-style="solid">      <!-- vrste i opis -->
      <fo:table-cell>
        <fo:table>
          <fo:table-column border-width="0.5px" border-style="solid" />
          <fo:table-body>            <!-- popuni sa X -->
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">4. Prijava se podnosi za (upisati
    X):</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:table>
                  <fo:table-column border-width="0.5px" border-style="solid" column-width="1cm" />
                  <fo:table-column border-width="0.5px" border-style="solid" />
                  <fo:table-body>
                    <fo:table-row border-width="0.5px" border-style="solid">
                      <fo:table-cell>
                        <fo:block>
                          <fo:inline font-weight="bold">a)</fo:inline>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:table>
                          <fo:table-column border-width="0.5px" border-style="solid" />
                          <fo:table-column border-width="0.5px" border-style="solid" column-width="1cm" />
                          <fo:table-body>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>individualni zig</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/individualni_zig = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>kolektivni zig</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/kolektivni_zig = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>zig garancije</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/zig_garancije = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="0.5px" border-style="solid">
                      <fo:table-cell>
                        <fo:block>
                          <fo:inline font-weight="bold">b)</fo:inline>
                        </fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:table>
                          <fo:table-column border-width="0.5px" border-style="solid" />
                          <fo:table-column border-width="0.5px" border-style="solid" column-width="1cm" />
                          <fo:table-body>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>verbalni znak (znak u reci)</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/verbalni_znak = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>graficki znak; boju, kombinaciju boja</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/graficki_znak = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>kombinovani znak</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/kombinovani_znak = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>trodimenzionalni znak</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/trodimenzionalni_znak = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row border-width="0.5px" border-style="solid">
                              <fo:table-cell>
                                <fo:block>
                                  <fo:inline>drugu vrstu znaka (navesti koju)</fo:inline><xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/druga_vrsta" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell>
                                <fo:block text-align="center">
                                  <xsl:choose>
                                    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/drugo = true()"> X </xsl:when>
                                    <xsl:otherwise></xsl:otherwise>
                                  </xsl:choose>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>            <!--
                              naznacenje itd. -->
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">5. Naznacenje boje, odnosno boja
    iz kojih se znak sastoji:</fo:inline>
                </fo:block>
                <fo:block>
                  <fo:inline>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/naznacenje_boje" />
                  </fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">6. Transliteracija znaka*:</fo:inline>
                </fo:block>
                <fo:block>
                  <fo:inline>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/transliteracija" />
                  </fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">7. Prevod znaka*:</fo:inline>
                </fo:block>
                <fo:block>
                  <fo:inline>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/prevod" />
                  </fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">8. Opis znaka:</fo:inline>
                </fo:block>
                <fo:block>
                  <fo:inline>
                    <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/opis" />
                  </fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:table-cell>      <!--
                        izgled -->
      <fo:table-cell>
        <fo:table>
          <fo:table-column border-width="0.5px" border-style="solid" />
          <fo:table-body>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">v) izgled znaka:</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row border-width="0.5px" border-style="solid">
              <fo:table-cell>
                <fo:block>
                  <xsl:apply-templates select="/zahtev_za_priznanje_ziga/podaci_o_zigu/izgled_znaka" />
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-body>
</fo:table>
</fo:table-cell>
</fo:table-row><!--
              klasifikacija -->
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:block>
  <fo:inline font-weight="bold">9. Zaokruziti brojeve klasa robe i usluga prema
    Nicanskoj klasifikaciji:</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:table>
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-body>    <!-- red 1 - 23 -->
  <xsl:variable name="tokens" select="tokenize(/zahtev_za_priznanje_ziga/podaci_o_zigu/brojevi_klasa_robe_i_usluga, ',')"/>
    <fo:table-row border-width="0.5px" border-style="solid">
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'1'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">1</fo:inline>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'2'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">2</fo:inline>
            </xsl:when>
            <xsl:otherwise>2</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'3'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">3</fo:inline>
            </xsl:when>
            <xsl:otherwise>3</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'4'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">4</fo:inline>
            </xsl:when>
            <xsl:otherwise>4</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'5'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">5</fo:inline>
            </xsl:when>
            <xsl:otherwise>5</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'6'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">6</fo:inline>
            </xsl:when>
            <xsl:otherwise>6</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'7'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">7</fo:inline>
            </xsl:when>
            <xsl:otherwise>7</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'8'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">8</fo:inline>
            </xsl:when>
            <xsl:otherwise>8</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'9'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">9</fo:inline>
            </xsl:when>
            <xsl:otherwise>9</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'10'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">10</fo:inline>
            </xsl:when>
            <xsl:otherwise>10</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'11'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">11</fo:inline>
            </xsl:when>
            <xsl:otherwise>11</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'12'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">12</fo:inline>
            </xsl:when>
            <xsl:otherwise>12</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'13'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">13</fo:inline>
            </xsl:when>
            <xsl:otherwise>13</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'14'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">14</fo:inline>
            </xsl:when>
            <xsl:otherwise>14</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'15'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">15</fo:inline>
            </xsl:when>
            <xsl:otherwise>15</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'16'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">16</fo:inline>
            </xsl:when>
            <xsl:otherwise>16</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'17'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">17</fo:inline>
            </xsl:when>
            <xsl:otherwise>17</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'18'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">18</fo:inline>
            </xsl:when>
            <xsl:otherwise>18</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'19'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">19</fo:inline>
            </xsl:when>
            <xsl:otherwise>19</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'20'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">20</fo:inline>
            </xsl:when>
            <xsl:otherwise>20</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'21'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">21</fo:inline>
            </xsl:when>
            <xsl:otherwise>21</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'22'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">22</fo:inline>
            </xsl:when>
            <xsl:otherwise>22</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'23'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">23</fo:inline>
            </xsl:when>
            <xsl:otherwise>23</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
    </fo:table-row>    <!--
                      red 24 - 45 -->
    <fo:table-row border-width="0.5px" border-style="solid">
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'24'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">24</fo:inline>
            </xsl:when>
            <xsl:otherwise>24</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'25'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">25</fo:inline>
            </xsl:when>
            <xsl:otherwise>25</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'26'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">26</fo:inline>
            </xsl:when>
            <xsl:otherwise>26</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'27'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">27</fo:inline>
            </xsl:when>
            <xsl:otherwise>27</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'28'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">28</fo:inline>
            </xsl:when>
            <xsl:otherwise>28</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'29'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">29</fo:inline>
            </xsl:when>
            <xsl:otherwise>29</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'30'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">30</fo:inline>
            </xsl:when>
            <xsl:otherwise>30</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'31'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">31</fo:inline>
            </xsl:when>
            <xsl:otherwise>31</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'32'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">32</fo:inline>
            </xsl:when>
            <xsl:otherwise>32</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'33'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">33</fo:inline>
            </xsl:when>
            <xsl:otherwise>33</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'34'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">34</fo:inline>
            </xsl:when>
            <xsl:otherwise>34</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'35'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">35</fo:inline>
            </xsl:when>
            <xsl:otherwise>35</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'36'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">36</fo:inline>
            </xsl:when>
            <xsl:otherwise>36</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'37'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">37</fo:inline>
            </xsl:when>
            <xsl:otherwise>37</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'38'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">38</fo:inline>
            </xsl:when>
            <xsl:otherwise>38</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'39'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">39</fo:inline>
            </xsl:when>
            <xsl:otherwise>39</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'40'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">40</fo:inline>
            </xsl:when>
            <xsl:otherwise>40</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'41'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">41</fo:inline>
            </xsl:when>
            <xsl:otherwise>41</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'42'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">42</fo:inline>
            </xsl:when>
            <xsl:otherwise>42</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'43'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">43</fo:inline>
            </xsl:when>
            <xsl:otherwise>43</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'44'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">44</fo:inline>
            </xsl:when>
            <xsl:otherwise>44</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block text-align="center">
          <xsl:variable name="searchValue" select="'45'"/>
          <xsl:choose>
            <xsl:when test="some $token in $tokens satisfies $token = $searchValue">
            <fo:inline border="solid black 1px" padding="2pt">45</fo:inline>
            </xsl:when>
            <xsl:otherwise>45</xsl:otherwise>
          </xsl:choose>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block></fo:block>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-body>
</fo:table>
</fo:table-cell>
</fo:table-row><!--
              pravo prvenstva -->
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:block>
  <fo:inline font-weight="bold">10. Zatrazeno pravo prvenstva i osnov:</fo:inline>
</fo:block>
<fo:block>
  <xsl:choose>
    <xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/pravo_prvenstva/zatrazeno = true()"> Jeste, osnov je
    </xsl:when>
    <xsl:otherwise>Nije zatrazeno</xsl:otherwise>
  </xsl:choose>
</fo:block>
<fo:block>
  <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/pravo_prvenstva/osnov" />
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:block>
<fo:inline>*Popuniti samo ako je znak ili element znaka ispisan slovima koja nisu
    cirilicna ili latinicna</fo:inline>
</fo:block>
<fo:block break-after="page">
<fo:inline></fo:inline>
</fo:block><!-- takse -->
<fo:table>
<fo:table-column border-width="0.5px" border-style="solid" />
<fo:table-column border-width="0.5px" border-style="solid" />
<fo:table-body>
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:table>
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-column border-width="0.5px" border-style="solid" />
  <fo:table-body>
    <fo:table-row border-width="0.5px" border-style="solid">
      <fo:table-cell>
        <fo:block>
          <fo:inline font-weight="bold">11. Placene takse:</fo:inline>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block>
          <fo:inline font-weight="bold">Dinara</fo:inline>
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
    <fo:table-row border-width="0.5px" border-style="solid">
      <fo:table-cell>
        <fo:block>
          <fo:inline font-weight="bold">a) osnovna taksa</fo:inline>
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block>
          <fo:inline>
            <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/osnovna_taksa" />
          </fo:inline>
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
    <fo:table-row border-width="0.5px" border-style="solid">
      <fo:table-cell>
        <fo:block space-after="10pt">
          <fo:inline font-weight="bold">b) za <fo:inline border-bottom="1pt solid black">
            <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/za_klase/@klase" />
          </fo:inline>
    klasa</fo:inline>
      </fo:block>
      <fo:block>
        <fo:inline font-weight="bold">v) za graficko resenje</fo:inline>
      </fo:block>
    </fo:table-cell>
    <fo:table-cell>
      <fo:block space-after="10pt">
        <fo:inline>
          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/za_klase" />
        </fo:inline>
      </fo:block>
      <fo:block>
        <fo:inline>
          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/za_graficko_resenje" />
        </fo:inline>
      </fo:block>
    </fo:table-cell>
  </fo:table-row>
  <fo:table-row border-width="0.5px" border-style="solid">
    <fo:table-cell>
      <fo:block>
        <fo:inline font-weight="bold">UKUPNO</fo:inline>
      </fo:block>
    </fo:table-cell>
    <fo:table-cell>
      <fo:block>
        <fo:inline>
          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/ukupno" />
        </fo:inline>
      </fo:block>
    </fo:table-cell>
  </fo:table-row>
</fo:table-body>
</fo:table>
</fo:table-cell>
<fo:table-cell>
<fo:block text-align="center">
<fo:inline font-weight="bold">Potpis podnosioca zahteva</fo:inline>
</fo:block>
<fo:block>
<fo:inline></fo:inline>
</fo:block>
<fo:block space-before="40pt">
<fo:inline font-style="italic">* Pecat, ukoliko je potreban u skladu sa zakonom</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>
<fo:block space-after="40pt" />
<!-- prilozi -->
<fo:table>
<fo:table-column border-width="0.5px" border-style="solid" />
<fo:table-body>
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:block text-align="center">
<fo:inline font-weight="bold">POPUNJAVA ZAVOD</fo:inline>
</fo:block>
</fo:table-cell>
</fo:table-row>
<fo:table-row border-width="0.5px" border-style="solid">
<fo:table-cell>
<fo:table>
<fo:table-column border-width="0.5px" border-style="solid" />
<fo:table-column border-width="0.5px" border-style="solid" />
<fo:table-body>
  <fo:table-row border-width="0.5px" border-style="solid">
    <fo:table-cell>
      <fo:table>
        <fo:table-column border-width="0.5px" border-style="solid" />
        <fo:table-column border-width="0.5px" border-style="solid" column-width="2cm" />
        <fo:table-body>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell number-columns-spanned="2">
              <fo:block>
                <fo:inline font-weight="bold">Prilozi uz zahtev:</fo:inline>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Primerak znaka</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/primerak_znaka = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Spisak robe i usluga**</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/spisak_robe_i_usluga = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Punomocje</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/punomocje = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Generalno punomocje ranije prilozeno</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/ranije_prilozeno_punomocje = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Punomocje ce biti naknadno dostavljeno</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/naknadno_dostavljeno_punomocje = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Opsti akt o kolektivnom zigu/zigu garancije</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/opsti_akt_o_zigu = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Dokaz o pravu prvenstva</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/dokaz_o_pravu_prvenstva = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
          <fo:table-row border-width="0.5px" border-style="solid">
            <fo:table-cell>
              <fo:block>
                <fo:inline>Dokaz o uplati takse</fo:inline>
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block text-align="center">
                <xsl:choose>
                  <xsl:when test="/zahtev_za_priznanje_ziga/prilozi/dokaz_o_uplati_takse = true()"> X </xsl:when>
                  <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
    </fo:table-cell>
    <fo:table-cell text-align="center">
      <fo:block />
      <fo:block space-before="20pt">
        <fo:inline>Broj prijave ziga:</fo:inline>
      </fo:block>
      <fo:block>
        <fo:inline border-bottom="1pt solid black">
          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zahtevu/broj_prijave" />
        </fo:inline>
      </fo:block>
      <fo:block space-before="20pt">
        <fo:inline font-weight="bold">Datum podnosenja:</fo:inline>
      </fo:block>
      <fo:block>
        <fo:inline font-weight="bold" border-bottom="1pt solid black">
          <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zahtevu/datum_podnosenja" />
        </fo:inline>
      </fo:block>
    </fo:table-cell>
  </fo:table-row>
</fo:table-body>
</fo:table>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table><!--
          fusnota -->
<fo:block space-after="64pt" />
<fo:block>
<fo:inline>**Uz zaokruzivanje broja klase robe/usluga Nicanske klasifikacije u rubrici 9
    dostavlja se i spisak koji sadrzi konkretne nazive robe koju podnosilac prijave proizvodi,
    odnosno usluga koje pruza. U cilju odredjivanja obima zastite koja se stice zigom, spisak treba
    da sadrzi jasne i precizne nazive robe i usluga. U tu svrhu mogu se koristiti pojmovi iz
    detaljne Liste robe i usluga ili MGS Manager aplikacije, dostupnih na sajtu Zavoda. Ukoliko se u
    spisak unose termini iz Liste klasa Nicanske klasifikacije, zastita obuhvata samo tako
    imenovane, konkretne robe/usluge u njihovom jasnom i nedvosmislenom znacenju.</fo:inline>
</fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

<xsl:template match="izgled_znaka">
  <fo:block>
    <fo:external-graphic src="{.}" />
  </fo:block>
</xsl:template>
</xsl:stylesheet>
