<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="travelColl" select="collection('XML-coll/?select=*.xml')"/>   
    <!-- ########################################################################## -->
    <!--2021-12-01 ebb: This XSLT reads a collection of XML files, and pulls data 
         on persons, places, and other inline markup of interesting names/events. 
        The XSLT outputs these in XML format as a simple  data structure, designed to be filled in with more
        information by the project team. 
        
        The output XML from this transformation is a kind of "site index" or "prosopography" file 
        designed for people to add more markup, and then transform to HTML however you wish for the website.-->
    <!-- ########################################################################## -->
      
  <xsl:template match="/"><!-- ebb: We're totally simplifying this document, so we'll do a template match on the document node to select only the bits we need to pull.-->
      <xml>
          <meta>
              <title>Project Prosopography File</title>
              <context>Markup data extracted on <date><xsl:value-of select="current-dateTime()"/></date></context>
          </meta>
          
          <listPerson>
              <xsl:for-each select="$travelColl//persName ! normalize-space() => distinct-values() => sort()">
                  <person>
                      <persName><xsl:value-of select="current()"/>
                      <note resp="name"/>
                          <xsl:comment>Put your name under the @resp attribute</xsl:comment>
                      </persName>
                      <note resp=""><xsl:comment>Your comments about this person: do we know anything about them? Or what do you learn from the letters?
                      You can use your initials as the value of @resp to indicate who wrote this note.</xsl:comment></note>
                  </person>
      
              </xsl:for-each>
              
          </listPerson>
          
          
              <listPlace>
                  <xsl:for-each select="$travelColl//persName ! normalize-space() => distinct-values() => sort()">
                  <person>
                      <placeName><xsl:value-of select="current()"/>
                          <geo>
                              <lat><xsl:comment>Look up the lattitude</xsl:comment></lat>
                              <long></long>
                          </geo>
                          <note resp="name"/>
                          <xsl:comment>Put your name under the @resp attribute</xsl:comment>
                      </placeName>
                  </person>
                      <note resp="">
                          <xsl:comment>Your comments about this person: do we know anything about them? Or what do you learn from the letters?
                      You can use your initials as the value of @resp to indicate who wrote this note.</xsl:comment>
                      </note>
              </listPlace>
          
      
          
      </xml>
  </xsl:template>
    
</xsl:stylesheet>