<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>test</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>IdNum</th>
      </tr>
      <xsl:for-each select="NucleicAcid/Channel/Tube/participant">
      <tr>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="IdNum"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>