<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
   
    
   <xsl:template match="/">
       <html>
           <head>
               <title>Mitford Project</title>               
           </head>
           <body>
               <h1>Lists of Organizations</h1> 
               
               <ul>
                   <xsl:apply-templates select="descendant::listOrg">
                       
                   </xsl:apply-templates>
               </ul> 
               
           </body> 
       </html>
   </xsl:template> 
    
    
    
    <xsl:template match="listOrg">
        <li><xsl:apply-templates select="child::head!normalize-space()"/>
            <ol>
                <xsl:apply-templates select="child::org">
                    
                </xsl:apply-templates>
            </ol>
        </li>     
    </xsl:template>
    
    

    <xsl:template match="org">
        <li>
            <xsl:apply-templates select="child::orgName[1]!normalize-space()">       
            </xsl:apply-templates>
        </li>
    </xsl:template>
    
<!--Is there Pretty Print in the XSLT window??-->
    
</xsl:stylesheet>