<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
  <xsl:template match="/">
      <html>
         <head>
             <title><xsl:apply-templates select="descendant::title"/></title>
             <link rel="stylesheet" type="text/css" href="calendarStyle.css"/>
         </head> 
          <body>
            
            <xsl:apply-templates select="descendant::div1"/>
            
          </body>
          
      </html>
      
  </xsl:template>
    
    
   <xsl:template match="div2">
       <section class="calendarEntry">
           <figure>
               <img src="{@facs}" alt="{descendant::date}"/>
               <figcaption>
                   <xsl:apply-templates select="descendant::date"/>
               </figcaption>
           </figure>
           <xsl:apply-templates/>
       </section>
   </xsl:template> 
   
   <xsl:template match="fw"/>
    
    <xsl:template match="ab">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
       
    <xsl:template match="lb">
        <br/>
        <span class="lineNum">
            <xsl:value-of select="count(preceding::lb)+1"/>
        </span>
    </xsl:template>
   
   
   
   
</xsl:stylesheet>