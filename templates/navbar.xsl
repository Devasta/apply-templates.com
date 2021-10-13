<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:at="https://apply-templates.com"
        version="1.0">

    <xsl:output method="xml"/>

    <xsl:template name="navbar">
        <at:navbar>
            <xh:ul>
                <xh:li>
                    <xh:a href="http://apply-templates.com">Home</xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="https://github.com/Devasta">
                        <svg:svg width="23" height="23" fill="currentColor" viewBox="0 0 16 16">
                            <svg:path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z" />
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="https://twitter.com/divclassbutton">
                        <svg:svg fill="currentColor" viewBox="0 0 50 50" width="23" height="23">
                            <svg:path d="M 50.0625 10.4375 C 48.214844 11.257813 46.234375 11.808594 44.152344 12.058594 C 46.277344 10.785156 47.910156 8.769531 48.675781 6.371094 C 46.691406 7.546875 44.484375 8.402344 42.144531 8.863281 C 40.269531 6.863281 37.597656 5.617188 34.640625 5.617188 C 28.960938 5.617188 24.355469 10.21875 24.355469 15.898438 C 24.355469 16.703125 24.449219 17.488281 24.625 18.242188 C 16.078125 17.8125 8.503906 13.71875 3.429688 7.496094 C 2.542969 9.019531 2.039063 10.785156 2.039063 12.667969 C 2.039063 16.234375 3.851563 19.382813 6.613281 21.230469 C 4.925781 21.175781 3.339844 20.710938 1.953125 19.941406 C 1.953125 19.984375 1.953125 20.027344 1.953125 20.070313 C 1.953125 25.054688 5.5 29.207031 10.199219 30.15625 C 9.339844 30.390625 8.429688 30.515625 7.492188 30.515625 C 6.828125 30.515625 6.183594 30.453125 5.554688 30.328125 C 6.867188 34.410156 10.664063 37.390625 15.160156 37.472656 C 11.644531 40.230469 7.210938 41.871094 2.390625 41.871094 C 1.558594 41.871094 0.742188 41.824219 -0.0585938 41.726563 C 4.488281 44.648438 9.894531 46.347656 15.703125 46.347656 C 34.617188 46.347656 44.960938 30.679688 44.960938 17.09375 C 44.960938 16.648438 44.949219 16.199219 44.933594 15.761719 C 46.941406 14.3125 48.683594 12.5 50.0625 10.4375 Z"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="mailto:daniel@devasta.ie">
                        <svg:svg fill="currentColor" viewBox="0 0 490 490" width="23" height="23">
                            <svg:path d="M295.2,257.8L251.4,295c-3.5,2.9-8.6,2.9-12,0l-43.8-37.1L16.7,409.1h456.6L295.2,257.8z"/>
                            <svg:polygon points="0,92.2 0,397.8 180.1,245"/>
                            <svg:polygon points="16.7,80.9 245,274.6 473.3,80.9"/>
                            <svg:polygon points="309.9,245 490,397.8 490,92.2"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
            </xh:ul>
        </at:navbar>
    </xsl:template>

    <xsl:template name="navbarstyle">
        <xh:style type="text/css">
            @namespace at url("https://apply-templates.com");
            @namespace xh url("http://www.w3.org/1999/xhtml");
            at|navbar {
                border: 1px solid #ccc;
                display: block;
                margin-left: auto;
                margin-right: auto;
                box-shadow: 0 8px 6px -6px grey;
            }
            at|navbar xh|ul {
                width: 900px;
                display: flex;
                justify-content: center;
                flex-direction: row;
                list-style-type: none;
                padding: 0;
                margin: 0 auto;
            }
            at|navbar xh|ul xh|li {
                flex: 1;
                text-align: center;
                margin: 0;
                border: 1px solid #ddd;
                background-color: #424242 ;
            }
            at|navbar xh|ul xh|li xh|a {
                display: block;
                color: #F6F6F6;
                font-size: 23px;
                text-decoration: none;
                margin: 0 auto;
                padding: 14px 16px;
            }
            at|navbar xh|ul xh|li xh|a:hover {
                background-color: #00539C;
                text-decoration: underline;
            }
            /* #424242  #F6F6F6   #00539C  */
        </xh:style>
    </xsl:template>

</xsl:transform>