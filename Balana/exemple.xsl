<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<html>
    <head>
        <meta charset="ISO-8859-1"/>
        <title><xsl:value-of select="grup_balana/@tipo_sala"/></title>
        <link rel="stylesheet" type="text/css" href="estils/grup_balana.css"/>
    </head>
    <body>
        <div id = "todo">
            <div id = "cabecera">

            </div>
            <div id = "izquierdo">
                <div id = "imagen_p_sup">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:text>imatges_balana/part2.gif</xsl:text>
                        </xsl:attribute>
                    </img>
                </div>
                <div id = "menu">
                    <p>SALAS</p>
                    <ul>
                        <li><a href="cines.xml">Salas de cine</a></li>
                        <li><a href="teatros.xml">Salas de teatro</a></li>
                    </ul>
                </div>
                <div id = "imagen_p_inf">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:text>imatges_balana/part3.gif</xsl:text>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
            <div id = "derecho">
                <div id = "imagen_g_sup">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:text>imatges_balana/part7.gif</xsl:text>
                        </xsl:attribute>
                    </img>
                </div>

                <div id = "informacion">
                    <!-- Afegida la clase titulo a p -->
                    <p class = "titulo">SALAS DE  <xsl:value-of select="grup_balana/@tipo_sala"/></p>
                        <xsl:for-each select="grup_balana/sala">
                            <xsl:apply-templates select="." />
                        </xsl:for-each>
                </div>

                <div id = "imagen_g_inf">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:text>imatges_balana/part8.gif</xsl:text>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
            <footer>
                <p>© 2017 GRUP BALAÑA</p>
            </footer>
        </div>
    </body>

</html>
</xsl:template>

</xsl:stylesheet>