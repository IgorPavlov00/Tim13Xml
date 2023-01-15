<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:template match="/">
    <fo:root>

      <fo:layout-master-set>
        <fo:simple-page-master master-name="Letter" page-width="8.5in" page-height="11in" margin-top="1in" margin-bottom="0.66in" margin-left="0.56in" margin-right="0.56in" font-family="Arial" font-size="10pt">
          <fo:region-body />
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="Letter">
        <fo:block text-align="center" font-weight="bold" font-size="14pt">
          ЗАХТЕВ ЗА ПРИЗНАЊЕ ЖИГА
        </fo:block>
        <fo:block text-align="center" font-weight="bold">
          Заводу за интелектуалну својину, Кнегиње Љубице 5, 11000 Београд
        </fo:block>
        <fo:block white-space-collapse="false" white-space-treatment="preserve" font-size="0pt" line-height="12pt">.</fo:block>
        <fo:block text-align="center">
          (попунити на рачунару)
        </fo:block>
        <fo:table>
          <fo:table-column />

          <fo:table-body>
            <!-- podaci o podnosiocu -->
            <fo:table-row>
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">1. Подносилац пријаве:</fo:inline> име и презиме/пословно име, улица и број, поштански број, место, држава пребивалишта/седишта: 
                </fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:block xsl:value-of="//podaci_o_podnosiocu/licni_podaci"></fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>телефон: <fo:inline xsl:value-of="//podaci_o_podnosiocu/telefon"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>e-mail: <fo:inline xsl:value-of="//podaci_o_podnosiocu/email"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>факс: <fo:inline xsl:value-of="//podaci_o_podnosiocu/faks"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>

            <!-- podaci o punomocniku -->
            <fo:table-row>
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">2. Пуномоћник:</fo:inline> име и презиме/пословно име, улица и број, поштански број, место, држава пребивалишта/седишта: 
                </fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:block xsl:value-of="//podaci_o_punomocniku/licni_podaci"></fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>телефон: <fo:inline xsl:value-of="//podaci_o_punomocniku/telefon"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>e-mail: <fo:inline xsl:value-of="//podaci_o_punomocniku/email"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>факс: <fo:inline xsl:value-of="//podaci_o_punomocniku/faks"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>

            <!-- podaci o predstavniku -->
            <fo:table-row>
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">3. Подаци о заједничком представнику ако постоји више подносилаца пријаве:</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:block xsl:value-of="//podaci_o_predstavniku/licni_podaci"></fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block>телефон: <fo:inline xsl:value-of="//podaci_o_predstavniku/telefon"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>e-mail: <fo:inline xsl:value-of="//podaci_o_predstavniku/email"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block>факс: <fo:inline xsl:value-of="//podaci_o_predstavniku/faks"></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>

            <!-- podaci o zigu -->
            <fo:table-row>
              <fo:table-cell>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-body>
                    <fo:table-row>
                      <!-- vrste i opis -->
                      <fo:table-cell>
                        <fo:table>
                          <fo:table-column />

                          <fo:table-body>
                            <!-- popuni sa X -->
                              <fo:table-row>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">4. Пријава се подноси за (уписати X):</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell>
                                  
                                </fo:table-cell>
                              </fo:table-row>

                              <!-- naznacenje itd. -->
                              <fo:table-row>
                                <fo:table-cell></fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell></fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell></fo:table-cell>
                              </fo:table-row>
                              <fo:table-row>
                                <fo:table-cell></fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>

                      <!-- izgled -->
                      <fo:table-cell>
                        <fo:table>
                          <fo:table-column />

                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">в) изглед знака:</fo:inline>
                                  </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell>
                                <fo:block xsl:value-of="//izgled_znaka"></fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </fo:table-body>
                        </fo:table>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>

            <!-- klasifikacija -->
            <fo:table-row>
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">9. Заокружити бројеве класа робе и услуга према Ничанској класификацији:</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>

            <fo:table-row>
              <fo:table-cell>
                <fo:table>
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />
                  <fo:table-column />

                  <fo:table-body>
                    <!-- red 1 - 23 -->
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>1</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>2</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>3</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>4</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>5</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>6</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>7</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>8</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>9</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>10</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>11</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>12</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>13</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>14</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>15</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>16</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>17</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>18</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>19</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>20</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>21</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>22</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>23</fo:block>
                      </fo:table-cell>
                    </fo:table-row>


                    <!-- red 24 - 45 -->
                    <fo:table-row>
                      <fo:table-cell>
                        <fo:block>24</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>25</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>26</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>27</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>28</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>29</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>30</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>31</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>32</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>33</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>34</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>35</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>36</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>37</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>38</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>39</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>40</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>41</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>42</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>43</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>44</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block>45</fo:block>
                      </fo:table-cell>
                      <fo:table-cell>
                        <fo:block></fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                  </fo:table-body>
                </fo:table>
              </fo:table-cell>
            </fo:table-row>

            <!-- pravo prvenstva -->
            <fo:table-row>
              <fo:table-cell>
                <fo:block>
                  <fo:inline font-weight="bold">10. Затражено право првенства и основ:</fo:inline>
                </fo:block>
                <fo:block>
                  <fo:inline xsl:value-of="//pravo_prvenstva/uslov[../zatrazeno='true']"></fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>

        </fo:table>
      </fo:page-sequence>
      <fo:page-sequence master-reference="Letter">

      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>