<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    
    <xsl:template match="format[@wordType='italics']">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    
    
 <html>
     <head>
         <link rel="stylesheet" type="text/css" href="style.css"/>
     </head>
 </html>
    
    
   <section id="poem">
       
    <xsl:template match="poem">
        <div class="poemTitle">
            <xsl:apply-templates select="child::poemTitle"></xsl:apply-templates>
        </div>
    </xsl:template>
       
       <xsl:template match="stanza">
               <xsl:apply-templates select="child::stanza"/>
       </xsl:template>
       
       <xsl:template match="stanza">
           <section class="stanza">
               <xsl:apply-templates/>
           </section>
       </xsl:template>
       
    <!--<xsl:template match="stanza">
        <p n="{preceding-sibling::stanza => count()+ 1 }"/> <xsl:apply-templates/>
    </xsl:template>-->
       
       <xsl:template match="line">
           <div class="line">
               <span class="lineNum">
                   <xsl:value-of select="@n"/>
               </span>
           </div>
       </xsl:template>
   
   <xsl:template match="format[@wordType]">
       
   </xsl:template>
   
   
   
   
   
   
   <!-- <xsl:template match="line">
        <p class="lb">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
   
    <h1> 
        <xsl:template match="line">
            <xsl:apply-templates select="line"></xsl:apply-templates>
        </xsl:template>
    </h1>
    
    <h3> 
        <xsl:template match="poemTitle">
            <xsl:apply-templates select="poemTitle"></xsl:apply-templates>
        </xsl:template>
    </h3>-->
       
    </section>
    
    
    
<!--  It may be because my brain is absolutely fried, but this is really metaphysically hurting me :')  -->
    
</xsl:stylesheet>