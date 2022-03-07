<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html><head>
		<link rel="stylesheet" type="text/css" href="libros.css" />
		</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="book">
		<h2>
			OBRA:
			<xsl:value-of select="title"></xsl:value-of>
		</h2>
		<p>Año:
			<xsl:value-of select="year"></xsl:value-of>
		</p>
		<p> Precio:
		<span>
			<xsl:value-of select="price"></xsl:value-of> 
		</span> euros
		</p>
	</xsl:template>
</xsl:stylesheet>