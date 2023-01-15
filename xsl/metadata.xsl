<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <xsl:apply-templates />
        </rdf:RDF>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga">
        <rdf:Description rdf:about="http://localhost:8083/zahtev_z"
            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <xsl:apply-templates select="podaci_o_zahtevu" />
            <xsl:apply-templates select="podaci_o_podnosiocu" />
            <xsl:apply-templates select="podaci_o_punomocniku" />
            <xsl:apply-templates select="podaci_o_placenoj_taksi" />
        </rdf:Description>
    </xsl:template>

    <xsl:template match="podaci_o_zahtevu">
        <xsl:element name="datum_podnosenja">
            <xsl:value-of select="datum_podnosenja" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="podaci_o_podnosiocu">
        <xsl:element name="ime">
            <xsl:value-of select="licni_podaci/ime" />
        </xsl:element>
        <xsl:element name="prezime">
            <xsl:value-of select="licni_podaci/prezime" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="podaci_o_punomocniku">
        <xsl:element name="ime">
            <xsl:value-of select="licni_podaci/ime" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="podaci_o_placenoj_taksi">
        <xsl:element name="ukupno">
            <xsl:value-of select="ukupno" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava">
        <rdf:Description rdf:about="http://localhost:8083/zahtev_a"
            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <xsl:apply-templates select="podaci_o_zahtevu" />
            <xsl:apply-templates select="podaci_o_podnosiocu" />
            <xsl:apply-templates select="podaci_punomocnika" />
            <xsl:apply-templates select="podaci_o_autorskom_delu" />
            <xsl:apply-templates select="podaci_o_autoru_ziv" />
        </rdf:Description>
    </xsl:template>

    <xsl:template match="podaci_punomocnika">
        <xsl:element name="ime">
            <xsl:value-of select="ime" />
        </xsl:element>
        <xsl:element name="prezime">
            <xsl:value-of select="prezime" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="podaci_o_autorskom_delu">
        <xsl:element name="naslov">
            <xsl:value-of select="naslov" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="podaci_o_autoru_ziv">
        <xsl:element name="ime">
            <xsl:value-of select="licni_podaci/ime" />
        </xsl:element>
        <xsl:element name="prezime">
            <xsl:value-of select="licni_podaci/prezime" />
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>