<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:atom="http://www.w3.org/2005/Atom"
        xmlns:at="https://apply-templates.com"
        version="1.0">

    <xsl:output method="xml"/>

    <xsl:template mode="content" match="atom:entry">
        <xh:article>
            <xh:header>
                <xh:h1>
                    <xh:a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="atom:link/@href"/>
                        </xsl:attribute>
                        <xsl:value-of select="atom:title"/>
                    </xh:a>
                </xh:h1>
                <at:publicationdetails>
                    <at:author>
                        <xsl:value-of select="atom:author/atom:name"/>
                    </at:author>
                    <at:date>
                        <xsl:value-of select="atom:updated"/>
                    </at:date>
                </at:publicationdetails>
            </xh:header>
        </xh:article>
    </xsl:template>

    <xsl:template mode="content" match="at:post">
        <xh:article>
            <xh:header>
                <xh:h1>
                    <xsl:value-of select="at:title"/>
                </xh:h1>
                <at:publicationdetails>
                    <at:author>
                        <xsl:value-of select="at:author"/>
                    </at:author>
                    <at:date>
                        <xsl:value-of select="at:date"/>
                    </at:date>
                </at:publicationdetails>
            </xh:header>
            <xh:section>
                <xsl:copy-of select="at:content"/>
            </xh:section>
            <xh:footer>
                <xsl:call-template name="Socials">
                    <xsl:with-param name="title" select="at:title"/>
                    <xsl:with-param name="URL" select="concat('https://apply-templates.com/', /at:post/@posturl)"/>
                </xsl:call-template>
            </xh:footer>
        </xh:article>
    </xsl:template>

    <xsl:template name="postsstyle">
        <xh:style type="text/css">
            @namespace xh url("http://www.w3.org/1999/xhtml");
            @namespace at url("https://apply-templates.com");

            xh|article {

            }
            xh|article xh|header {
                width: 900px;
                padding-bottom: 5px;
                margin-bottom: 0;
                margin-top: 35px;
                padding-top: 0;
                background-color: #00539C;
                color: #F6F6F6;
                display: inline-block;
                position: relative;
            }
            xh|article xh|header xh|h1 {
                padding:0;
                margin:0;
                font-size: 1.7vw;
                width: 600px;
                height: 75px;

            }
            xh|article xh|header xh|h1 xh|a {
                text-decoration: none;
                color: #F6F6F6;
            }
            xh|article xh|header at|publicationdetails at|author {
                position: absolute;
                top: 0;
                right: 0;
                font-size: 1.2rem;
            }
            xh|article xh|header at|publicationdetails at|date {
                position: absolute;
                bottom: 0;
                right: 0;
                font-size: 1.2rem;
            }
            xh|article > xh|section {
                background-color: #F6F6F6;
                width: 880px;
                padding-left: 10px;
                padding-right: 10px;
                padding-top: 5px;
                padding-bottom: 10px;
            }
        </xh:style>
    </xsl:template>

</xsl:transform>