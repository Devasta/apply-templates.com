<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:atom="http://www.w3.org/2005/Atom"
        xmlns:at="https://apply-templates.com"
        xmlns:xmlhl="https://apply-templates.com/XMLHL"
        version="1.0">

    <xsl:output version="1.0"
                method="xml"
                omit-xml-declaration="no"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                xml:lang="en"
                encoding="UTF-8"
                indent="yes"
                media-type="application/xhtml+xml"/>

    <xsl:include href="https://apply-templates.com/XMLHL/XMLHL.xsl"/>
    <xsl:include href="navbar.xsl"/>
    <xsl:include href="posts.xsl"/>
    <xsl:include href="socialmedia.xsl"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/">
        <xh:html lang="en" xml:lang="en"
                 xmlns:xh="http://www.w3.org/1999/xhtml">
            <xh:head>
                <xh:title>
                    <xsl:choose>
                        <xsl:when test="/at:post/at:title">
                            <xsl:value-of select="/at:post/at:title"/>
                        </xsl:when>
                        <xsl:otherwise>apply-templates.com</xsl:otherwise>
                    </xsl:choose>
                </xh:title>
                <xh:link rel="icon" type="image/svg+xml" href="/icons/favicon.svg" />

                <xh:style type="text/css">
                    @namespace xh url("http://www.w3.org/1999/xhtml");
                    xh|body {
                        box-sizing: border-box;
                        padding: 0;
                        margin: 0;
                        background-color: #eeeeee;
                        font-family: Verdana,sans-serif;
                    }
                    xh|main {
                        width: 900px;
                        margin-left: auto;
                        margin-right: auto;
                    }
                    /* My Debugger! :)
                    *:hover {
                        outline: 1px solid green;
                    }
                     */
                </xh:style>
                <xsl:call-template name="navbarstyle"/>
                <xsl:call-template name="postsstyle"/>
                <xsl:call-template name="SocialsStyle"/>
                <xsl:call-template name="XMLHLStyles"/>
            </xh:head>
            <xh:body>
                <xsl:call-template name="navbar"/>
                <xh:main>
                    <xsl:apply-templates mode="content" select="atom:feed/atom:entry"/>
                    <xsl:apply-templates mode="content" select="at:post"/>
                </xh:main>
            </xh:body>
        </xh:html>
    </xsl:template>

</xsl:stylesheet>