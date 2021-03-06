<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="WBColl" select="collection('XML/?select=*.xml')"/>   
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Warren Behrend’s Last Correspondence and Memorial</title>
                <link rel="stylesheet" type="text/css" href="WBstyle.css"/>
            </head>
            <body>
                <h1>Warren Behrend’s Last Correspondence and Memorial</h1>
                
                <section id="toc">
                    <h2>Contents</h2>
                    <ul>
                        <xsl:apply-templates select="$WBColl//xml" mode="toc"/>   
                    </ul>
                </section> 
                <br/>
                <section id="fulltext">
                    <xsl:apply-templates select="$WBColl//xml"/>
                </section>
                
            </body>
        </html>
    </xsl:template>
    
    <!--Templates in toc mode for the table of contents -->
    <xsl:template match="xml" mode="toc">
            <xsl:apply-templates select="descendant::title"/>
  
        <li>
            <a href="#WtoP-Dec19">Letter from Warren Behrend to Mary and Ernst Behrend, 1929-12-17</a>
            <a href="#WtoP-Dec17">Speech prepared by P. J. Long for a memorial service for Warren Behrend, after 1930</a>
            <a href="#PtoW-Dec17">Letter from Mary and Ernst Behrend to Warren Behrend, 1929-12-17</a>
        </li>
        
        <xsl:apply-templates select="$WBColl//xml">
            <xsl:sort/>
        </xsl:apply-templates>
    </xsl:template>
    
    
    
    <!--Normal templates for fulltext view -->
    <xsl:template match="xml">
        
            <xsl:apply-templates select="descendant::title"/>
        
        
        <div class="header"><xsl:apply-templates select="descendant::header"/> </div>
        <p>
            <xsl:apply-templates select="descendant::p"/>
        </p>
        <div class="closer"><xsl:apply-templates select="descendant::closer"/></div> 
        
        
    </xsl:template>
    
    
    <xsl:template match="header">       
        <div class="date">
            <xsl:apply-templates select="child::date"/></div>
        <div class="greeting">
            <xsl:apply-templates select="child::greeting"/></div>
        
   </xsl:template>
   
    
    <xsl:template match="p">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    
    
    <xsl:template match="ln">
        <br/>
        <span class="n">
            <xsl:value-of select="count(preceding-sibling::ln)+1"/>
        </span>.
    </xsl:template>
    
    
    <xsl:template match="title">
    <xsl:apply-templates/>
        <h2 id="WtoP-Dec17">Letter from Warren Behrend to Mary and Ernst Behrend, 1929-12-17</h2>
        <h2 id="WtoP-Dec19">Letter from Warren Behrend to Mary and Ernst Behrend, 1929-12-17</h2>
        <h2 id="PtoW-Dec17">Letter from Mary and Ernst Behrend to Warren Behrend, 1929-12-17</h2>
        
    </xsl:template>
    
    
</xsl:stylesheet>