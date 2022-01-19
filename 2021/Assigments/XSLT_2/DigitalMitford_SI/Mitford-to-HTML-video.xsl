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
               <title>Organizations in Digital Mitford</title>
               <!-- This is where you'd add a CSS link line. -->
           </head>
           <body>
              <h1>Digital Mitford Lists of Organizations</h1> 
               <!--ebb: XPath shows us we have three <listOrg> elements in the si-modified.xml source document. 
                   Let's set up a numbered list. -->
              <ol>
                  <xsl:apply-templates select="descendant::listOrg"/>
              </ol> 
           </body> 
       </html>
   </xsl:template> 
 
 <xsl:template match="listOrg">
     <li><xsl:apply-templates select="child::head ! normalize-space()"/> 
         <ul>
             <xsl:apply-templates select="child::org"/>           
         </ul>   
     </li>

 </xsl:template>
    
    <xsl:template match="org">
        <li><xsl:apply-templates select="child::orgName ! normalize-space()"/></li>
    </xsl:template>
  

</xsl:stylesheet>