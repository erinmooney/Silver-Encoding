<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    

    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="line">
        <!--Attribute value template for the @n --> 
        <ln n="{preceding-sibling::line => count()+ 1 }"/> <xsl:apply-templates/>    
        
    </xsl:template>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Poem Compilation</title>       
               
            </head>
            <body>
                <h1>Assortment of poems by an unlisted author.</h1>   
                               
            </body>  
        </html>
        
    </xsl:template>
  
  <xsl:template match="poemTitle">
      <xsl:apply-templates select="title"></xsl:apply-templates>
  </xsl:template>
    
    <xsl:template match="body">
        <xsl:apply-templates select="body"></xsl:apply-templates>
    </xsl:template>   
<!-- I could not figure out how to remove <body> without breaking it-->
    
    <!--Now that you have looked at some examples of AVTs, try writing a template rule to change the <line> into self-closing elements that still hold the line number value in an attribute, like this: <lb num="2"/>. Make it so the new lb element sits at the start of each line, and use an AVT to output the value of the @n attribute in a new @num attribute. -->
    
    <xsl:template match="line">
        <p class="lb">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="poem">
        <p- n="{preceding-sibling::line => count()+ 1 }"/> <xsl:apply-templates/>
    </xsl:template>
    
    
</xsl:stylesheet>