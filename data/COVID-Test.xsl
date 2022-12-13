<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>COVID-test</h2>
                <h3>
                    检测时间
                    <xsl:value-of select="COVID-test/date/year"/>年
                    <xsl:value-of select="COVID-test/date/month"/>月
                    <xsl:value-of select="COVID-test/date/day"/>日
                    <xsl:value-of select="COVID-test/date/hour"/>时
                </h3>

                <xsl:for-each select="COVID-test/test-tube">
                    <p>
                        试管编号
                        <xsl:value-of select="id"/>
                        试管容量
                        <xsl:value-of select="capacity"/>
                        检测结果
                        <xsl:value-of select="test-result"/>
                    </p>

                    <p>检测人员</p>

                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>姓名
                            </th>
                            <th>身份证号</th>
                        </tr>
                        <xsl:for-each select="person">
                            <tr>
                                <td>
                                    <xsl:value-of select="first-name"/>
                                    <xsl:value-of select="last-name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ID-number"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>