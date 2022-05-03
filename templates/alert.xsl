<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:atom="http://www.w3.org/2005/Atom"
        xmlns:at="https://apply-templates.com"
        xmlns:xhl="https://apply-templates.com/XMLHL"
        version="1.0">

    <xsl:output version="1.0" method="xml"/>

    <xsl:template match="at:alert">
        <at:alertbox>
            <xsl:attribute name="type">
                <xsl:choose>
                    <xsl:when test="@type"><xsl:value-of select="@type"/></xsl:when>
                    <xsl:otherwise>warn</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xh:input type="checkbox">
                <xsl:attribute name="id">
                    <xsl:value-of select="generate-id(at:alert)"/>
                </xsl:attribute>
            </xh:input>
            <xh:label title="close">
                <xsl:attribute name="for">
                    <xsl:value-of select="generate-id(at:alert)"/>
                </xsl:attribute>
            </xh:label>
            <xh:p>
                <xsl:value-of select="."/>
            </xh:p>
        </at:alertbox>
    </xsl:template>
    <xsl:template name="AlertCSS">

    </xsl:template>

</xsl:transform>
