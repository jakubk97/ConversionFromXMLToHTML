<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 

    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 

           xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xsl:template match="/">
<html>
<head />
  <body title="Music">
     <xsl:for-each select="Music">
     <p>
     <xsl:for-each select="Song">
     <xsl:if test="position( )=1">
          <table border="1">
          <thead>
          <tr>
                    <td>Song author</td>
                    <td>Song Title</td>
                    <td>Years of production</td>
          </tr>
       </thead>
       <tbody>
       <xsl:for-each select="../Song">
           <tr>
           <td>
              <xsl:for-each select="@author">
              <xsl:value-of select="." />
              </xsl:for-each>
         </td>
         <td>
              <xsl:for-each select="@title">
              <xsl:value-of select="." />
              </xsl:for-each>
        </td>
        <td>
              <xsl:for-each select="@productionYear">
              <xsl:value-of select="." />
              </xsl:for-each>
        </td>
        </tr>
        </xsl:for-each>
      </tbody>
      </table>
      </xsl:if>
</xsl:for-each>
</p>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 