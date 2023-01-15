<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <xsl:template match="/">
        <fo:root>

            <fo:layout-master-set>
                <fo:simple-page-master master-name="Letter" page-width="8.5in" page-height="11in" margin-top="1in" margin-bottom="0.66in" margin-left="0.56in" margin-right="0.56in" font-family="Arial, Helvetica, sans-serif" font-size="10pt">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="Letter">
                <fo:flow flow-name="xsl-region-body">
                    <fo:table>
                        <fo:table-column border-width="0.5px" border-style="solid"/>

                        <fo:table-body>
                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block font-weight="bold">
                                    ЗАВОД ЗА ИНТЕЛЕКТУАЛНУ СВОЈИНУ ОБРАЗАЦ А-1
                                    </fo:block>
                                    <fo:block>
                                    Београд, Кнегиње Љубице 5
                                    </fo:block>
                                    <fo:block text-align="center" font-weight="bold">
                                    ЗАХТЕВ ЗА УНОШЕЊЕ У ЕВИДЕНЦИЈУ И ДЕПОНОВАЊЕ АУТОРСКИХ ДЕЛА
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                    1) Подносилац - име, презиме, адреса и држављанство аутора или другог носиоца ауторског права ако је подносилац физичко лице, односно пословно име и седиште носиоца ауторског права ако је подносилац правно лице*:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:table>
                                        <fo:table-column border-width="0.5px" border-style="solid"/>
                                        <fo:table-column border-width="0.5px" border-style="solid"/>

                                        <fo:table-body>
                                            <fo:table-row border-width="0.5px" border-style="solid">
                                                <fo:table-cell>
                                                    <fo:block>телефон:
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block>
                                                        e-mail:
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        2) Псеудоним или знак аутора, (ако га има):
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            3) Име, презиме и адреса пуномоћника, ако се пријава подноси преко пуномоћника:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            4) Наслов ауторског дела, односно алтернативни наслов, ако га има, по коме ауторско дело може да се идентификује*:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            5) Подаци о наслову ауторског дела на коме се заснива дело прераде, ако је у питању ауторско дело прераде, као и податак о аутору изворног дела:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            6) Подаци о врсти ауторског дела (књижевно дело, музичко дело, ликовно дело, рачунарски програм и др.) *:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            7) Подаци о форми записа ауторског дела (штампани текст, оптички диск и слично) *:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            8) Подаци о аутору ако подносилац пријаве из тачке 1. овог захтева није аутор и то: презиме, име, адреса и држављанство аутора (групе аутора или коаутора), а ако су у питању један или више аутора који нису живи, имена аутора и године смрти аутора а ако је у питању ауторско дело анонимног аутора навод да је ауторско дело дело анонимног аутора:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            9) Податак да ли је у питању ауторско дело створено у радном односу:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        
                                            10) Начин коришћења ауторског дела или намеравани начин коришћења ауторског дела:
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="right" font-weight="bold">
                                        ________________________
                                    </fo:block>
                                    <fo:block>
                                        11)
                                    </fo:block>
                                    <fo:block font-weight="bold" text-align="right">
                                        Подносилац пријаве, носилац права
                                    </fo:block>
                                    <fo:block text-align="right">
                                        
                                            (место за потпис физичког лица, односно потпис заступника правног лица или овлашћеног представника у правном лицу)*
                                        
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        12) Прилози који се подносе уз захтев:
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="center" font-weight="bold">
                                        ПОПУЊАВА ЗАВОД:
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block font-weight="bold">
                                        Прилози уз пријаву:
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        _ опис ауторског дела (ако је дело поднето на оптичком диску);
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block>
                                        _ пример ауторског дела (слика, видео запис, аудио запис)
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block>
                                        Број пријаве
                                    </fo:block>
                                    <fo:block font-weight="bold">
                                        A-
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                    <fo:block>
                                        Датум подношења:
                                    </fo:block>
                                    <fo:block>

                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block>
                        Рубрике у захтеву А-1 које су означене са * морају да буду обавезно попуњене.
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>