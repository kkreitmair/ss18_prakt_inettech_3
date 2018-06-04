<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h1>Vorlesung <xsl:value-of select="Vorlesung/Titel"/></h1>
      <h2>Für das <xsl:value-of select="Vorlesung/Semester"/></h2>
      <xsl:for-each select="Vorlesung/Hochschule">
        <xsl:element name="h3">
          Verfügbar an der Hochschule <xsl:value-of select="."/>
        </xsl:element>
      </xsl:for-each>
      <h4>Anzahl der Semester Wochen Stunden (SWS): <xsl:value-of select="Vorlesung/SWS"/></h4>
      <p>
        <b>Die einzelnen Kapitel und ihre dazugehörigen Quellen:</b>
        <xsl:for-each select="Vorlesung/Kapitel">
          <xsl:element name="ul">
            <xsl:element name="li">
              <xsl:value-of select="Name"/>
                <xsl:element name="ul">
<!--                <xsl:for-each select="idref(Q1)">
                  <h1>found!!!</h1>
                </xsl:for-each> -->
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:for-each>
      </p>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
