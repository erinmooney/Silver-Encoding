<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
<!-- this is ONLY for an identity transformation -->
    <xsl:template match="div[@type='chapter']/head/l">
<!-- @match value is an "XPath pattern" because it doesn not start at the top of the tree       -->
        <lb/><xsl:apply-templates/></xsl:template>
    
    <xsl:template match="emph">   
        <hi rend="italics"><xsl:apply-templates/></hi>
    </xsl:template>
    
    
  <!--  <xsl:template match="div[@type='books']">  
        <div type="book" n="{count(preceding-sibling::div)+1}"><xsl:apply-templates/></div>
    </xsl:template>-->
    
    <xsl:template match="div[@type]">  
        <div type="{@type}" n="{count(preceding-sibling::div)+1}"><xsl:apply-templates/></div>
    </xsl:template>
    
    
    
</xsl:stylesheet>