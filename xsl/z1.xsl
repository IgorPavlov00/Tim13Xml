<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <xsl:template match="/">
        <fo:root font-family="Calibri">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="section1-first-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="40pt"
                    margin-left="40pt">
                    <fo:region-body margin-top="71.75pt" margin-bottom="47.4pt" column-count="3"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="first-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="first-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="section1-odd-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="40pt"
                    margin-left="40pt">
                    <fo:region-body margin-top="71.75pt" margin-bottom="47.4pt" column-count="3"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="odd-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="odd-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="section1-even-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="40pt"
                    margin-left="40pt">
                    <fo:region-body margin-top="71.75pt" margin-bottom="47.4pt" column-count="3"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="even-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="even-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="section1-page-sequence-master">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference odd-or-even="odd"
                            master-reference="section1-odd-page" />
                        <fo:conditional-page-master-reference odd-or-even="even"
                            master-reference="section1-even-page" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
                <fo:simple-page-master master-name="section2-first-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="51pt"
                    margin-left="46pt">
                    <fo:region-body margin-top="71.95pt" margin-bottom="72pt" column-count="2"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="first-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="first-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="section2-odd-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="51pt"
                    margin-left="46pt">
                    <fo:region-body margin-top="71.95pt" margin-bottom="72pt" column-count="2"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="odd-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="odd-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="section2-even-page" page-width="8.5in"
                    page-height="11in" margin-top="0pt" margin-bottom="0pt" margin-right="51pt"
                    margin-left="46pt">
                    <fo:region-body margin-top="71.95pt" margin-bottom="72pt" column-count="2"
                        column-gap="36pt"></fo:region-body>
                    <fo:region-before region-name="even-page-header" extent="11in"></fo:region-before>
                    <fo:region-after region-name="even-page-footer" extent="11in"
                        display-align="after"></fo:region-after>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="section2-page-sequence-master">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference odd-or-even="odd"
                            master-reference="section2-odd-page" />
                        <fo:conditional-page-master-reference odd-or-even="even"
                            master-reference="section2-even-page" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="section1-page-sequence-master"
                id="IDJI4FCH3UAZ5HGCGPG1KRR3M5YEBUUI2UHQG0UPEC25G0GCCMSGUC" format="1"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:v="urn:schemas-microsoft-com:vml"
                xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
                xmlns:aml="http://schemas.microsoft.com/aml/2001/core"
                xmlns:w10="urn:schemas-microsoft-com:office:word"
                xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
                <fo:static-content flow-name="first-page-header">
                    <fo:retrieve-marker retrieve-class-name="first-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="first-page-footer">
                    <fo:retrieve-marker retrieve-class-name="first-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="odd-page-header">
                    <fo:retrieve-marker retrieve-class-name="odd-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="odd-page-footer">
                    <fo:retrieve-marker retrieve-class-name="odd-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="even-page-header">
                    <fo:retrieve-marker retrieve-class-name="odd-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="even-page-footer">
                    <fo:retrieve-marker retrieve-class-name="odd-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="xsl-footnote-separator">
                    <fo:block>
                        <fo:leader leader-pattern="rule" leader-length="144pt"
                            rule-thickness="0.5pt" rule-style="solid" color="gray" />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDDPLI21J30JRREHICHMXCBPA4RGXBF5MC1J0R3NE3LQGFT5N1A3VC"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline id="page1" />
                            <fo:inline font-family="Arial" font-weight="bold" font-size="14pt">
                                <fo:leader leader-length="0pt" /> ЗАХТЕВ ЗА ПРИЗНАЊЕ ЖИГА</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1.1278833333333333" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Заводу за интелектуалну својину,
        Кнегиње Љубице 5, 11000 Београд</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="11.7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> (попунити на рачунару)</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="1" x2="664" y2="1"
                                                                stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="30" x2="664"
                                                                y2="30" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="88" x2="664"
                                                                y2="88" stroke="black"
                                                                stroke-width=".16811mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="219" y1="88" x2="219"
                                                                y2="105" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="434" y1="88" x2="434"
                                                                y2="105" stroke="black"
                                                                stroke-width=".16811mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="105" x2="664"
                                                                y2="105" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="134" x2="664"
                                                                y2="134" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="193" x2="664"
                                                                y2="193" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="214" y1="192" x2="214"
                                                                y2="211" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="438" y1="192" x2="438"
                                                                y2="211" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="211" x2="664"
                                                                y2="211" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="226" x2="664"
                                                                y2="226" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="32" y1="331" x2="328"
                                                                y2="331" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="327" y1="331" x2="664"
                                                                y2="331" stroke="black"
                                                                stroke-width=".08542mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="32" y1="349" x2="328"
                                                                y2="349" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="367" x2="328"
                                                                y2="367" stroke="black"
                                                                stroke-width=".16811mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="32" y1="382" x2="328"
                                                                y2="382" stroke="black"
                                                                stroke-width=".16811mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="33" y1="316" x2="33"
                                                                y2="466" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="262" y1="316" x2="262"
                                                                y2="466" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="465" x2="328"
                                                                y2="465" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left=".3pt"
                                    top="415.45pt">
                                    <fo:block>
                                        <fo:block-container block-progression-dimension=".95pt">
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:svg width="327" height="1"
                                                            viewBox="0, 0, 327, 1"
                                                            preserveAspectRatio="none"
                                                            overflow="visible">
                                                            <svg:g>
                                                                <svg:rect width="327" height="1"
                                                                    x="0" y="0" stroke="none"
                                                                    fill="black" />
                                                            </svg:g>
                                                        </svg:svg>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="530.8pt"
                                    top="415.45pt">
                                    <fo:block>
                                        <fo:block-container block-progression-dimension=".95pt">
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:svg width="1" height="1"
                                                            viewBox="0, 0, 1, 1"
                                                            preserveAspectRatio="none"
                                                            overflow="visible">
                                                            <svg:g>
                                                                <svg:rect width="1" height="1" x="0"
                                                                    y="0" stroke="none" fill="black" />
                                                            </svg:g>
                                                        </svg:svg>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="552" x2="328"
                                                                y2="552" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="580" x2="328"
                                                                y2="580" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="327" y1="299" x2="327"
                                                                y2="625" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="624" x2="664"
                                                                y2="624" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="0" x2="1" y2="713"
                                                                stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="712" x2="664"
                                                                y2="712" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="664" y1="0" x2="664"
                                                                y2="713" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="1.6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                line-height="1.0418583333333333" start-indent="17pt"
                                end-indent="94pt" text-indent="-11.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>1.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="94pt" start-indent="17pt"
                                    text-indent="-11.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Подносилац пријаве:</fo:inline>
                                        <fo:inline font-family="Arial" font-size="10pt">
                                            <fo:leader leader-length="0pt" /> име и презиме/пословно
        име, улица и број, поштански број, место, држава пребивалишта/седишта:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDYDFRA3PKV5C4BOJO3Q10PBKXGORLKSUR2EOO40NXXIPJILDM1BVC"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="17pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> телефон:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="12pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="16.55pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="106pt" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="9.5pt">
                                <fo:leader leader-length="0pt" /> email:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="12pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="16pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="157pt" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> факс:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="4.15pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDM4UUFRBX0P2XFI2FU5BOMKFKEGSAUGSABQRRFKIPHQXK2SNRJCCN"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                line-height="1.0370791666666667" start-indent="14pt"
                                end-indent="98pt" text-indent="-8.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>2.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="98pt" start-indent="14pt"
                                    text-indent="-8.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Пуномоћник:</fo:inline>
                                        <fo:inline font-family="Arial" font-size="10pt">
                                            <fo:leader leader-length="0pt" /> име и презиме/пословно
        име, улица и број, поштански број, место, држава пребивалишта/седишта:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDVJUBRZHF4OBTJQS4F13AYQJJ0U04PUONWXWQ5J4JNXC1ZMO0EAD"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="17.1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> телефон:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="12pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="16.1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> email:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="12pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="16.65pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="154pt" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="9.5pt">
                                <fo:leader leader-length="0pt" /> факс:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="3.25pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDVHOZUNLOVIX5F0G0NBGJLUQ4RPVVFSEX14XV2NHQB2S4BTSDQH2M"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> 3. Подаци о заједничком
        представнику ако постоји више </fo:inline>
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> подносилаца пријаве:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="15.85pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:table font-family="Calibri" language="EN-US" start-indent="0pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:table-column column-number="1" column-width="209pt" />
                            <fo:table-column column-number="2" column-width="53pt" />
                            <fo:table-column column-number="3" column-width="88pt" />
                            <fo:table-column column-number="4" column-width="182pt" />
                            <fo:table-column column-number="5" column-width="1pt" />
                            <fo:table-column column-number="6" column-width="17pt" />
                            <fo:table-column column-number="7" column-width="1pt" />
                            <fo:table-body start-indent="0pt" end-indent="0pt">
                                <fo:table-row height="11.85pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> телефон:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="4pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> email:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="10pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" border-top-style="solid"
                                        border-top-color="black" border-top-width="1pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="1pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> факс:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10.75pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.75pt"
                                                start-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 4. Пријава се
        подноси за (уписати X):</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="1.85pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="1.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="1.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" number-rows-spanned="2"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="5pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> в) изглед
        знака:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="11.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.85pt"
                                                start-indent="32pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> индивидуални
        жиг</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="2.7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:table font-family="Calibri" language="EN-US" start-indent="0pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:table-column column-number="1" column-width="26.45pt" />
                            <fo:table-column column-number="2" column-width="182.55pt" />
                            <fo:table-column column-number="3" column-width="262pt" />
                            <fo:table-body start-indent="0pt" end-indent="0pt">
                                <fo:table-row height="10.1pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.85pt"
                                                text-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="9.5pt" language="SR-CYRL-RS">
                                                    <fo:leader leader-length="0pt" /> а</fo:inline>
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> )</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.85pt"
                                                text-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> колективни жиг </fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="14.4pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Arial" font-size="10pt"
                                                language="EN-US" line-height="10.85pt"
                                                start-indent="32pt">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.85pt"
                                                text-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> жиг гаранције</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="370.8pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt" language="SR-LATN-RS">
                                <fo:leader leader-pattern="use-content" leader-length="35.25pt"></fo:leader>
                            </fo:inline>
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> вербални знак (знак у речи)</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="0.6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:table font-family="Calibri" language="EN-US" start-indent="6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:table-column column-number="1" column-width="21pt" />
                            <fo:table-column column-number="2" column-width="236pt" />
                            <fo:table-column column-number="3" column-width="1pt" />
                            <fo:table-body start-indent="0pt" end-indent="0pt">
                                <fo:table-row height="11.5pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> графички знак;
        боју, комбинацију</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="11.5pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="10pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> боја</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="8.5pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.5pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> б)</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-rows-spanned="2" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="11pt"
                                                start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> комбиновани
        знак</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="2.5pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="2.3pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.7pt"
                                                start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" />
        тродимензионални знак</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="2.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.7pt"
                                                start-indent="6pt">
                                                <fo:inline font-family="Arial" font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> другу врсту
        знака (навести коју)</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="0.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="5pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                line-height="1.0370791666666667" start-indent="6pt"
                                end-indent="285pt" text-indent="-0.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>5.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="285pt" start-indent="6pt"
                                    text-indent="-0.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Назначење боје,
        односно боја из којих се знак састоји:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="10pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="10.75pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                start-indent="17pt" text-indent="-11.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>6.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="inherit" start-indent="17pt"
                                    text-indent="-11.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Транслитерација
        знака*:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="13.9pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                start-indent="20pt" text-indent="-14.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>7.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="inherit" start-indent="20pt"
                                    text-indent="-14.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Превод знака*:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="10.8pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                start-indent="17pt" text-indent="-11.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>8.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="inherit" start-indent="17pt"
                                    text-indent="-11.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Опис знака:</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="10pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Arial" font-size="10pt" language="EN-US"
                            line-height="14.25pt" font-weight="bold"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:list-block xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:list-item font-family="Calibri" font-size="11pt" language="EN-US"
                                start-indent="17pt" text-indent="-11.05pt">
                                <fo:list-item-label font-family="Arial" font-weight="bold"
                                    font-size="10pt" text-indent="0pt" start-indent="18pt">
                                    <fo:block>
                                        <fo:inline>9.</fo:inline>
                                    </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body end-indent="inherit" start-indent="17pt"
                                    text-indent="-11.05pt">
                                    <fo:block>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Заокружити бројеве
        класа робе и услуга према </fo:inline>
                                        <fo:inline font-family="Arial" font-weight="bold"
                                            font-size="10pt">
                                            <fo:leader leader-length="0pt" /> Ничанској
        класификацији :</fo:inline>
                                    </fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                        <fo:table font-family="Calibri" language="EN-US" start-indent="0pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:table-column column-number="1" column-width="27pt" />
                            <fo:table-column column-number="2" column-width="21pt" />
                            <fo:table-column column-number="3" column-width="24pt" />
                            <fo:table-column column-number="4" column-width="22pt" />
                            <fo:table-column column-number="5" column-width="22pt" />
                            <fo:table-column column-number="6" column-width="22pt" />
                            <fo:table-column column-number="7" column-width="23pt" />
                            <fo:table-column column-number="8" column-width="22pt" />
                            <fo:table-column column-number="9" column-width="27pt" />
                            <fo:table-column column-number="10" column-width="22pt" />
                            <fo:table-column column-number="11" column-width="28pt" />
                            <fo:table-column column-number="12" column-width="23pt" />
                            <fo:table-column column-number="13" column-width="22pt" />
                            <fo:table-column column-number="14" column-width="23pt" />
                            <fo:table-column column-number="15" column-width="22pt" />
                            <fo:table-column column-number="16" column-width="22pt" />
                            <fo:table-column column-number="17" column-width="23pt" />
                            <fo:table-column column-number="18" column-width="22pt" />
                            <fo:table-column column-number="19" column-width="22pt" />
                            <fo:table-column column-number="20" column-width="23pt" />
                            <fo:table-column column-number="21" column-width="22pt" />
                            <fo:table-column column-number="22" column-width="22pt" />
                            <fo:table-column column-number="23" column-width="27pt" />
                            <fo:table-body start-indent="0pt" end-indent="0pt">
                                <fo:table-row height="9.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.1pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 1</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                start-indent="10pt">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 2</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 3</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 4</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 5</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 6</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 7</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 8</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 9</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 10</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 11</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 12</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 13</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 14</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 15</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 16</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 17</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 18</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 19</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 20</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 21</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 22</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="9.7pt"
                                                end-indent="1pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 23</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="3.15pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="8.6pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.1pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 24</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                start-indent="10pt">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 25</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 26</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 27</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 28</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 29</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 30</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 31</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 32</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 33</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 34</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 35</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 36</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 37</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 38</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 39</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="2.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 40</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 41</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 42</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 43</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 44</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="8.6pt"
                                                end-indent="1.15pt" text-align="right">
                                                <fo:inline font-family="TimesNewRoman"
                                                    font-size="9.5pt">
                                                    <fo:leader leader-length="0pt" /> 45</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="7pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="2.4pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="solid" border-bottom-color="black"
                                        border-bottom-width="1pt" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="2pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10.6pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        number-columns-spanned="9" display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" line-height="10.6pt"
                                                text-align="right">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 10. Затражено
        право првенства и основ:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="9pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDEBVG4YGOMMDQP1U41ICKREBUAEIICIBGVATV4CBGA35NNUSQ5ODD"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="12pt" language="EN-US"
                            line-height="14.2pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="9pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> *Попунити само ако је знак или
        елемент знака исписан словима која нису ћирилична или латинична</fo:inline>
                        </fo:block>
                    </fo:block>
                    <fo:block id="ID00PWVJQVHIS3D0532YLXNIVFJP3F1MJHSFU14KZWVC3GMKECEMM" />
                </fo:flow>
            </fo:page-sequence>
            <fo:page-sequence master-reference="section2-page-sequence-master"
                id="IDJI4FCH3UAZ5HGCGPG1KRR3M5YEBUUI2UHQG0UPEC25G0GCCMSGUC" format="1"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:v="urn:schemas-microsoft-com:vml"
                xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
                xmlns:aml="http://schemas.microsoft.com/aml/2001/core"
                xmlns:w10="urn:schemas-microsoft-com:office:word"
                xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
                <fo:static-content flow-name="first-page-header">
                    <fo:retrieve-marker retrieve-class-name="first-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="first-page-footer">
                    <fo:retrieve-marker retrieve-class-name="first-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="odd-page-header">
                    <fo:retrieve-marker retrieve-class-name="odd-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="odd-page-footer">
                    <fo:retrieve-marker retrieve-class-name="odd-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="even-page-header">
                    <fo:retrieve-marker retrieve-class-name="odd-page-header"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="even-page-footer">
                    <fo:retrieve-marker retrieve-class-name="odd-page-footer"
                        retrieve-position="first-including-carryover" retrieve-boundary="page" />
                </fo:static-content>
                <fo:static-content flow-name="xsl-footnote-separator">
                    <fo:block>
                        <fo:leader leader-pattern="rule" leader-length="144pt"
                            rule-thickness="0.5pt" rule-style="solid" color="gray" />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:table font-family="Calibri" language="EN-US" start-indent="0.5pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:table-column column-number="1" column-width="212pt" />
                            <fo:table-column column-number="2" column-width="69pt" />
                            <fo:table-body start-indent="0pt" end-indent="0pt">
                                <fo:table-row height="11.6pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="0.5pt" border-left-style="solid"
                                        border-left-color="black" border-left-width="1pt"
                                        border-bottom-style="none" border-bottom-color="black"
                                        border-bottom-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline id="page2" />
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> 11. Плаћене
        таксе:</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-top-style="solid" border-top-color="black"
                                        border-top-width="0.5pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        border-bottom-style="none" border-bottom-color="black"
                                        border-bottom-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="5pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> Динара</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="16.7pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="22.1pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> а) основна
        такса</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="4.35pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="3.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="3.5pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="22.1pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> б)
        за________класа</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="23.25pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> в) за графичко
        решење</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="solid"
                                        border-bottom-color="black" border-bottom-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="22.3pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="11pt"
                                                language="EN-US" start-indent="6pt">
                                                <fo:inline font-family="Arial" font-weight="bold"
                                                    font-size="10pt">
                                                    <fo:leader leader-length="0pt" /> УКУПНО</fo:inline>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-right-style="solid" border-right-color="black"
                                        border-right-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="12pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="4.85pt">
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-left-style="solid" border-left-color="black"
                                        border-left-width="1pt" border-bottom-style="none"
                                        border-bottom-color="black" border-bottom-width="0pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="4pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                    <fo:table-cell padding-top="0pt" padding-left="0pt"
                                        padding-bottom="0pt" padding-right="0pt"
                                        border-bottom-style="none" border-bottom-color="black"
                                        border-bottom-width="0pt" border-right-style="solid"
                                        border-right-color="black" border-right-width="1pt"
                                        border-top-style="none" border-top-color="black"
                                        border-top-width="0pt" border-left-style="none"
                                        border-left-color="black" border-left-width="0pt"
                                        display-align="after">
                                        <fo:block-container>
                                            <fo:block font-family="Calibri" font-size="4pt"
                                                language="EN-US">
                                                <fo:leader />
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="58" y1="90" x2="707"
                                                                y2="90" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="649" y1="-163" x2="649"
                                                                y2="0" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="0" y1="0" x2="650" y2="0"
                                                                stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="29" x2="649"
                                                                y2="29" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="58" x2="649"
                                                                y2="58" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="1.15pt"
                                    top="69.8pt">
                                    <fo:block>
                                        <fo:block-container block-progression-dimension="1pt">
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:svg width="374" height="1"
                                                            viewBox="0, 0, 374, 1"
                                                            preserveAspectRatio="none"
                                                            overflow="visible">
                                                            <svg:g>
                                                                <svg:rect width="374" height="1"
                                                                    x="0" y="0" stroke="none"
                                                                    fill="black" />
                                                            </svg:g>
                                                        </svg:svg>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="117" x2="375"
                                                                y2="117" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="147" x2="375"
                                                                y2="147" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="176" x2="375"
                                                                y2="176" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="205" x2="375"
                                                                y2="205" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="235" x2="375"
                                                                y2="235" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="264" x2="375"
                                                                y2="264" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="293" x2="375"
                                                                y2="293" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="2" y1="29" x2="2" y2="321"
                                                                stroke="black"
                                                                stroke-width=".1695mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="10pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="1pt" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Потпис подносиоца захтева</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.25pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-style="italic" font-size="8.5pt">
                                <fo:leader leader-length="0pt" /> * Печат, уколико је потребан у
        складу са законом</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="233.1pt"
                                    top="97.5pt">
                                    <fo:block>
                                        <fo:block-container block-progression-dimension="1pt">
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:svg width="1" height="1"
                                                            viewBox="0, 0, 1, 1"
                                                            preserveAspectRatio="none"
                                                            overflow="visible">
                                                            <svg:g>
                                                                <svg:rect width="1" height="1" x="0"
                                                                    y="0" stroke="none" fill="black" />
                                                            </svg:g>
                                                        </svg:svg>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="292" y1="63" x2="292"
                                                                y2="355" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="37.7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDZDH3G1FUQKCWCJZ2YRPNGLJ2IDPARFDZMFHIIEKZQN4T1T3PQLHH"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="15.25pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            end-indent="-3.95pt" text-align="center"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="9.5pt">
                                <fo:leader leader-length="0pt" /> ПОПУЊАВА ЗАВОД</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="375" y1="0" x2="375"
                                                                y2="263" stroke="black"
                                                                stroke-width=".16811mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDQENFFV3EIMQWNT5C2SXZOQWRVFUIPGGP4Q5C2ROPCDLPR2CO5DBP"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="0.5pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Прилози уз захтев:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="312" y1="15" x2="312"
                                                                y2="248" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.15pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Примерак знака</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.9pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Списак робе и услуга**</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="12pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Пуномоћје</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="12pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Генерално </fo:inline>
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> пуномоћје раније приложено</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="12.6pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="9.5pt">
                                <fo:leader leader-length="0pt" /> Пуномоћје ће бити накнадно
        достављено</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-size="10pt">
                                <fo:leader />
                                <fo:block break-before="column" />
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="14.05pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="25pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Број пријаве жига:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.55pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="26pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Ж_________/___</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.4pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="19pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Датум подношења:</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.4pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-weight="bold" font-size="10pt">
                                <fo:leader leader-length="0pt" /> ________________________</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="24.15pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                    </fo:block>
                    <fo:block widows="2" orphans="2" font-size="10pt" line-height="1.147"
                        white-space-collapse="false">
                        <fo:marker marker-class-name="first-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="first-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="odd-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-header"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:marker marker-class-name="even-page-footer"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block id="IDXP32URWETTSJKVFHKSFNZWX3HDIMPURNRKNRR2OKCDSJXPHTKLVH"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg" />
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="2.05pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Општи акт о колективном жигу/жигу
        гаранције</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="12pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Доказ о праву првенства</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="11.9pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            start-indent="7pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> Доказ о уплати таксе</fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline>
                                <fo:block-container absolute-position="absolute" left="0pt"
                                    top="0pt">
                                    <fo:block>
                                        <fo:block-container>
                                            <fo:block>
                                                <fo:instream-foreign-object>
                                                    <svg:svg overflow="visible" stroke="black"
                                                        fill="none" width="11in" height="19in"
                                                        viewBox="0, 0, 990, 1710">
                                                        <svg:g>
                                                            <svg:line x1="1" y1="13" x2="649"
                                                                y2="13" stroke="black"
                                                                stroke-width=".16947mm" fill="white">
                                                                <svg:defs />
                                                            </svg:line>
                                                        </svg:g>
                                                    </svg:svg>
                                                </fo:instream-foreign-object>
                                            </fo:block>
                                        </fo:block-container>
                                    </fo:block>
                                </fo:block-container>
                            </fo:inline>
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="10pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="10pt" language="EN-US"
                            line-height="14.25pt"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:leader />
                        </fo:block>
                        <fo:block font-family="Calibri" font-size="11pt" language="EN-US"
                            line-height="1.1135458333333332" start-indent="5pt" text-align="justify"
                            xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
                            xmlns:svg="http://www.w3.org/2000/svg">
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> **Уз заокруживање броја класе
        робе/услуга Ничанске класификације у рубрици 9 доставља се и списак који садржи конкретне
        називе робе коју подносилац пријаве производи, односно услуга које пружа. У циљу одређења
        обима </fo:inline>
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> заштите која се стиче жигом,
        списак треба да садржи јасне и прецизне називе робе и услуга. У ту сврху могу се користити
        појмови из детаљне Листе роба и услуга или MGS Manager апликације, доступних на сајту
        Завода. Уколико се у списак уносе термини из Листе</fo:inline>
                            <fo:inline font-family="Arial" font-size="10pt">
                                <fo:leader leader-length="0pt" /> класа Ничанске класификације,
        заштита обухвата само тако именоване, конкретне робе/услуге у њиховом јасном и
        недвосмисленом значењу.</fo:inline>
                        </fo:block>
                    </fo:block>
                    <fo:block id="ID00PWVJQVHIS3D0532YLXNIVFJP3F1MJHSFU14KZWVC3GMKECEMa" />
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>