    .org 1800
    .entry start
start:
.1800:       C 2035     ;Store A to [2035] and clear A
.1801:       C 2330     ;Store A to [2330] and clear A
.1802:       U 2249     ;Jump to 2249
.1803:       A 2618     ;Add [2618] to A
.1804:       Y 1830     ;Store A to address field of [1830]
.1805:       A 1963     ;Add [1963] to A
.1806:       Y 1821     ;Store A to address field of [1821]
.1807:       Y 1822     ;Store A to address field of [1822]
.1808:       Y 1827     ;Store A to address field of [1827]
.1809:       M 2561     ;Multiply A by [2561], high bits
.1810:       U 1811     ;Jump to 1811
.1811:       E 2626     ;Bitwise AND [2626] with A
.1812:       S 2627     ;Subtract [2627] from A
.1813:       T 2549     ;Jump to 2549 if A is negative
.1814:       A 2600     ;Add [2600] to A
.1815:       H 1837     ;Store A to [1837]
.1816:       A 2602     ;Add [2602] to A
.1817:       U 2611     ;Jump to 2611
.1818:       Y 1828     ;Store A to address field of [1828]
.1819:       Y 1820     ;Store A to address field of [1820]
.1820:       B 1849     ;Load A from [1849]
.1821:       E 1857     ;Bitwise AND [1857] with A
.1822:       S 1857     ;Subtract [1857] from A
.1823:       T 1826     ;Jump to 1826 if A is negative
.1824:       U 1926     ;Jump to 1926
.1825:       B 1852     ;Load A from [1852]
.1826:       B 1849     ;Load A from [1849]
.1827:       A 1857     ;Add [1857] to A
.1828:       H 1849     ;Store A to [1849]
.1829:       C 1834     ;Store A to [1834] and clear A
.1830:       B 1853     ;Load A from [1853]
.1831:       C 1835     ;Store A to [1835] and clear A
.1832:       R 2400     ;Store return address to [2400]
.1833:       U 2400     ;Jump to 2400
.1834:      .dw $11e40806
.1835:      .dw $0e06627e
.1836:       U 1900     ;Jump to 1900
.1837:       Z 0011     ;Halt
.1838:       Z 1852     ;Skip if switches 0x12 are not all set
.1839:      .dw $10720806
.1840:      .dw $14068000
.1841:      .dw $1d060000
.1842:      .dw $24868000
.1843:      .dw $2c060000
.1844:      .dw $35060000
.1845:      .dw $3d060000
.1846:      .dw $45068000
.1847:      .dw $4c068000
.1848:      .dw $288c0406
.1849:      .dw $11e40806
.1850:      .dw $10f40806
.1851:      .dw $10ec8806
.1852:      .dw $0e067a7e
.1853:      .dw $0e06627e
.1854:      .dw $0e062a7e
.1855:      .dw $0e066a7e
.1856:      .dw $01000000
.1857:      .dw $00800000
.1858:       B 0000     ;Load A from [0000]
.1859:       Z 0000     ;Halt
.1860:      -Z 0001     ;Skip if no overflow and halt
.1861:      .dw $7e7e7e7e
.1862:      .dw $7ffffffc
.1863:      .dw $00400000
.1900:       B 1837     ;Load A from [1837]
.1901:       S 2616     ;Subtract [2616] from A
.1902:       T 1909     ;Jump to 1909 if A is negative
.1903:       S 2339     ;Subtract [2339] from A
.1904:       T 1907     ;Jump to 1907 if A is negative
.1905:       B 2620     ;Load A from [2620]
.1906:       U 1910     ;Jump to 1910
.1907:       B 1837     ;Load A from [1837]
.1908:       U 1910     ;Jump to 1910
.1909:       B 1860     ;Load A from [1860]
.1910:       U 1945     ;Jump to 1945
.1911:       B 1930     ;Load A from [1930]
.1912:       Y 1914     ;Store A to address field of [1914]
.1913:       Y 1916     ;Store A to address field of [1916]
.1914:       B 1800     ;Load A from [1800]
.1915:       E 2623     ;Bitwise AND [2623] with A
.1916:       C 1800     ;Store A to [1800] and clear A
.1917:       B 1914     ;Load A from [1914]
.1918:       A 2604     ;Add [2604] to A
.1919:       U 2628     ;Jump to 2628
.1920:       Z 1800     ;Skip if switches 0x12 are not all set
.1921:       S 1825     ;Subtract [1825] from A
.1922:       T 1914     ;Jump to 1914 if A is negative
.1923:       C 2035     ;Store A to [2035] and clear A
.1924:       C 2035     ;Store A to [2035] and clear A
.1925:       U 1934     ;Jump to 1934
.1926:       R 2360     ;Store return address to [2360]
.1927:       U 2351     ;Jump to 2351
.1928:       E 2607     ;Bitwise AND [2607] with A
.1929:       U 1803     ;Jump to 1803
.1930:       Z 1839     ;Skip if switches 0x12 are not all set
.1931:       B 2253     ;Load A from [2253]
.1932:       S 2035     ;Subtract [2035] from A
.1933:      -T 1911     ;Jump to 1911 if A is negative or TC is set
.1934:       U 2456     ;Jump to 2456
.1935:       Z 0001     ;Halt
.1936:      .dw $31800000
.1937:       R 1910     ;Store return address to [1910]
.1938:       U 1926     ;Jump to 1926
.1939:       C 2445     ;Store A to [2445] and clear A
.1940:       U 2451     ;Jump to 2451
.1941:       Z 0022     ;Halt
.1942:      .dw $60000000
.1943:       R 1910     ;Store return address to [1910]
.1944:       U 1926     ;Jump to 1926
.1945:       C 2329     ;Store A to [2329] and clear A
.1946:       R 2400     ;Store return address to [2400]
.1947:       U 2400     ;Jump to 2400
.1948:      .dw $20187e7e
.1949:       U 2538     ;Jump to 2538
.1950:       B 2331     ;Load A from [2331]
.1951:       A 1935     ;Add [1935] to A
.1952:       C 2331     ;Store A to [2331] and clear A
.1953:       U 1954     ;Jump to 1954
.1954:       R 1910     ;Store return address to [1910]
.1955:       U 1926     ;Jump to 1926
.1956:       T 2011     ;Jump to 2011 if A is negative
.1957:       A 2445     ;Add [2445] to A
.1958:       H 2445     ;Store A to [2445]
.1959:       E 1862     ;Bitwise AND [1862] with A
.1960:       S 1941     ;Subtract [1941] from A
.1961:       T 2024     ;Jump to 2024 if A is negative
.1962:       U 2446     ;Jump to 2446
.1963:       Z 0004     ;Halt
.2000:      .dw $41800000
.2001:       B 2023     ;Load A from [2023]
.2002:       A 1935     ;Add [1935] to A
.2003:       C 2023     ;Store A to [2023] and clear A
.2004:       R 1910     ;Store return address to [1910]
.2005:       U 1926     ;Jump to 1926
.2006:       T 2015     ;Jump to 2015 if A is negative
.2007:       A 2329     ;Add [2329] to A
.2008:       H 2329     ;Store A to [2329]
.2009:       T 2126     ;Jump to 2126 if A is negative
.2010:       U 2062     ;Jump to 2062
.2011:       B 2445     ;Load A from [2445]
.2012:       E 1862     ;Bitwise AND [1862] with A
.2013:       A 1860     ;Add [1860] to A
.2014:       U 1958     ;Jump to 1958
.2015:       B 2329     ;Load A from [2329]
.2016:       E 1862     ;Bitwise AND [1862] with A
.2017:       A 1860     ;Add [1860] to A
.2018:       U 2008     ;Jump to 2008
.2019:       B 2329     ;Load A from [2329]
.2020:       E 1862     ;Bitwise AND [1862] with A
.2021:       A 1860     ;Add [1860] to A
.2022:       U 2058     ;Jump to 2058
.2024:       R 2400     ;Store return address to [2400]
.2025:       U 2400     ;Jump to 2400
.2026:      .dw $20106a08
.2027:      .dw $721a2a10
.2028:      .dw $2608067e
.2029:       U 2030     ;Jump to 2030
.2030:      -I 0200     ;4-bit input from typewriter
.2031:       E 1963     ;Bitwise AND [1963] with A
.2032:       S 1963     ;Subtract [1963] from A
.2033:       T 2036     ;Jump to 2036 if A is negative
.2034:       U 1949     ;Jump to 1949
.2035:       Z 0009     ;Halt
.2036:       U 2441     ;Jump to 2441
.2037:       Z 0012     ;Halt
.2038:       B 2445     ;Load A from [2445]
.2039:       T 2041     ;Jump to 2041 if A is negative
.2040:       U 2048     ;Jump to 2048
.2041:       E 1862     ;Bitwise AND [1862] with A
.2042:       H 2445     ;Store A to [2445]
.2043:       S 2037     ;Subtract [2037] from A
.2044:       T 2046     ;Jump to 2046 if A is negative
.2045:       U 2048     ;Jump to 2048
.2046:       A 1941     ;Add [1941] to A
.2047:       C 2445     ;Store A to [2445] and clear A
.2048:       U 2436     ;Jump to 2436
.2049:       Z 0010     ;Halt
.2050:      .dw $30700000
.2051:       B 2023     ;Load A from [2023]
.2052:       A 1935     ;Add [1935] to A
.2053:       C 2023     ;Store A to [2023] and clear A
.2054:       R 1910     ;Store return address to [1910]
.2055:       U 1926     ;Jump to 1926
.2056:       T 2019     ;Jump to 2019 if A is negative
.2057:       A 2329     ;Add [2329] to A
.2058:       H 2329     ;Store A to [2329]
.2059:       E 1862     ;Bitwise AND [1862] with A
.2060:       S 1941     ;Subtract [1941] from A
.2061:       T 2101     ;Jump to 2101 if A is negative
.2062:       U 2425     ;Jump to 2425
.2063:       B 2445     ;Load A from [2445]
.2100:       U 2129     ;Jump to 2129
.2101:       A 1963     ;Add [1963] to A
.2102:       T 2104     ;Jump to 2104 if A is negative
.2103:       U 2062     ;Jump to 2062
.2104:       A 1935     ;Add [1935] to A
.2105:       T 2115     ;Jump to 2115 if A is negative
.2106:       R 2360     ;Store return address to [2360]
.2107:       U 2354     ;Jump to 2354
.2108:       E 2037     ;Bitwise AND [2037] with A
.2109:       S 2037     ;Subtract [2037] from A
.2110:       T 2062     ;Jump to 2062 if A is negative
.2111:       U 2461     ;Jump to 2461
.2112:       Z 0005     ;Halt
.2113:      .dw $28000000
.2114:      .dw $38000000
.2115:       A 2112     ;Add [2112] to A
.2116:       T 2119     ;Jump to 2119 if A is negative
.2117:       U 2111     ;Jump to 2111
.2118:      .dw $43612758
.2119:       A 1963     ;Add [1963] to A
.2120:       T 2111     ;Jump to 2111 if A is negative
.2121:       B 2329     ;Load A from [2329]
.2122:       T 2124     ;Jump to 2124 if A is negative
.2123:       U 2111     ;Jump to 2111
.2124:       A 2049     ;Add [2049] to A
.2125:       U 2058     ;Jump to 2058
.2126:       A 2049     ;Add [2049] to A
.2127:       C 2329     ;Store A to [2329] and clear A
.2128:       U 2062     ;Jump to 2062
.2129:       E 1862     ;Bitwise AND [1862] with A
.2130:       H 2445     ;Store A to [2445]
.2131:       S 1941     ;Subtract [1941] from A
.2132:       T 2140     ;Jump to 2140 if A is negative
.2133:       R 2400     ;Store return address to [2400]
.2134:       U 2400     ;Jump to 2400
.2135:      .dw $20300a52
.2136:      .dw $7a5a7e7e
.2137:       C 2445     ;Store A to [2445] and clear A
.2138:       C 2445     ;Store A to [2445] and clear A
.2139:       U 2212     ;Jump to 2212
.2140:       A 1935     ;Add [1935] to A
.2141:       T 2153     ;Jump to 2153 if A is negative
.2142:       B 1935     ;Load A from [1935]
.2143:       S 2331     ;Subtract [2331] from A
.2144:       T 2153     ;Jump to 2153 if A is negative
.2145:       R 2400     ;Store return address to [2400]
.2146:       U 2400     ;Jump to 2400
.2147:      .dw $20300a0c
.2148:      .dw $726a6c64
.2149:      .dw $726a6c7e
.2150:       B 1930     ;Load A from [1930]
.2151:       C 2035     ;Store A to [2035] and clear A
.2152:       U 2161     ;Jump to 2161
.2153:       B 2331     ;Load A from [2331]
.2154:       S 1963     ;Subtract [1963] from A
.2155:       T 2204     ;Jump to 2204 if A is negative
.2156:       R 2400     ;Store return address to [2400]
.2157:       U 2400     ;Jump to 2400
.2158:      .dw $20302c06
.2159:      .dw $6a721a2a
.2160:      .dw $7a7e7e7e
.2161:       B 1941     ;Load A from [1941]
.2162:       C 2445     ;Store A to [2445] and clear A
.2163:       B 2330     ;Load A from [2330]
.2200:       A 1935     ;Add [1935] to A
.2201:       C 2330     ;Store A to [2330] and clear A
.2202:       U 2212     ;Jump to 2212
.2203:       Z 0100     ;Halt
.2204:       R 2400     ;Store return address to [2400]
.2205:       U 2400     ;Jump to 2400
.2206:      .dw $20305a46
.2207:      .dw $5a720c06
.2208:      .dw $0e067e7e
.2209:       B 2445     ;Load A from [2445]
.2210:       R 2346     ;Store return address to [2346]
.2211:       U 2332     ;Jump to 2332
.2212:       B 2329     ;Load A from [2329]
.2213:       E 1862     ;Bitwise AND [1862] with A
.2214:       H 2329     ;Store A to [2329]
.2215:       S 1941     ;Subtract [1941] from A
.2216:       T 2301     ;Jump to 2301 if A is negative
.2217:       R 2400     ;Store return address to [2400]
.2218:       U 2400     ;Jump to 2400
.2219:      .dw $30180a52
.2220:      .dw $7a5a1806
.2221:      .dw $0606067e
.2222:       C 2329     ;Store A to [2329] and clear A
.2223:       C 2329     ;Store A to [2329] and clear A
.2224:       B 2329     ;Load A from [2329]
.2225:       S 2445     ;Subtract [2445] from A
.2226:       T 2326     ;Jump to 2326 if A is negative
.2227:       B 2330     ;Load A from [2330]
.2228:       S 1935     ;Subtract [1935] from A
.2229:       C 2330     ;Store A to [2330] and clear A
.2230:       R 2400     ;Store return address to [2400]
.2231:       U 2400     ;Jump to 2400
.2232:      .dw $307a6a46
.2233:      .dw $1a4a0610
.2234:      .dw $1608067e
.2235:       B 2330     ;Load A from [2330]
.2236:       T 2255     ;Jump to 2255 if A is negative
.2237:       H 1837     ;Store A to [1837]
.2238:       R 2400     ;Store return address to [2400]
.2239:       U 2400     ;Jump to 2400
.2240:      .dw $1034087e
.2241:       B 1837     ;Load A from [1837]
.2242:       R 2346     ;Store return address to [2346]
.2243:       U 2332     ;Jump to 2332
.2244:       R 2400     ;Store return address to [2400]
.2245:       U 2400     ;Jump to 2400
.2246:      .dw $2e04047e
.2247:       B 2330     ;Load A from [2330]
.2248:       T 2262     ;Jump to 2262 if A is negative
.2249:       C 2331     ;Store A to [2331] and clear A
.2250:       C 2331     ;Store A to [2331] and clear A
.2251:       C 2023     ;Store A to [2023] and clear A
.2252:       U 2503     ;Jump to 2503
.2253:       Z 0026     ;Halt
.2254:       U 2361     ;Jump to 2361
.2255:       U 2509     ;Jump to 2509
.2256:       Z 0003     ;Halt
.2257:       Z 1800     ;Skip if switches 0x12 are not all set
.2258:       Z 1800     ;Skip if switches 0x12 are not all set
.2259:       Z 1800     ;Skip if switches 0x12 are not all set
.2260:       Z 0015     ;Halt
.2261:       Z 1800     ;Skip if switches 0x12 are not all set
.2262:       U 2517     ;Jump to 2517
.2263:       Z 0002     ;Halt
.2300:       U 2249     ;Jump to 2249
.2301:       A 1935     ;Add [1935] to A
.2302:       T 2316     ;Jump to 2316 if A is negative
.2303:       B 1935     ;Load A from [1935]
.2304:       S 2023     ;Subtract [2023] from A
.2305:       T 2316     ;Jump to 2316 if A is negative
.2306:       R 2400     ;Store return address to [2400]
.2307:       U 2400     ;Jump to 2400
.2308:      .dw $30180a0c
.2309:      .dw $726a6c64
.2310:      .dw $726a6c7e
.2311:       U 2520     ;Jump to 2520
.2312:       B 2445     ;Load A from [2445]
.2313:       S 1941     ;Subtract [1941] from A
.2314:       T 2546     ;Jump to 2546 if A is negative
.2315:       U 2543     ;Jump to 2543
.2316:       R 2400     ;Store return address to [2400]
.2317:       U 2400     ;Jump to 2400
.2318:      .dw $30185a46
.2319:      .dw $5a720c06
.2320:      .dw $0e067e7e
.2321:       B 2329     ;Load A from [2329]
.2322:       R 2346     ;Store return address to [2346]
.2323:       U 2332     ;Jump to 2332
.2324:       U 2553     ;Jump to 2553
.2325:       U 2224     ;Jump to 2224
.2326:       B 2330     ;Load A from [2330]
.2327:       A 1935     ;Add [1935] to A
.2328:       U 2229     ;Jump to 2229
.2329:       Z 0017     ;Halt
.2330:       Z 0001     ;Halt
.2332:       S 2049     ;Subtract [2049] from A
.2333:       T 2340     ;Jump to 2340 if A is negative
.2334:       S 2049     ;Subtract [2049] from A
.2335:       T 2347     ;Jump to 2347 if A is negative
.2336:       S 2049     ;Subtract [2049] from A
.2337:       T 2527     ;Jump to 2527 if A is negative
.2338:       U 2532     ;Jump to 2532
.2339:       Z 0009     ;Halt
.2340:       A 2049     ;Add [2049] to A
.2341:       U 2535     ;Jump to 2535
.2342:      .dw $18000000
.2343:      .dw $04000000
.2344:       P 0000     ;Print 6-bit character to tape reader
.2345:       Z 0200     ;NOP
.2346:       U 2244     ;Jump to 2244
.2347:       H 2526     ;Store A to [2526]
.2348:       B 2342     ;Load A from [2342]
.2349:       U 2529     ;Jump to 2529
.2350:       Z 1800     ;Skip if switches 0x12 are not all set
.2351:       B 2035     ;Load A from [2035]
.2352:       A 1935     ;Add [1935] to A
.2353:       C 2035     ;Store A to [2035] and clear A
.2354:       U 2558     ;Jump to 2558
.2355:       H 2541     ;Store A to [2541]
.2356:       M 1925     ;Multiply A by [1925], high bits
.2357:       A 2541     ;Add [2541] to A
.2358:       H 2523     ;Store A to [2523]
.2359:       H 2524     ;Store A to [2524]
.2360:       U 1928     ;Jump to 1928
.2361:       Z 1800     ;Skip if switches 0x12 are not all set
.2362:       Z 1800     ;Skip if switches 0x12 are not all set
.2363:       Z 1800     ;Skip if switches 0x12 are not all set
.2400:       B 1835     ;Load A from [1835]
.2401:       E 2430     ;Bitwise AND [2430] with A
.2402:       N 2431     ;Multiply A by [2431], low bits
.2403:       T 2432     ;Jump to 2432 if A is negative
.2404:       S 2419     ;Subtract [2419] from A
.2405:       T 2413     ;Jump to 2413 if A is negative
.2406:       A 2428     ;Add [2428] to A
.2407:       P 0257     ;Print 6-bit character to device 0257
.2408:      -I 6258     ;4-bit input from device 6258
.2409:      -I 6259     ;4-bit input from device 6259
.2410:       U 2403     ;Jump to 2403
.2411:       Z 1800     ;Skip if switches 0x12 are not all set
.2412:       Z 1800     ;Skip if switches 0x12 are not all set
.2413:       B 2428     ;Load A from [2428]
.2414:       A 2400     ;Add [2400] to A
.2415:       H 2400     ;Store A to [2400]
.2416:       U 2400     ;Jump to 2400
.2417:       Z 1800     ;Skip if switches 0x12 are not all set
.2418:      .dw $04000000
.2419:       Z 0001     ;Halt
.2420:      .dw $04000000
.2421:       B 2400     ;Load A from [2400]
.2422:       A 2428     ;Add [2428] to A
.2423:       Y 2424     ;Store A to address field of [2424]
.2424:       U 1836     ;Jump to 1836
.2425:       B 1936     ;Load A from [1936]
.2426:       P 0212     ;Print 6-bit character to device 0212
.2427:       U 2063     ;Jump to 2063
.2428:       Z 0001     ;Halt
.2430:      .dw $7e7e7e7e
.2431:      .dw $00000002
.2432:       A 2418     ;Add [2418] to A
.2433:       T 2562     ;Jump to 2562 if A is negative
.2434:       U 2421     ;Jump to 2421
.2435:       Z 1800     ;Skip if switches 0x12 are not all set
.2436:       B 1936     ;Load A from [1936]
.2437:       P 0223     ;Print 6-bit character to device 0223
.2438:       I 6224     ;6-bit input from device 6224
.2439:       P 0225     ;Print 6-bit character to device 0225
.2440:       U 2051     ;Jump to 2051
.2441:       B 1942     ;Load A from [1942]
.2442:       P 0228     ;Print 6-bit character to device 0228
.2443:       U 2038     ;Jump to 2038
.2444:       Z 1800     ;Skip if switches 0x12 are not all set
.2445:       Z 0010     ;Halt
.2446:       B 1936     ;Load A from [1936]
.2447:       P 0233     ;Print 6-bit character to device 0233
.2448:       I 6234     ;6-bit input from device 6234
.2449:       P 0235     ;Print 6-bit character to device 0235
.2450:       U 2001     ;Jump to 2001
.2451:       B 1936     ;Load A from [1936]
.2452:       P 0238     ;Print 6-bit character to device 0238
.2453:       I 6239     ;6-bit input from device 6239
.2454:       P 0240     ;Print 6-bit character to device 0240
.2455:       U 1943     ;Jump to 1943
.2456:       B 2000     ;Load A from [2000]
.2457:       P 0243     ;Print 6-bit character to device 0243
.2458:       I 6244     ;6-bit input from device 6244
.2459:       P 0245     ;Print 6-bit character to device 0245
.2460:       U 1937     ;Jump to 1937
.2461:       B 2000     ;Load A from [2000]
.2462:       P 0248     ;Print 6-bit character to device 0248
.2463:       I 6249     ;6-bit input from device 6249
.2500:       P 0250     ;Print 6-bit character to device 0250
.2501:       P 0251     ;Print 6-bit character to device 0251
.2502:       U 2051     ;Jump to 2051
.2503:       B 2000     ;Load A from [2000]
.2504:       P 0254     ;Print 6-bit character to device 0254
.2505:       Z 0400     ;Skip if switches 0x04 are not all set
.2507:       P 0257     ;Print 6-bit character to device 0257
.2508:       U 1931     ;Jump to 1931
.2509:       C 2330     ;Store A to [2330] and clear A
.2510:       B 2050     ;Load A from [2050]
.2511:       P 0261     ;Print 6-bit character to device 0261
.2512:       I 6262     ;6-bit input from device 6262
.2513:       P 0263     ;Print 6-bit character to device 0263
.2514:       I 6200     ;Shift A left by 6 bits
.2515:       S 2330     ;Subtract [2330] from A
.2516:       U 2237     ;Jump to 2237
.2517:       B 1936     ;Load A from [1936]
.2518:       P 0204     ;Print 6-bit character to device 0204
.2519:       U 2249     ;Jump to 2249
.2520:       B 1936     ;Load A from [1936]
.2521:       P 0207     ;Print 6-bit character to device 0207
.2522:       U 2312     ;Jump to 2312
.2523:      .dw $bc9f19f4
.2524:      .dw $bc9f19f4
.2525:       Z 1800     ;Skip if switches 0x12 are not all set
.2526:      .dw $fffffff4
.2527:       H 2526     ;Store A to [2526]
.2528:       B 2113     ;Load A from [2113]
.2529:       P 0215     ;Print 6-bit character to device 0215
.2530:       B 2526     ;Load A from [2526]
.2531:       U 2340     ;Jump to 2340
.2532:       H 2526     ;Store A to [2526]
.2533:       B 2114     ;Load A from [2114]
.2534:       U 2529     ;Jump to 2529
.2535:       N 2343     ;Multiply A by [2343], low bits
.2536:      -P 0224     ;Print 4-bit character to device 0224
.2537:       U 2346     ;Jump to 2346
.2538:       B 1942     ;Load A from [1942]
.2539:       P 0225     ;Print 6-bit character to device 0225
.2540:       U 1950     ;Jump to 1950
.2541:      .dw $9fb99090
.2542:       Z 1800     ;Skip if switches 0x12 are not all set
.2543:       B 2330     ;Load A from [2330]
.2544:       S 1935     ;Subtract [1935] from A
.2545:       C 2330     ;Store A to [2330] and clear A
.2546:       B 1930     ;Load A from [1930]
.2547:       C 2035     ;Store A to [2035] and clear A
.2548:       U 2227     ;Jump to 2227
.2549:       P 0200     ;Print 6-bit character to typewriter
.2550:       R 2360     ;Store return address to [2360]
.2551:       U 2354     ;Jump to 2354
.2552:       U 1811     ;Jump to 1811
.2553:       B 1936     ;Load A from [1936]
.2554:       P 0215     ;Print 6-bit character to device 0215
.2555:       U 2224     ;Jump to 2224
.2556:       Z 1800     ;Skip if switches 0x12 are not all set
.2557:      .dw $00f0000c
.2558:       B 2523     ;Load A from [2523]
.2559:       N 2524     ;Multiply A by [2524], low bits
.2560:       U 2355     ;Jump to 2355
.2561:       Z 3200     ;Skip if switches 0x20 are not all set
.2562:       S 2420     ;Subtract [2420] from A
.2563:       U 2407     ;Jump to 2407
.2600:       Z 0001     ;Halt
.2601:       Z 1800     ;Skip if switches 0x12 are not all set
.2602:       Z 1838     ;Skip if switches 0x12 are not all set
.2603:       Z 1800     ;Skip if switches 0x12 are not all set
.2604:       Z 0001     ;Halt
.2605:       Z 1800     ;Skip if switches 0x12 are not all set
.2606:       Z 1800     ;Skip if switches 0x12 are not all set
.2607:       Z 0003     ;Halt
.2608:       Z 1800     ;Skip if switches 0x12 are not all set
.2609:       Z 1800     ;Skip if switches 0x12 are not all set
.2610:       Z 1800     ;Skip if switches 0x12 are not all set
.2611:       Y 1826     ;Store A to address field of [1826]
.2612:       Y 1820     ;Store A to address field of [1820]
.2613:       Y 1828     ;Store A to address field of [1828]
.2614:       U 1820     ;Jump to 1820
.2615:       Z 1800     ;Skip if switches 0x12 are not all set
.2616:       Z 0002     ;Halt
.2617:       Z 1800     ;Skip if switches 0x12 are not all set
.2618:       Z 1852     ;Skip if switches 0x12 are not all set
.2619:       Z 1800     ;Skip if switches 0x12 are not all set
.2620:       Z 0010     ;Halt
.2621:       Z 1800     ;Skip if switches 0x12 are not all set
.2622:       Z 1800     ;Skip if switches 0x12 are not all set
.2623:      .dw $7e7e7e7e
.2624:       Z 1800     ;Skip if switches 0x12 are not all set
.2625:       Z 1800     ;Skip if switches 0x12 are not all set
.2626:       Z 0015     ;Halt
.2627:       Z 0003     ;Halt
.2628:       H 1914     ;Store A to [1914]
.2629:       U 2630     ;Jump to 2630
.2630:       Y 1916     ;Store A to address field of [1916]
.2631:       U 1921     ;Jump to 1921