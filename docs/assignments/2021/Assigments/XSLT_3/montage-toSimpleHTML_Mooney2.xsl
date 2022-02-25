<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    

    <!--Tasks: Write XSLT to output an HTML list representing titles and first lines of poems 
        in the Montage collection. 
        We need an OUTPUT LINE, and to set up the namespaces we're processing!
    -->
 
   
<xsl:template match="/">  
    <html>
      <head>
          <title>MONTAGE OF A DREAM DEFERRED</title>
      </head>    
         <body>
             
      
             
              <section id="poem">
                <xsl:apply-templates/>
              </section>
             
             <br/>
             
              <section id="poemTitle">
                  <xsl:apply-templates select="descendant::poemTitle"/>
              </section>   
             
             <br/>
             
              <section id="stanza">
                  <xsl:apply-templates/>
              </section>
             
             <br/>
             
             <section id="line">
                   <xsl:apply-templates/>   
             </section>
             
             <br/>
             
             <section id="pb">
                 <xsl:apply-templates/>
             </section>
             

         </body>
  </html>  
</xsl:template>


   
    <xsl:template match="poemTitle">
        <xsl:apply-templates/>
    </xsl:template>
   
   
    <xsl:template match="poem">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="line">
        <br/><span class="n"><xsl:value-of select="count(preceding-sibling::line)+1"/></span>
        
       <!-- <span id="{@n}">fun</span>-->
        
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="stanza">
        <section class="stanza"><span class="n"><xsl:value-of select="count(preceding::stanza)+1"/></span></section>
        <xsl:apply-templates/>
    </xsl:template>
    
  
    
    
    
 
</xsl:stylesheet>