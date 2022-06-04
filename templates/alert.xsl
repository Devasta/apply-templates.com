<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:at="https://apply-templates.com"
        version="1.0">

    <xsl:output version="1.0" method="xml"/>

    <xsl:template name="AlertIcon">
        <svg:svg
            version="1.1"
            baseProfile="tiny"
            id="Layer_1"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            x="0px" y="0px" width="42px" height="42px" viewBox="-0.5 0.5 42 42">
            <svg:path d="M18.295,3.895L1.203,34.555C-0.219,37.146,0.385,39.5,4.228,39.5H36.77c3.854,0,4.447-2.354,3.025-4.945L22.35,3.914
                C21.996,3.223,21.482,2.49,20.393,2.5C19.233,2.521,18.658,3.203,18.295,3.895z M18.5,13.5h4v14h-4V13.5z M18.5,30.5h4v4h-4V30.5z"
            />
        </svg:svg>
    </xsl:template>

    <xsl:template name="CloseIcon">
        <svg:svg
            height="40px"
            id="Layer_1"
            style="enable-background:new 0 0 512 512;"
            version="1.1"
            viewBox="0 0 512 512"
            width="40px"
            xml:space="preserve"
            xmlns:xlink="http://www.w3.org/1999/xlink">
            <svg:g>
                <svg:path
                d="M256,33C132.3,33,32,133.3,32,257c0,123.7,100.3,224,224,224c123.7,0,224-100.3,224-224C480,133.3,379.7,33,256,33z    M364.3,332.5c1.5,1.5,2.3,3.5,2.3,5.6c0,2.1-0.8,4.2-2.3,5.6l-21.6,21.7c-1.6,1.6-3.6,2.3-5.6,2.3c-2,0-4.1-0.8-5.6-2.3L256,289.8   l-75.4,75.7c-1.5,1.6-3.6,2.3-5.6,2.3c-2,0-4.1-0.8-5.6-2.3l-21.6-21.7c-1.5-1.5-2.3-3.5-2.3-5.6c0-2.1,0.8-4.2,2.3-5.6l75.7-76   l-75.9-75c-3.1-3.1-3.1-8.2,0-11.3l21.6-21.7c1.5-1.5,3.5-2.3,5.6-2.3c2.1,0,4.1,0.8,5.6,2.3l75.7,74.7l75.7-74.7   c1.5-1.5,3.5-2.3,5.6-2.3c2.1,0,4.1,0.8,5.6,2.3l21.6,21.7c3.1,3.1,3.1,8.2,0,11.3l-75.9,75L364.3,332.5z"/>
            </svg:g>
        </svg:svg>
    </xsl:template>

    <xsl:template match="at:alert">
        <at:alertbox>
            <xsl:attribute name="type">
                <xsl:choose>
                    <xsl:when test="@type">
                        <xsl:value-of select="@type"/>
                    </xsl:when>
                    <xsl:otherwise>warn</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xh:input type="checkbox" style="display: none;">
                <xsl:attribute name="id">
                    <xsl:value-of select="generate-id(parent::node())"/>
                </xsl:attribute>
            </xh:input>
            <xh:label title="close" style="cursor: pointer;">
                <xsl:attribute name="for">
                    <xsl:value-of select="generate-id(parent::node())"/>
                </xsl:attribute>
                <xsl:call-template name="CloseIcon"/>
            </xh:label>
            <at:alertmessage>
                <at:alerticon>
                    <xsl:call-template name="AlertIcon"/>
                </at:alerticon>
                <xh:p>
                    <xsl:choose>
                        <xsl:when test="./@warning"><xsl:value-of select="./@warning"/></xsl:when>
                        <xsl:otherwise>ALERT</xsl:otherwise>
                    </xsl:choose>
                </xh:p>
            </at:alertmessage>
            <at:revealedcontent>
                <xsl:value-of select="."/>
            </at:revealedcontent>
        </at:alertbox>
    </xsl:template>
    <xsl:template name="AlertCSS">
        <xh:style type="text/css">
            @namespace at url("https://apply-templates.com");
            @namespace xh url("http://www.w3.org/1999/xhtml");

            at|alertbox at|alertmessage {
                display: block;
                padding: 6px;
                margin: 6px;
                border-radius: 3px;
                border: 1px solid rgb(180, 180, 180);
                background-color: #dc6262;
            }

            at|alertbox xh|input:checked ~ at|alertmessage {
                display: none;
            }

            at|alertbox at|alerticon {
                float: left;
                margin: 0px 16px 0px 6px;
            }

            at|alertbox xh|label {
                float: right;
                margin: 10px 16px 10px 10px;
            }

            at|alertbox xh|input:checked ~ xh|label {
                display: none;
            }

            at|alertbox xh|input:not(:checked) ~ at|revealedcontent {
                display: none;
            }

            at|alertbox xh|input:checked ~ at|revealedcontent {
                display: block;
            }
        </xh:style>
    </xsl:template>

</xsl:transform>