<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    
<xsl:template match="/">
    
    <html>
   <head>
       <title>The Oblivion Crisis</title>
       <link rel="stylesheet" type="text/css" href="style.css"/>
   </head>
        
        <body>
    <h1>The Oblivion Crisis</h1>
            
   <section id="source">
       <xsl:apply-templates></xsl:apply-templates>
   </section> 
   
            
    </body>
 </html>
</xsl:template>
 
    
<!--  SAFE   -->
    <xsl:template match="source">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="para">
        <p id="skyrim-{count(preceding::para)+1}"></p>
        <xsl:apply-templates/>
    </xsl:template>
<!--         -->
   
<!--SAFE-->
    
    <xsl:template match="event">
        <span class="event">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="item">
        <span class="item">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="char">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="soCalled">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="place">
        <span class="place">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <!--  -->
    
   
    <xsl:template match="faction[@ref='MythicDawn']">
        <span class="evil">
            <xsl:apply-templates/>
        </span> 
    </xsl:template> 
    
    <xsl:template match="faction[@ref='blades']">
        <span class="good">
            <xsl:apply-templates/>
        </span> 
    </xsl:template> 
    
    <xsl:template match="faction[@ref='daedra']">
        <span class="evil">
            <xsl:apply-templates/>
        </span> 
    </xsl:template> 
    
    <xsl:template match="faction[@ref='empire']">
        <span class="good">
            <xsl:apply-templates/>
        </span> 
    </xsl:template> 
   
    <xsl:template match="faction[@ref='DarkBrotherhood']">
        <span class="neutral">
        </span> 
    </xsl:template> 
      
 
 
</xsl:stylesheet>   
