<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<html>
    <head>
        <meta charset="ISO-8859-1"/>
        <title><xsl:value-of select="triumph/@tipo"/></title>
        <link rel="stylesheet" type="text/css" href="estilos/triumph.css"/>
    </head>
    <body>
        <div id = "todo">
            <header>
                <nav>
                    <ul>
                        <xsl:choose>
                            <xsl:when test="triumph/@tipo = 'CLASSICS'">
                                <li><a class = "seleccion" href="classics.xml">CLASSICS</a></li>
                                <li><a href="cruisers.xml">CRUISERS</a></li>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="triumph/@tipo = 'CRUISERS'">
                                <li><a href="classics.xml">CLASSICS</a></li>
                                <li><a class = "seleccion" href="cruisers.xml">CRUISERS</a></li>
                            </xsl:when>
                        </xsl:choose>
                    </ul>
                </nav>
            </header>

            <section>
                <aside id = "izquierda">
                    <header>
                        <xsl:value-of select="triumph/titulo"/>
                    </header>
                    <p>
                        <xsl:value-of select="triumph/descripcion"/>
                    </p>
                </aside>
                <aside id ="principal">
                    <xsl:for-each select="triumph/motos/moto">
                        <xsl:apply-templates select="." />
                    </xsl:for-each>
                </aside>
                <footer>

                </footer>
            </section>
        </div>
    </body>

</html>
</xsl:template>

<xsl:template match="moto">
    <article>
        <p><xsl:value-of select="@modelo"/></p>
        <img>
            <xsl:attribute name="src">
                <xsl:value-of select = "foto"/>
            </xsl:attribute>
        </img>
        <table>
            <xsl:for-each select = "propiedad">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </table>
    </article>
</xsl:template>

<xsl:template match="propiedad">
    <tr>
        <td>
            <xsl:value-of select="especificacion"/>
        </td>
        <td>
            <xsl:value-of select="valor"/>
        </td>
    </tr>
</xsl:template>
</xsl:stylesheet>