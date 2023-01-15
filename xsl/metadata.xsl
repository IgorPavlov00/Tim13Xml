<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
      <xsl:apply-templates/>
    </rdf:RDF>
  </xsl:template>
  
  <xsl:template match="element">
    <rdf:Description xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" rdf:about="{@id}">
      <xsl:apply-templates select="@*|node()"/>
    </rdf:Description>
  </xsl:template>
  
  <xsl:template match="@*">
    <xsl:element name="{name()}" namespace="{namespace-uri()}">
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="text()"/>
</xsl:stylesheet>
