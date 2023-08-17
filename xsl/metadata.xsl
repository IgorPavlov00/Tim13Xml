<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:zz="http://localhost:8082/vocabulary/zig/"
    xmlns:zap="http://localhost:8083/vocabulary/autorskopravo/">

    <xsl:template match="/">
        <rdf:RDF>
            <xsl:apply-templates />
        </rdf:RDF>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga">
        <rdf:Description
            rdf:about="{concat('http://localhost:8082/', podaci_o_zahtevu/broj_prijave)}">
            <xsl:apply-templates select="podaci_o_zahtevu" />
            <xsl:apply-templates select="podaci_o_podnosiocu" />
            <xsl:apply-templates select="podaci_o_punomocniku" />
            <xsl:apply-templates select="podaci_o_placenoj_taksi" />
        </rdf:Description>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga/podaci_o_zahtevu">
        <zz:datum_podnosenja>
            <xsl:value-of select="datum_podnosenja" />
        </zz:datum_podnosenja>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga/podaci_o_podnosiocu">
        <zz:ime_podnosioca>
            <xsl:value-of select="licni_podaci/ime" />
        </zz:ime_podnosioca>
        <zz:prezime_podnosioca>
            <xsl:value-of select="licni_podaci/prezime" />
        </zz:prezime_podnosioca>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga/podaci_o_punomocniku">
        <zz:ime_punomocnika>
            <xsl:value-of select="licni_podaci/ime" />
        </zz:ime_punomocnika>
        <zz:prezime_punomocnika>
            <xsl:value-of select="licni_podaci/prezime" />
        </zz:prezime_punomocnika>
    </xsl:template>

    <xsl:template match="zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi">
        <zz:ukupno>
            <xsl:value-of select="ukupno" />
        </zz:ukupno>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava">
        <rdf:Description
            rdf:about="{concat('http://localhost:8083/', podaci_o_zahtevu/obrazac, podaci_o_zahtevu/datum_podnosenja)}">
            <xsl:apply-templates select="podaci_o_zahtevu" mode="autorska_prava" />
            <xsl:apply-templates select="podaci_o_podnosiocu" mode="autorska_prava" />
            <xsl:apply-templates select="podaci_punomocnika" mode="autorska_prava" />
            <xsl:apply-templates select="podaci_o_autorskom_delu" />
            <xsl:apply-templates select="podaci_o_autoru_ziv" />
        </rdf:Description>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava/podaci_o_zahtevu" mode="autorska_prava">
        <zap:datum_podnosenja>
            <xsl:value-of select="datum_podnosenja" />
        </zap:datum_podnosenja>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava/podaci_o_podnosiocu" mode="autorska_prava">
        <zap:ime_podnosioca>
            <xsl:value-of select="licni_podaci/ime" />
        </zap:ime_podnosioca>
    <zap:prezime_podnosioca>
            <xsl:value-of select="licni_podaci/prezime" />
        </zap:prezime_podnosioca>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava/podaci_punomocnika" mode="autorska_prava">
        <zap:ime_punomocnika>
            <xsl:value-of select="ime" />
        </zap:ime_punomocnika>
    <zap:prezime_punomocnika>
            <xsl:value-of select="prezime" />
        </zap:prezime_punomocnika>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava/podaci_o_autorskom_delu">
        <zap:naslov>
            <xsl:value-of select="naslov" />
        </zap:naslov>
    </xsl:template>

    <xsl:template match="zahtev_za_autorska_prava/podaci_o_autoru_ziv">
        <zap:ime_autora>
            <xsl:value-of select="ime" />
        </zap:ime_autora>
    <zap:prezime_autora>
            <xsl:value-of select="prezime" />
        </zap:prezime_autora>
    </xsl:template>

</xsl:stylesheet>
