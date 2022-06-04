<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
    <xsl:template match="pokedex">

        <html>
            <head>
                <meta charset="ISO-8859-1"/>
                <title>Pokedex</title>
                <link rel="stylesheet" type="text/css" href="estilos/pokedex.css"></link>
            </head>
            <body>
                <div id = "tot">
                    <section>
                        <div>
                            <xsl:for-each select = "pokemon">
                                <article>
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select = "imagen"/>
                                        </xsl:attribute>
                                    </img>
                                    <p class = "numero">
                                        <xsl:value-of select = "@numero"/>
                                    </p>
                                    <p class = "nombre">
                                        <xsl:value-of select = "nombre"/>
                                    </p>

                                    <xsl:for-each select = "tipos/tipo">
                                        <xsl:if test = ". = 'Planta'">
                                            <p class = "planta">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                        <xsl:if test = ". = 'Veneno'">
                                            <p class = "veneno">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                        <xsl:if test=". = 'Fuego'">
                                            <p class = "fuego">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                        <xsl:if test=". = 'Volador'">
                                            <p class = "volador">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                        <xsl:if test=". = 'Agua'">
                                            <p class = "agua">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                        <xsl:if test=". = 'Bicho'">
                                            <p class = "bicho">
                                                <xsl:value-of select = "."/>
                                            </p>
                                        </xsl:if>
                                    </xsl:for-each>
                                </article>
                            </xsl:for-each>
                        </div>
                        <footer>
                            
                        </footer>
                    </section>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>