<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>核酸检测</h2>
              <xsl:for-each select="NucleicAcid/Channel">

                <p>
                    通道编号
                    <xsl:value-of select="id"/>
                    医务人员
                    <xsl:value-of select="TesterName"/>
                    助手
                    <xsl:value-of select="Assistant"/>
                </p>

                <xsl:for-each select="Tube">
                    <h3>
                    检测时间
                    <xsl:value-of select="date/year"/>年
                    <xsl:value-of select="date/month"/>月
                    <xsl:value-of select="date/day"/>日
                    <xsl:value-of select="date/hour"/>时
                    </h3>
                    <p>
                        试管编号
                        <xsl:value-of select="id"/>
                        检测结果
                        <xsl:value-of select="testres"/>
                    </p>

                    <p>检测人员</p>

                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>姓名
                            </th>
                            <th>学号</th>
                        </tr>
                        <xsl:for-each select="participant">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="IdNum"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
              </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>