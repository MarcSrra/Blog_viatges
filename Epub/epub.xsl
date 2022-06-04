<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<html>
    <head>
        <meta charset="ISO-8859-1"/>
        <title><xsl:value-of select="/libros/lista"/></title>
        <link rel="stylesheet" type="text/css" href="estilos/epub.css"/>
    </head>
    <body>
        <div id = "divCabecera">
            <div id = "divLogo">

            </div>
            <div id = "divLema">

            </div>
        </div>
            
        <div id = "divMenu">
            <ul>
                <li><a href="novedades.xml">Novedades</a></li>
                <li><a href="populares.xml">Populares</a></li>
            </ul>
        </div>

        <div id = "divContenido">
            <xsl:for-each select = "/libros/libro">
                <div>
                    <xsl:apply-templates select="."/>
                </div>
            </xsl:for-each>
        </div>
    </body>
</html>
</xsl:template>

<xsl:template match = "libro">
    <div class = "libro">
        <div id = "imatge">
            <img class = "imagen">
                <xsl:attribute name="src">
                    <xsl:value-of select = "imagen"/>
                </xsl:attribute>
            </img>
        </div>
        
        <div id = "divDatos">
            <xsl:for-each select = "autores/autor">
                <p class ="autor">
                    <xsl:value-of select = "."/>
                </p>
            </xsl:for-each>
            <p class = "titulo">
                <xsl:value-of select="titulo"/>
            </p>
            <p class = "genero">
                <xsl:for-each select = "generos/genero">
                    - <xsl:value-of select = "."/>
                </xsl:for-each>
            </p>
            <xsl:apply-templates select="puntuacion" />
        </div>
    </div>
</xsl:template>

<xsl:template match = "puntuacion">
    <xsl:choose>
        <xsl:when test = ". = 1">
            <img class="estrella1">
                <xsl:attribute name="src">
                    <xsl:text>imagenes/1_estrella.png</xsl:text>                       
                </xsl:attribute>                    
            </img>
        </xsl:when>
        <xsl:when test = ". = 2">
            <img class="estrella2">
                <xsl:attribute name="src">
                    <xsl:text>imagenes/2_estrellas.png</xsl:text>                       
                </xsl:attribute>                    
            </img>
        </xsl:when>
        <xsl:when test = ". = 3">
            <img class="estrella3">
                <xsl:attribute name="src">
                    <xsl:text>imagenes/3_estrellas.png</xsl:text>                       
                </xsl:attribute>                    
            </img>
        </xsl:when>
        <xsl:when test = ". = 4">
            <img class="estrella4">
                <xsl:attribute name="src">
                    <xsl:text>imagenes/4_estrellas.png</xsl:text>                       
                </xsl:attribute>                    
            </img>
        </xsl:when>
        <xsl:when test = ". = 5">
            <img class="estrella5">
                <xsl:attribute name="src">
                    <xsl:text>imagenes/5_estrellas.png</xsl:text>                       
                </xsl:attribute>                    
            </img>
        </xsl:when>
    </xsl:choose>
</xsl:template>

</xsl:stylesheet>