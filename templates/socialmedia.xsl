<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:at="https://apply-templates.com"
        version="1.0">

    <xsl:output method="xml" indent="no"/>

    <xsl:template name="URL">
        <xsl:param name="text"/>
        <xsl:choose>
            <xsl:when test="contains($text,' ')">
                <xsl:value-of select="substring-before($text,' ')"/>
                <xsl:value-of select="'%20'"/>
                <xsl:call-template name="URL">
                    <xsl:with-param name="text" select="substring-after($text,' ')"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="Socials">
        <xsl:param name="URL" select="'https://apply-templates.com'"/>
        <xsl:param name="title" select="'https://apply-templates.com'"/>
        <at:socials>
            <xh:ul>
                <xh:li><xh:p>Share this post on... </xh:p></xh:li>
                <xh:li>
                    <xh:a>
                        <xsl:attribute name="href">
                            <xsl:call-template name="URL">
                                <xsl:with-param name="text" select="concat('https://twitter.com/intent/tweet?text=', $title , ' ',$URL)"/>
                            </xsl:call-template>
                        </xsl:attribute>
                        <svg:svg fill="currentColor" viewBox="0 0 50 50" width="23" height="23">
                            <svg:path
                                    d="M 50.0625 10.4375 C 48.214844 11.257813 46.234375 11.808594 44.152344 12.058594 C 46.277344 10.785156 47.910156 8.769531 48.675781 6.371094 C 46.691406 7.546875 44.484375 8.402344 42.144531 8.863281 C 40.269531 6.863281 37.597656 5.617188 34.640625 5.617188 C 28.960938 5.617188 24.355469 10.21875 24.355469 15.898438 C 24.355469 16.703125 24.449219 17.488281 24.625 18.242188 C 16.078125 17.8125 8.503906 13.71875 3.429688 7.496094 C 2.542969 9.019531 2.039063 10.785156 2.039063 12.667969 C 2.039063 16.234375 3.851563 19.382813 6.613281 21.230469 C 4.925781 21.175781 3.339844 20.710938 1.953125 19.941406 C 1.953125 19.984375 1.953125 20.027344 1.953125 20.070313 C 1.953125 25.054688 5.5 29.207031 10.199219 30.15625 C 9.339844 30.390625 8.429688 30.515625 7.492188 30.515625 C 6.828125 30.515625 6.183594 30.453125 5.554688 30.328125 C 6.867188 34.410156 10.664063 37.390625 15.160156 37.472656 C 11.644531 40.230469 7.210938 41.871094 2.390625 41.871094 C 1.558594 41.871094 0.742188 41.824219 -0.0585938 41.726563 C 4.488281 44.648438 9.894531 46.347656 15.703125 46.347656 C 34.617188 46.347656 44.960938 30.679688 44.960938 17.09375 C 44.960938 16.648438 44.949219 16.199219 44.933594 15.761719 C 46.941406 14.3125 48.683594 12.5 50.0625 10.4375 Z"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a>
                        <xsl:attribute name="href">
                            <xsl:call-template name="URL">
                                <xsl:with-param name="text" select="concat('https://www.reddit.com/submit?title=', $title, '&amp;url=', $URL)"/>
                            </xsl:call-template>
                        </xsl:attribute>
                        <svg:svg fill="currentColor" width="24" height="24" viewBox="0 0 24 24">
                            <svg:path
                                    d="M24 11.779c0-1.459-1.192-2.645-2.657-2.645-.715 0-1.363.286-1.84.746-1.81-1.191-4.259-1.949-6.971-2.046l1.483-4.669 4.016.941-.006.058c0 1.193.975 2.163 2.174 2.163 1.198 0 2.172-.97 2.172-2.163s-.975-2.164-2.172-2.164c-.92 0-1.704.574-2.021 1.379l-4.329-1.015c-.189-.046-.381.063-.44.249l-1.654 5.207c-2.838.034-5.409.798-7.3 2.025-.474-.438-1.103-.712-1.799-.712-1.465 0-2.656 1.187-2.656 2.646 0 .97.533 1.811 1.317 2.271-.052.282-.086.567-.086.857 0 3.911 4.808 7.093 10.719 7.093s10.72-3.182 10.72-7.093c0-.274-.029-.544-.075-.81.832-.447 1.405-1.312 1.405-2.318zm-17.224 1.816c0-.868.71-1.575 1.582-1.575.872 0 1.581.707 1.581 1.575s-.709 1.574-1.581 1.574-1.582-.706-1.582-1.574zm9.061 4.669c-.797.793-2.048 1.179-3.824 1.179l-.013-.003-.013.003c-1.777 0-3.028-.386-3.824-1.179-.145-.144-.145-.379 0-.523.145-.145.381-.145.526 0 .65.647 1.729.961 3.298.961l.013.003.013-.003c1.569 0 2.648-.315 3.298-.962.145-.145.381-.144.526 0 .145.145.145.379 0 .524zm-.189-3.095c-.872 0-1.581-.706-1.581-1.574 0-.868.709-1.575 1.581-1.575s1.581.707 1.581 1.575-.709 1.574-1.581 1.574z"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="email">
                        <xsl:attribute name="href">
                            <xsl:call-template name="URL">
                                <xsl:with-param name="text" select="concat('mailto:?subject=', $title, '&amp;body=', $URL)"/>
                            </xsl:call-template>
                        </xsl:attribute>
                        <svg:svg fill="currentColor" viewBox="0 0 490 490" width="23" height="23">
                            <svg:path d="M295.2,257.8L251.4,295c-3.5,2.9-8.6,2.9-12,0l-43.8-37.1L16.7,409.1h456.6L295.2,257.8z"/>
                            <svg:polygon points="0,92.2 0,397.8 180.1,245"/>
                            <svg:polygon points="16.7,80.9 245,274.6 473.3,80.9"/>
                            <svg:polygon points="309.9,245 490,397.8 490,92.2"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
            </xh:ul>
        </at:socials>
    </xsl:template>

    <xsl:template name="SocialsStyle">
        <xh:style type="text/css">
            @namespace at url("https://apply-templates.com");
            @namespace xh url("http://www.w3.org/1999/xhtml");

            at|socials {
                border: 1px solid #ccc;
                display: block;
                box-shadow: 0 8px 6px -6px grey;
                width: 900px;
                background-color: #00539C;
                padding: 0;
                margin: 0;
            }

            at|socials xh|ul {
                display: flex;
                flex-flow: row wrap;
                justify-content: flex-end;
                list-style: none;
                margin: 0;
                padding: 0;
                align-items: center;
            }

            at|socials xh|ul xh|li {
                padding: 1em;
                color: white;
            }

            at|socials xh|ul xh|li xh|p {
                margin : 0 auto;
                padding: 0;
            }

            at|socials xh|ul xh|li xh|a {
                display: block;
                color: white;
                margin : 0 auto;
            }

        </xh:style>
    </xsl:template>

</xsl:stylesheet>