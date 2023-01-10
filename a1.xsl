<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/">
  <html>
    <head>
      <title>Zahtev za autorska prava</title>
    </head>
    <body>
      <h2>Zahtev za autorska prava</h2>
      <table border="1">
        <tr>
          <th>Naziv</th>
          <th>Adresa</th>
        </tr>
        <tr>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/naziv"/>
          </td>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/adresa/ulica"/>,
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/adresa/mesto"/>
          </td>
        </tr>
      </table>
      
      <h2>Podaci o zahtevu</h2>
      <table border="1">
        <tr>
          <th>Datum podnosenja</th>
          <th>Obrazac</th>
        </tr>
        <tr>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zahtevu/datum_podnosenja"/>
          </td>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zahtevu/obrazac"/>
          </td>
        </tr>
      </table>
      
      <h2>Podaci o podnosiocu</h2>
      <table border="1">
        <tr>
          <th>Ime</th>
          <th>Prezime</th>
          <th>Adresa</th>
          <th>Drzavljanstvo</th>
          <th>Telefon</th>
          <th>Email</th>
          <th>Pseudonim</th>
        </tr>
        <tr>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime"/>
          </td>
          <td>
            <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu



igor pavlov
try again
Sure, here is an updated version of the XSL file that will transform the XML file you provided into XHTML:

Copy code
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/">
  <html>
    <head>
      <title>Zahtev za autorska prava</title>
    </head>
    <body>
      <h2>Podaci o zavodu</h2>
        <table border="1">
            <tr>
                <th>Naziv</th>
                <th>Adresa</th>
            </tr>
            <tr>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/naziv"/></td>
                <td>
                    <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/adresa/ulica"/>,
                    <xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zavodu/adresa/mesto"/>
                </td>
            </tr>
        </table>
   
      <h2>Podaci o zahtevu</h2>
        <table border="1">
            <tr>
                <th>Datum podnosenja</th>
                <th>Obrazac</th>
            </tr>
            <tr>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zahtevu/datum_podnosenja"/></td>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_zahtevu/obrazac"/></td>
            </tr>
        </table>
        
      <h2>Podaci o podnosiocu</h2>
        <table border="1">
            <tr>
                <th>Ime</th>
                <th>Prezime</th>
                <th>Adresa</th>
                <th>Drzavljanstvo</th>
                <th>Telefon</th>
                <th>Email</th>
                <th>Pseudonim</th>
            </tr>
            <tr>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/ime"/></td>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/prezime"/></td>
                <td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/adresa"/></td>
				<td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/telefon"/></td>
				<td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/drzavljanstvo"/></td>
				<td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/email"/></td>
				<td><xsl:value-of select="zahtev_za_autorska_prava/podaci_o_podnosiocu/licni_podaci/pseudonim"/></td>
			</tr>
		</table>
	 </body>
	</html>
</xsl:template>