<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ответ</title>
      </head>
      <body>
        <table>
            <tr>
              <th>Количество итераций</th>
              <th>Значение</th>
              <th>Палиндром?</th>
            </tr>
            <xsl:for-each select="objects/object">
            <tr>
              <td>
                <xsl:value-of select="iteration"></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="value"></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="palindrome"></xsl:value-of>
              </td>
            </tr>
             </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
