<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>Zahtev Z</title>

				<style type="text/css">
            body {
                padding: 10pt;
                margin: 1in 0.56in 0.66in;
                font-family: Arial, sans-serif;
                font-size: 10pt;
            }
            .container {
                margin: 0 auto;
                width: 800px;
            }
            table {
                margin: 0;
                height: 100%;
                width: 100%;
                border-collapse: collapse;
                border: 1px solid black;
                box-sizing: border-box;
            }
            .main {
                margin: 50px 0;
            }
            table td {
                box-sizing: border-box;
                margin: 0;
                border: 1px solid black;
                height: 20px;
            }
            .x-field {
                width: 2cm;
            }
            .half {
                width: 50%;
            }
            .cm {
                width: 1cm;
            }
            .center {
                text-align: center;
            }
            .underline {
                text-decoration: underline;
            }
			.circle {
				border-radius: 50%;
    			border: 2px solid black;
   				text-align: center;
			}
				</style>
			</head>
			<body>
				<div class="center">
					<p style="font-size:14pt;margin-bottom: 0;">
						<strong>ZAHTEV ZA
                    PRIZNANJE ŽIGA</strong>
					</p>
					<p>
						<strong>Zavodu za intelektualnu svojinu, Kneginje Ljubice 5,
                    11000 Beograd</strong>
					</p>
					<p>.</p>
					<p>(popuniti na računaru)</p>
					<br />
				</div>
				<div class="container">
					<table class="main">
						<tr>
							<td>
								<strong>1. Podnosilac prijave:</strong> ime i
                        prezime/poslovno ime, ulica i broj, poštanski broj,
                        mesto, država prebivališta/sedišta:</td>
						</tr>
						<tr>
							<td>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/ime" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/prezime" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/ulica" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/postanski_broj" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/mesto" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/licni_podaci/adresa/drzava" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td>telefon: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/telefon" />
										</td>
										<td>e-mail: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/email" />
										</td>
										<td>faks: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_podnosiocu/faks" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<strong>2. Punomoćnik:</strong> ime i prezime/poslovno
                        ime, ulica i broj, poštanski broj, mesto, država
                        prebivališta/sedišta:</td>
						</tr>
						<tr>
							<td>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/ime" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/prezime" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/ulica" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/postanski_broj" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/mesto" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/licni_podaci/adresa/drzava" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td>telefon: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/telefon" />
										</td>
										<td>e-mail: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/email" />
										</td>
										<td>faks: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_punomocniku/faks" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<strong>3. Podaci o zajedničkom predstavniku ako postoji
                            više podnosilaca prijave:</strong>
							</td>
						</tr>
						<tr>
							<td>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/ime" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/prezime" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/ulica" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/postanski_broj" />
									<xsl:text>&#x20;</xsl:text>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/mesto" />
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/drzava" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td>telefon: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/telefon" />
										</td>
										<td>e-mail: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/email" />
										</td>
										<td>faks: <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/faks" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td class="half">
											<table>
												<tr>
													<td>
														<strong>4. Prijava se podnosi za
                                        (upisati X):</strong>
													</td>
												</tr>
												<tr>
													<td class="half">
														<table>
															<tr>
																<td class="cm">
																	<strong>a)</strong>
																</td>
																<td>
																	<table>
																		<tr>
																			<td>individualni žig</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/individualni_zig = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>kolektivni žig</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/kolektivni_zig = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>žig garancije</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/zig_garancije = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<table>
															<tr>
																<td class="cm">
																	<strong>b)</strong>
																</td>
																<td>
																	<table>
																		<tr>
																			<td>verbalni znak (znak u reči)</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/verbalni_znak = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>grafički znak; boju, kombinaciju
                                        boja</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/graficki_znak = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>kombinovani znak</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/kombinovani_znak = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>trodimezionalni znak</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/trodimenzionalni_znak = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																		<tr>
																			<td>drugu vrstu znaka (navesti
                                        koju) <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/druga_vrsta" />
																			</td>
																			<td class="center x-field">
																				<xsl:choose>
																					<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/drugo = true()"> X </xsl:when>
																					<xsl:otherwise></xsl:otherwise>
																				</xsl:choose>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<strong>5. Naznačenje boje, odnosno
                                        boja iz kojih se znak
                                        sastoji:</strong>
														<p>
															<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/naznacenje_boje" />
														</p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>6. Transliteracija
                                        znaka*:</strong>
														<p>
															<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/transliteracija" />
														</p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>7. Prevod
                                        znaka*:</strong>
														<p>
															<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/prevod" />
														</p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>8. Opis
                                        znaka:</strong>
														<p>
															<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/opis" />
														</p>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<table>
												<tr>
													<td>
														<strong>v) izgled
                                        znaka:</strong>
													</td>
												</tr>
												<tr>
													<td style="height:150px;">
														<img src="/zahtev_za_priznanje_ziga/podaci_o_zigu/izgled_znaka" />
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<strong>9. Zaokružiti brojeve klasa robe i usluga prema
                            Ničanskoj klasifikaciji:</strong>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<xsl:variable name="tokens" select="tokenize(/zahtev_za_priznanje_ziga/podaci_o_zigu/brojevi_klasa_robe_i_usluga, ',')"/>
									<tr>
										<td class="center">
											<xsl:variable name="searchValue" select="'1'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">1</div>
												</xsl:when>
												<xsl:otherwise>1</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'2'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">2</div>
												</xsl:when>
												<xsl:otherwise>2</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'3'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">3</div>
												</xsl:when>
												<xsl:otherwise>3</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'4'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">4</div>
												</xsl:when>
												<xsl:otherwise>4</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'5'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">5</div>
												</xsl:when>
												<xsl:otherwise>5</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'6'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">6</div>
												</xsl:when>
												<xsl:otherwise>6</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'7'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">7</div>
												</xsl:when>
												<xsl:otherwise>7</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'8'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">8</div>
												</xsl:when>
												<xsl:otherwise>8</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'9'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">9</div>
												</xsl:when>
												<xsl:otherwise>9</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'10'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">10</div>
												</xsl:when>
												<xsl:otherwise>10</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'11'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">11</div>
												</xsl:when>
												<xsl:otherwise>11</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'12'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">12</div>
												</xsl:when>
												<xsl:otherwise>12</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'13'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">13</div>
												</xsl:when>
												<xsl:otherwise>13</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'14'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">14</div>
												</xsl:when>
												<xsl:otherwise>14</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'15'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">15</div>
												</xsl:when>
												<xsl:otherwise>15</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'16'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">16</div>
												</xsl:when>
												<xsl:otherwise>16</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'17'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">17</div>
												</xsl:when>
												<xsl:otherwise>17</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'18'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">18</div>
												</xsl:when>
												<xsl:otherwise>18</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'19'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">19</div>
												</xsl:when>
												<xsl:otherwise>19</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'20'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">20</div>
												</xsl:when>
												<xsl:otherwise>20</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'21'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">21</div>
												</xsl:when>
												<xsl:otherwise>21</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'22'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">22</div>
												</xsl:when>
												<xsl:otherwise>22</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'23'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">23</div>
												</xsl:when>
												<xsl:otherwise>23</xsl:otherwise>
											</xsl:choose>
										</td>
									</tr>
									<tr>
										<td class="center">
											<xsl:variable name="searchValue" select="'24'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">24</div>
												</xsl:when>
												<xsl:otherwise>24</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'25'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">25</div>
												</xsl:when>
												<xsl:otherwise>25</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'26'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">26</div>
												</xsl:when>
												<xsl:otherwise>26</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'27'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">27</div>
												</xsl:when>
												<xsl:otherwise>27</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'28'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">28</div>
												</xsl:when>
												<xsl:otherwise>28</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'29'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">29</div>
												</xsl:when>
												<xsl:otherwise>29</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'30'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">30</div>
												</xsl:when>
												<xsl:otherwise>30</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'31'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">31</div>
												</xsl:when>
												<xsl:otherwise>31</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'32'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">32</div>
												</xsl:when>
												<xsl:otherwise>32</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'33'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">33</div>
												</xsl:when>
												<xsl:otherwise>33</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'34'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">34</div>
												</xsl:when>
												<xsl:otherwise>34</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'35'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">35</div>
												</xsl:when>
												<xsl:otherwise>35</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'36'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">36</div>
												</xsl:when>
												<xsl:otherwise>36</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'37'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">37</div>
												</xsl:when>
												<xsl:otherwise>37</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'38'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">38</div>
												</xsl:when>
												<xsl:otherwise>38</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'39'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">39</div>
												</xsl:when>
												<xsl:otherwise>39</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'40'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">40</div>
												</xsl:when>
												<xsl:otherwise>40</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'41'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">41</div>
												</xsl:when>
												<xsl:otherwise>41</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'42'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">42</div>
												</xsl:when>
												<xsl:otherwise>42</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'43'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">43</div>
												</xsl:when>
												<xsl:otherwise>43</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'44'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">44</div>
												</xsl:when>
												<xsl:otherwise>44</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center">
											<xsl:variable name="searchValue" select="'45'"/>
											<xsl:choose>
												<xsl:when test="some $token in $tokens satisfies $token = $searchValue">
													<div class="circle">45</div>
												</xsl:when>
												<xsl:otherwise>45</xsl:otherwise>
											</xsl:choose>
										</td>
										<td class="center"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<strong>10. Zatraženo pravo prvenstva i
                        osnov:</strong>
								<p>
									<xsl:choose>
										<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/pravo_prvenstva/zatrazeno = true()"> Jeste, osnov je
										</xsl:when>
										<xsl:otherwise>Nije zatrazeno</xsl:otherwise>
									</xsl:choose>
								</p>
								<p>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/pravo_prvenstva/osnov"/>
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td style="width:60%">
											<table>
												<tr>
													<td>
														<strong>11. Plaćene
                                        takse:</strong>
													</td>
													<td style="width:3cm">
														<strong>Dinara</strong>
													</td>
												</tr>
												<tr>
													<td>
														<p>
															<strong>a) osnovna
                                        taksa</strong>
														</p>

													</td>
													<td>

														<p>
															<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/osnovna_taksa" />
														</p>
													</td>
												</tr>
												<tr>
													<td>
														<p>
															<strong>b) za <span class="underline">
																<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/brojevi_klasa_robe_i_usluga" />
															</span>
                                        klasa</strong>
													</p>
													<p>
														<strong>v) za grafičko
                                        rešenje</strong>
													</p>
												</td>
												<td>
													<p>
														<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/za_klase" />
													</p>
													<p>
														<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/za_graficko_resenje" />
													</p>
												</td>
											</tr>
											<tr>
												<td>
													<strong>UKUPNO</strong>
												</td>
												<td>
													<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_placenoj_taksi/ukupno" />
												</td>
											</tr>
										</table>
									</td>
									<td>
										<p>
											<strong>Potpis podnosioca
                                        zahteva</strong>
										</p>
										<br />
										<br />
										<br />
										<br />
										<p>
											<em>*Pecat, ukoliko je potreban u skladu
                                        sa zakonom.</em>
										</p>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table class="main">
					<tr>
						<td colspan="3" class="center">
							<strong>POPUNJAVA ZAVOD</strong>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<strong>Prilozi uz zahtev:</strong>
						</td>
						<td rowspan="9" class="center">
							<br />
							<br />
							<p>Broj prijave žiga:</p>
							<p class="underline">
								<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zahtevu/broj_prijave" />
							</p>
							<p>
								<strong>Datum podnošenja:</strong>
							</p>
							<p class="underline">
								<strong>
									<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zahtevu/datum_podnosenja" />
								</strong>
							</p>
							<br />
							<br />
							<br />
						</td>
					</tr>
					<tr>
						<td>Primerak znaka</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/primerak_znaka = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Spisak robe i usluga**</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/spisak_robe_i_usluga = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Punomoćje</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/punomocje = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Generalno punomoćje ranije priloženo</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/ranije_prilozeno_punomocje = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Punomoćje će biti naknadno dostavljeno</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/naknadno_dostavljeno_punomocje = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Opšti akt o kolektivnom žigu/žigu garancije</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/opsti_akt_o_zigu = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Dokaz o pravu prvenstva</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/dokaz_o_pravu_prvenstva = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td>Dokaz o uplati takse</td>
						<td class="center x-field">
							<xsl:choose>
								<xsl:when test="/zahtev_za_priznanje_ziga/prilozi/dokaz_o_uplati_takse = true()"> X </xsl:when>
								<xsl:otherwise></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
				</table>
				<p>*Popuniti samo ako je znak ili element znaka ispisan slovima koja
                nisu ćirilična ili latinčna.</p>
				<p style="text-align: justify;">**Uz zaokruživanje broja klase robe/usluga Ničanske klasifikacije
                u rubrici 9 dostavlja se i spisak koji sadrži konkretne nazive
                robe koju podnosilac prijave proizvodi, odnosno usluga koje
                pruža. U cilju određivanja obima zaštite koja se stiče žigom,
                spisak treba da sadrži jasne i precizne nazive robe i usluga. U
                tu svrhu mogu se koristiti pojmovi iz detaljne Liste roba i
                usluga ili MGS Manager aplikacije, dostupnih na sajtu Zavoda.
                Ukoliko se u spisak unose termini iz Liste klasa Ničanske
                klasifikacije, zaštita obuhvata samo tako imenovane, konkretne
                robe/usluge u njihovom jasnom i nedvosmislenom značenju. </p>
			</div>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
