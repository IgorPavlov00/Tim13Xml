<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:template match="/">
    <fo:root>

      <fo:layout-master-set>
        <fo:simple-page-master master-name="Letter" page-width="8.5in" page-height="11in"
          margin-top="1in" margin-bottom="0.66in" margin-left="0.56in" margin-right="0.56in"
          font-family="Arial, Helvetica, sans-serif" font-size="10pt">
          <fo:region-body />
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="Letter">
        <fo:flow flow-name="xsl-region-body">
          <fo:block text-align="center" font-weight="bold" font-size="14pt">
            ЗАХТЕВ ЗА ПРИЗНАЊЕ ЖИГА
          </fo:block>
          <fo:block text-align="center" font-weight="bold">
            Заводу за интелектуалну својину, Кнегиње Љубице 5, 11000 Београд
          </fo:block>
          <fo:block white-space-collapse="false" white-space-treatment="preserve" font-size="0pt"
            line-height="12pt">.</fo:block>
          <fo:block text-align="center">
            (попунити на рачунару)
          </fo:block>
          <fo:table>
            <fo:table-column border-width="0.5px" border-style="solid" />

            <fo:table-body>
              <!-- podaci o podnosiocu -->
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">1. Подносилац пријаве:</fo:inline> име и
    презиме/пословно име, улица и број, поштански број, место, држава пребивалишта/седишта: </fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block></fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>телефон: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>e-mail: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>факс: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:table-cell>
              </fo:table-row>

              <!-- podaci o punomocniku -->
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">2. Пуномоћник:</fo:inline> име и презиме/пословно
    име, улица и број, поштански број, место, држава пребивалишта/седишта: </fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block></fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>телефон: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>e-mail: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>факс: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:table-cell>
              </fo:table-row>

              <!-- podaci o predstavniku -->
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">3. Подаци о заједничком представнику ако постоји
    више подносилаца пријаве:</fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block></fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>телефон: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>e-mail: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>факс: <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:table-cell>
              </fo:table-row>

              <!-- podaci o zigu -->
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <!-- vrste i opis -->
                        <fo:table-cell>
                          <fo:table>
                            <fo:table-column border-width="0.5px" border-style="solid" />

                            <fo:table-body>
                              <!-- popuni sa X -->
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">4. Пријава се подноси за (уписати
    X):</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:table>
                                    <fo:table-column border-width="0.5px" border-style="solid" />
                                    <fo:table-column border-width="0.5px" border-style="solid" />

                                    <fo:table-body>
                                      <fo:table-row border-width="0.5px" border-style="solid">
                                        <fo:table-cell>
                                          <fo:block>
                                            <fo:inline font-weight="bold">а)</fo:inline>
                                          </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                          <fo:table>
                                            <fo:table-column border-width="0.5px"
                                              border-style="solid" />
                                            <fo:table-column border-width="0.5px"
                                              border-style="solid" />

                                            <fo:table-body>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>индивидуални жиг</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>колективни жиг</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>жиг гаранције</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                            </fo:table-body>
                                          </fo:table>
                                        </fo:table-cell>
                                      </fo:table-row>
                                      <fo:table-row border-width="0.5px" border-style="solid">
                                        <fo:table-cell>
                                          <fo:block>
                                            <fo:inline font-weight="bold">б)</fo:inline>
                                          </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                          <fo:table>
                                            <fo:table-column border-width="0.5px"
                                              border-style="solid" />
                                            <fo:table-column border-width="0.5px"
                                              border-style="solid" />

                                            <fo:table-body>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>вербални знак (знак у речи)</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>графички знак; боју, комбинацију боја</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>комбиновани знак</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>тродимензионални знак</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
                                                </fo:table-cell>
                                              </fo:table-row>
                                              <fo:table-row border-width="0.5px"
                                                border-style="solid">
                                                <fo:table-cell>
                                                  <fo:block>
                                                    <fo:inline>другу врсту знака (навести коју)</fo:inline>
                                                  </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                  <fo:block></fo:block>
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

                              <!-- naznacenje itd. -->
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">5. Назначење боје, односно боја из
    којих се знак састоји:</fo:inline>
                                  </fo:block>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">6. Транслитерација знака*:</fo:inline>
                                  </fo:block>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">7. Превод знака*:</fo:inline>
                                  </fo:block>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">8. Опис знака:</fo:inline>
                                  </fo:block>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                        </fo:table-cell>

                        <!-- izgled -->
                        <fo:table-cell>
                          <fo:table>
                            <fo:table-column border-width="0.5px" border-style="solid" />

                            <fo:table-body>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline font-weight="bold">в) изглед знака:</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block></fo:block>
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
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">9. Заокружити бројеве класа робе и услуга према
    Ничанској класификацији:</fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <!-- red 1 - 23 -->
                      <fo:table-row border-width="0.5px" border-style="solid">
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
                      <fo:table-row border-width="0.5px" border-style="solid">
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
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block>
                    <fo:inline font-weight="bold">10. Затражено право првенства и основ:</fo:inline>
                  </fo:block>
                  <fo:block>
                    <fo:inline></fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

          </fo:table>

          <fo:block>
            <fo:inline>*Попунити само ако је знак или елемент знака исписан словима која нису
    ћирилична или латинична</fo:inline>
          </fo:block>

          <!-- takse -->
          <fo:table>
            <fo:table-column border-width="0.5px" border-style="solid" />
            <fo:table-column border-width="0.5px" border-style="solid" />

            <fo:table-body>
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline font-weight="bold">11. Плаћене таксе:</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline font-weight="bold">Динара</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline font-weight="bold">а) основна такса</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline font-weight="bold">б) за________класа</fo:inline>
                          </fo:block>
                          <fo:block>
                            <fo:inline font-weight="bold">в) за графичко решење</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline></fo:inline>
                          </fo:block>
                          <fo:block>
                            <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline font-weight="bold">УКУПНО</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                          <fo:block>
                            <fo:inline></fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:inline font-weight="bold">Потпис подносиоца захтева</fo:inline>
                  </fo:block>
                  <fo:block>
                    <fo:inline></fo:inline>
                  </fo:block>
                  <fo:block>
                    <fo:inline font-style="italic">* Печат, уколико је потребан у складу са законом</fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <!-- prilozi -->
          <fo:table>
            <fo:table-column border-width="0.5px" border-style="solid" />

            <fo:table-body>
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:inline font-weight="bold">ПОПУЊАВА ЗАВОД</fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row border-width="0.5px" border-style="solid">
                <fo:table-cell>
                  <fo:table>
                    <fo:table-column border-width="0.5px" border-style="solid" />
                    <fo:table-column border-width="0.5px" border-style="solid" />

                    <fo:table-body>
                      <fo:table-row border-width="0.5px" border-style="solid">
                        <fo:table-cell>
                          <fo:table>
                            <fo:table-column border-width="0.5px" border-style="solid" />
                            <fo:table-column border-width="0.5px" border-style="solid" />

                            <fo:table-body>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell number-columns-spanned="2">
                                  <fo:block>
                                    <fo:inline font-weight="bold">Прилози уз захтев:</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Примерак знака</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Списак робе и услуга**</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Пуномоћје</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Генерално пуномоћје раније приложено</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Пуномоћје ће бити накнадно достављено</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Општи акт о колективном жигу/жигу гаранције</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Доказ о праву првенства</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                              <fo:table-row border-width="0.5px" border-style="solid">
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline>Доказ о уплати таксе</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                  <fo:block>
                                    <fo:inline></fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </fo:table-body>
                          </fo:table>
                        </fo:table-cell>
                        <fo:table-cell text-align="center">
                          <fo:block>
                            <fo:inline>Број пријаве жига:</fo:inline>
                          </fo:block>
                          <fo:block>
                            <fo:inline>Ж_________/___</fo:inline>
                          </fo:block>
                          <fo:block>
                            <fo:inline font-weight="bold">Датум подношења:</fo:inline>
                          </fo:block>
                          <fo:block>
                            <fo:inline font-weight="bold">________________________</fo:inline>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <!-- fusnota -->
          <fo:block>
            <fo:inline>**Уз заокруживање броја класе робе/услуга Ничанске класификације у рубрици 9
    доставља се и списак који садржи конкретне називе робе коју подносилац пријаве производи,
    односно услуга које пружа. У циљу одређења обима заштите која се стиче жигом, списак треба да
    садржи јасне и прецизне називе робе и услуга. У ту сврху могу се користити појмови из детаљне
    Листе роба и услуга или MGS Manager апликације, доступних на сајту Завода. Уколико се у списак
    уносе термини из Листе класа Ничанске класификације, заштита обухвата само тако именоване,
    конкретне робе/услуге у њиховом јасном и недвосмисленом значењу.</fo:inline>
          </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>