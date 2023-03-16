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
            }</style>
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
								<p><xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/ime" />
<xsl:text>&#x20;</xsl:text>
<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/prezime" />
</p>
								<p><xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/ulica" />
</p>
								<p><xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/postanski_broj" />
<xsl:text>&#x20;</xsl:text>
<xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/mesto" />
</p>
								<p><xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_predstavniku/licni_podaci/adresa/drzava" />
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
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/individualni_zig = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>kolektivni žig</td>
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/kolektivni_zig = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>žig garancije</td>
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_ziga/zig_garancije = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
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
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/verbalni_znak = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>grafički znak; boju, kombinaciju
                                        boja</td>
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/graficki_znak = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>kombinovani znak</td>
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/kombinovani_znak = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>trodimezionalni znak</td>
																			<td class="center x-field"><xsl:choose>
	<xsl:when test="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/trodimenzionalni_znak = true()"> X </xsl:when>
	<xsl:otherwise></xsl:otherwise>
</xsl:choose></td>
																		</tr>
																		<tr>
																			<td>drugu vrstu znaka (navesti
                                        koju) <xsl:value-of select="/zahtev_za_priznanje_ziga/podaci_o_zigu/vrsta_znaka/druga_vrsta" />
</td>
																			<td class="center x-field">X</td>
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
														<p></p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>6. Transliteracija
                                        znaka*:</strong>
														<p></p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>7. Prevod
                                        znaka*:</strong>
														<p></p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>8. Opis
                                        znaka:</strong>
														<p></p>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<table>
												<tr style="height:1cm;">
													<td>
														<strong>v) izgled
                                        znaka:</strong>
													</td>
												</tr>
												<tr>
													<td></td>
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
									<tr>
										<td>1</td>
										<td>2</td>
										<td>3</td>
										<td>4</td>
										<td>5</td>
										<td>6</td>
										<td>7</td>
										<td>8</td>
										<td>9</td>
										<td>10</td>
										<td>11</td>
										<td>12</td>
										<td>13</td>
										<td>14</td>
										<td>15</td>
										<td>16</td>
										<td>17</td>
										<td>18</td>
										<td>19</td>
										<td>20</td>
										<td>21</td>
										<td>22</td>
										<td>23</td>
									</tr>
									<tr>
										<td>24</td>
										<td>25</td>
										<td>26</td>
										<td>27</td>
										<td>28</td>
										<td>29</td>
										<td>30</td>
										<td>31</td>
										<td>32</td>
										<td>33</td>
										<td>34</td>
										<td>35</td>
										<td>36</td>
										<td>37</td>
										<td>38</td>
										<td>39</td>
										<td>40</td>
										<td>41</td>
										<td>42</td>
										<td>43</td>
										<td>44</td>
										<td>45</td>
										<td></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<strong>10. Zatraženo pravo prvenstva i
                        osnov:</strong>
								<p></p>
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
														<p>
															<strong>b) za <span class="underline"></span>
                                        klasa</strong>
														</p>
													</td>
													<td class="center">
														<p></p>
														<p></p>
													</td>
												</tr>
												<tr>
													<td>
														<strong>v) za grafičko
                                        rešenje</strong>
													</td>
													<td class="center"></td>
												</tr>
												<tr>
													<td>
														<strong>UKUPNO</strong>
													</td>
													<td class="center"></td>
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
								<p class="underline">broj</p>
								<p>
									<strong>Datum podnošenja:</strong>
								</p>
								<p class="underline">
									<strong>datum</strong>
								</p>
								<br />
								<br />
								<br />
							</td>
						</tr>
						<tr>
							<td>Primerak znaka</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Spisak robe i usluga**</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Punomoćje</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Generalno punomoćje ranije priloženo</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Punomoćje će biti naknadno dostavljeno</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Opšti akt o kolektivnom žigu/žigu garancije</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Dokaz o pravu prvenstva</td>
							<td class="center x-field"></td>
						</tr>
						<tr>
							<td>Dokaz o uplati takse</td>
							<td class="center x-field"></td>
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
