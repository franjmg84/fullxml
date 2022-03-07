<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  xmlns="http://www.w3.org/1999/xhtml"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<libros>
			<xsl:variable name="xmlns" select="'http://www.w3.org/1999/xhtml'"/>

			<xsl:attribute name="xmlns"><xsl:value-of select="$xmlns"/></xsl:attribute>
			<xsl:for-each select="/libros/libro">
				<libro>
					<h2>
						<xsl:value-of   select="./h2"/>
					</h2>
					<xsl:for-each select="./p">
						<p>
							<xsl:value-of   select="."/>
						</p>
					</xsl:for-each>
					<span>
						<xsl:value-of   select="./span"/>
					</span>
				</libro>
			</xsl:for-each>
		</libros>
	</xsl:template>
</xsl:stylesheet>