<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xh="http://www.w3.org/1999/xhtml"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:at="https://apply-templates.com"
        version="1.0">

    <xsl:output method="xml" indent="no"/>

    <xsl:template name="navbar">
        <at:navbar>
            <xh:ul>
                <xh:li>
                    <xh:a href="https://apply-templates.com" aria-label="Homepage">Home</xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="https://github.com/Devasta" aria-label="Github Page">
                        <svg:svg width="23"
                                 height="23"
                                 fill="currentColor"
                                 viewBox="0 0 16 16">
                            <svg:path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z" />
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a rel="me" href="https://hachyderm.io/@divclassbutton" aria-label="Mastodon Account">
                        <svg:svg fill="currentColor"  width="23" height="23" viewBox="0 0 230 230">
                            <svg:path fill="#2b90d9" d="M211.80734 139.0875c-3.18125 16.36625-28.4925 34.2775-57.5625 37.74875-15.15875 1.80875-30.08375 3.47125-45.99875 2.74125-26.0275-1.1925-46.565-6.2125-46.565-6.2125 0 2.53375.15625 4.94625.46875 7.2025 3.38375 25.68625 25.47 27.225 46.39125 27.9425 21.11625.7225 39.91875-5.20625 39.91875-5.20625l.8675 19.09s-14.77 7.93125-41.08125 9.39c-14.50875.7975-32.52375-.365-53.50625-5.91875C9.23234 213.82 1.40609 165.31125.20859 116.09125c-.365-14.61375-.14-28.39375-.14-39.91875 0-50.33 32.97625-65.0825 32.97625-65.0825C49.67234 3.45375 78.20359.2425 107.86484 0h.72875c29.66125.2425 58.21125 3.45375 74.8375 11.09 0 0 32.975 14.7525 32.975 65.0825 0 0 .41375 37.13375-4.59875 62.915"/>
                            <svg:path fill="#fff" d="M177.50984 80.077v60.94125h-24.14375v-59.15c0-12.46875-5.24625-18.7975-15.74-18.7975-11.6025 0-17.4175 7.5075-17.4175 22.3525v32.37625H96.20734V85.42325c0-14.845-5.81625-22.3525-17.41875-22.3525-10.49375 0-15.74 6.32875-15.74 18.7975v59.15H38.90484V80.077c0-12.455 3.17125-22.3525 9.54125-29.675 6.56875-7.3225 15.17125-11.07625 25.85-11.07625 12.355 0 21.71125 4.74875 27.8975 14.2475l6.01375 10.08125 6.015-10.08125c6.185-9.49875 15.54125-14.2475 27.8975-14.2475 10.6775 0 19.28 3.75375 25.85 11.07625 6.36875 7.3225 9.54 17.22 9.54 29.675"/>
                        </svg:svg>
                    </xh:a>
                </xh:li>
                <xh:li>
                    <xh:a href="mailto:daniel@devasta.ie" aria-label="Email Address">
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
