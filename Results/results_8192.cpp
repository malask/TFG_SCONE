int selected [2048] = {1,3,5,9,20,23,33,40,44,45,56,57,63,64,65,66,71,76,78,80,85,88,89,91,94,95,108,109,128,129,132,135,140,150,153,158,161,164,178,180,184,185,186,188,189,192,195,197,203,205,226,232,242,247,248,254,255,256,264,265,268,274,275,279,280,287,288,290,291,296,301,304,307,314,315,321,322,323,326,331,337,344,347,349,351,352,353,354,356,366,368,373,393,394,401,402,407,417,426,432,440,441,448,450,451,454,455,456,460,469,471,478,480,483,485,490,491,495,500,502,504,513,515,523,525,535,540,549,551,557,564,566,569,577,578,579,591,596,598,601,602,611,616,619,620,622,624,630,631,642,643,647,648,650,653,654,660,662,669,672,673,675,677,678,683,685,686,690,699,702,703,704,715,723,725,729,730,734,740,741,746,747,748,753,764,766,770,777,781,793,795,800,802,806,812,813,821,824,829,832,834,836,837,839,843,845,846,853,855,858,862,870,873,875,882,884,886,893,896,897,910,912,918,921,922,925,928,929,931,932,933,936,937,939,946,948,952,955,959,966,967,973,979,981,986,990,992,1001,1002,1008,1010,1019,1025,1029,1031,1033,1038,1043,1048,1059,1060,1072,1077,1078,1080,1081,1086,1098,1100,1101,1116,1121,1124,1130,1137,1140,1141,1143,1147,1148,1149,1150,1153,1157,1164,1170,1171,1172,1179,1181,1188,1190,1191,1197,1199,1201,1203,1204,1207,1210,1215,1218,1221,1224,1230,1231,1234,1235,1236,1241,1248,1255,1259,1261,1262,1266,1268,1270,1271,1275,1279,1285,1292,1300,1302,1309,1310,1312,1314,1317,1319,1322,1323,1324,1325,1326,1333,1343,1349,1356,1358,1362,1365,1366,1382,1384,1389,1400,1402,1404,1405,1408,1410,1411,1413,1419,1425,1432,1433,1442,1444,1445,1447,1450,1454,1455,1456,1457,1468,1469,1471,1475,1482,1494,1499,1502,1506,1507,1513,1524,1533,1537,1538,1541,1547,1549,1551,1552,1565,1566,1571,1574,1575,1579,1586,1587,1590,1593,1595,1600,1601,1603,1605,1606,1607,1613,1617,1628,1629,1639,1640,1650,1657,1660,1664,1666,1670,1674,1679,1680,1683,1684,1687,1688,1706,1710,1717,1719,1730,1731,1734,1739,1743,1749,1751,1753,1765,1766,1776,1778,1785,1786,1787,1790,1809,1811,1814,1818,1820,1822,1824,1826,1827,1832,1836,1840,1842,1849,1854,1858,1860,1862,1863,1867,1880,1881,1882,1883,1884,1887,1892,1893,1895,1903,1912,1913,1917,1920,1923,1927,1931,1932,1937,1943,1946,1949,1952,1954,1958,1962,1969,1972,1973,1974,1986,1987,1989,1994,1996,1997,1998,2000,2003,2005,2008,2010,2012,2014,2015,2017,2022,2023,2025,2026,2028,2030,2033,2041,2045,2046,2048,2051,2060,2061,2065,2069,2072,2075,2076,2082,2085,2087,2095,2098,2108,2113,2118,2125,2132,2135,2141,2146,2148,2150,2151,2156,2157,2159,2164,2167,2171,2174,2175,2177,2178,2179,2185,2188,2194,2197,2201,2202,2204,2210,2213,2214,2221,2222,2226,2231,2248,2256,2257,2258,2260,2261,2269,2271,2273,2275,2278,2282,2286,2289,2290,2301,2303,2305,2310,2316,2318,2325,2328,2333,2334,2337,2339,2348,2349,2350,2355,2366,2367,2372,2375,2378,2383,2392,2394,2395,2398,2419,2420,2424,2426,2435,2437,2439,2440,2442,2445,2447,2451,2458,2470,2472,2483,2485,2493,2501,2504,2514,2524,2525,2526,2527,2530,2535,2538,2543,2556,2558,2567,2571,2574,2578,2579,2581,2592,2596,2605,2612,2613,2627,2628,2629,2632,2636,2642,2650,2654,2655,2661,2670,2673,2690,2694,2705,2707,2708,2718,2726,2729,2734,2735,2740,2742,2752,2758,2762,2763,2766,2767,2772,2782,2786,2791,2792,2795,2797,2804,2805,2807,2808,2813,2820,2822,2828,2829,2831,2836,2839,2842,2844,2846,2847,2848,2853,2860,2862,2865,2866,2869,2876,2877,2879,2880,2881,2884,2886,2893,2898,2900,2902,2905,2910,2916,2922,2931,2932,2934,2941,2942,2943,2946,2951,2957,2961,2962,2970,2976,2977,2980,2981,2983,2984,2986,2987,2992,2995,2996,2997,3002,3013,3017,3019,3020,3025,3031,3041,3042,3043,3045,3049,3056,3060,3069,3070,3072,3079,3081,3083,3086,3087,3094,3096,3098,3109,3112,3113,3119,3124,3139,3147,3153,3158,3166,3169,3176,3177,3192,3194,3196,3199,3205,3209,3216,3224,3229,3233,3238,3252,3254,3267,3275,3277,3283,3288,3292,3295,3300,3301,3307,3310,3311,3312,3315,3319,3326,3332,3334,3337,3340,3341,3342,3344,3348,3350,3354,3362,3363,3364,3367,3368,3371,3373,3376,3377,3386,3387,3389,3394,3403,3406,3408,3418,3426,3431,3432,3437,3440,3445,3446,3447,3448,3453,3460,3462,3464,3466,3472,3475,3487,3488,3489,3499,3504,3506,3509,3521,3522,3528,3529,3542,3543,3546,3549,3550,3551,3556,3569,3570,3585,3589,3598,3602,3608,3612,3617,3621,3626,3627,3637,3638,3639,3651,3652,3666,3677,3679,3701,3702,3704,3708,3710,3711,3720,3725,3729,3730,3736,3740,3743,3747,3748,3754,3757,3758,3763,3765,3766,3786,3796,3798,3800,3813,3814,3823,3825,3829,3832,3833,3835,3836,3843,3845,3846,3856,3861,3868,3872,3873,3877,3882,3884,3885,3890,3891,3893,3895,3903,3909,3913,3914,3920,3924,3927,3939,3943,3946,3951,3954,3965,3966,3969,3973,3988,3993,3997,3998,4002,4003,4010,4011,4015,4017,4018,4025,4027,4028,4030,4034,4041,4043,4049,4050,4052,4054,4058,4068,4076,4078,4081,4085,4094,4095,4099,4100,4102,4113,4115,4120,4122,4124,4127,4130,4131,4133,4135,4137,4139,4142,4147,4149,4159,4160,4161,4162,4166,4170,4177,4178,4179,4186,4194,4205,4218,4219,4227,4233,4237,4244,4245,4246,4247,4248,4258,4273,4279,4280,4281,4286,4290,4296,4300,4301,4303,4309,4311,4312,4313,4316,4319,4325,4326,4333,4337,4340,4345,4346,4348,4357,4363,4366,4367,4368,4371,4372,4377,4382,4391,4396,4397,4398,4400,4406,4408,4411,4414,4418,4419,4422,4424,4429,4431,4434,4435,4456,4459,4463,4472,4476,4479,4480,4481,4484,4486,4488,4489,4499,4500,4501,4510,4513,4517,4518,4523,4526,4527,4533,4536,4538,4541,4548,4551,4553,4556,4560,4561,4562,4568,4575,4578,4580,4587,4590,4591,4595,4599,4602,4603,4607,4609,4628,4633,4634,4636,4639,4641,4645,4649,4652,4656,4660,4664,4667,4675,4677,4696,4698,4699,4705,4706,4707,4711,4713,4717,4719,4720,4723,4735,4738,4739,4742,4748,4753,4754,4761,4762,4763,4776,4781,4783,4788,4796,4798,4802,4805,4807,4811,4816,4818,4821,4822,4829,4833,4836,4844,4847,4850,4852,4854,4857,4858,4864,4870,4871,4872,4875,4877,4880,4882,4883,4886,4892,4894,4900,4906,4912,4918,4922,4925,4928,4929,4934,4935,4936,4938,4943,4944,4945,4948,4952,4956,4957,4958,4968,4973,4980,4983,4986,4987,4989,4990,4994,4995,4997,5007,5009,5010,5026,5031,5032,5033,5037,5044,5046,5048,5055,5056,5059,5064,5069,5077,5079,5086,5106,5110,5119,5120,5121,5122,5125,5133,5134,5156,5158,5159,5160,5162,5164,5168,5172,5173,5174,5175,5179,5181,5186,5196,5197,5204,5206,5208,5214,5225,5226,5228,5234,5244,5245,5249,5250,5255,5260,5262,5263,5267,5268,5270,5277,5286,5289,5304,5309,5311,5319,5323,5325,5326,5330,5335,5337,5339,5342,5350,5351,5355,5356,5361,5363,5365,5369,5371,5375,5379,5382,5384,5388,5395,5396,5404,5405,5407,5409,5411,5413,5417,5418,5421,5424,5427,5429,5431,5434,5436,5440,5442,5443,5446,5449,5457,5458,5460,5462,5464,5466,5469,5473,5485,5488,5489,5495,5498,5499,5502,5505,5506,5508,5518,5523,5530,5531,5536,5539,5545,5547,5553,5555,5557,5559,5560,5561,5565,5567,5570,5571,5577,5578,5592,5594,5601,5604,5606,5608,5612,5619,5628,5636,5639,5642,5653,5654,5658,5663,5666,5668,5669,5670,5679,5681,5682,5688,5691,5694,5696,5705,5715,5716,5719,5720,5726,5728,5731,5734,5739,5750,5751,5752,5761,5764,5770,5774,5777,5778,5783,5791,5792,5800,5801,5804,5805,5806,5809,5810,5814,5818,5823,5826,5827,5829,5837,5838,5845,5848,5850,5852,5861,5867,5872,5875,5879,5881,5886,5896,5899,5911,5913,5914,5915,5916,5925,5929,5930,5936,5937,5949,5950,5956,5959,5966,5968,5979,5982,5984,5986,5987,5989,5993,5994,5997,6020,6022,6027,6028,6032,6033,6037,6039,6041,6042,6043,6048,6055,6056,6063,6071,6072,6073,6074,6077,6078,6079,6080,6081,6087,6088,6091,6092,6095,6099,6109,6110,6117,6118,6127,6128,6130,6135,6137,6141,6148,6152,6161,6162,6163,6168,6169,6172,6174,6176,6185,6186,6191,6193,6194,6196,6198,6200,6204,6209,6211,6216,6221,6224,6225,6230,6240,6241,6247,6249,6253,6259,6260,6262,6264,6265,6270,6272,6279,6288,6289,6292,6295,6299,6304,6305,6324,6329,6333,6338,6345,6348,6352,6354,6356,6357,6361,6370,6373,6375,6378,6380,6381,6382,6383,6389,6395,6404,6405,6412,6414,6419,6443,6461,6462,6463,6470,6474,6475,6486,6492,6496,6506,6510,6514,6515,6521,6528,6530,6531,6533,6534,6537,6540,6543,6544,6545,6547,6548,6549,6551,6553,6557,6560,6562,6566,6567,6570,6572,6578,6582,6585,6591,6595,6597,6603,6606,6612,6626,6628,6629,6630,6632,6635,6638,6641,6642,6643,6645,6661,6662,6664,6665,6668,6673,6677,6691,6706,6712,6714,6721,6722,6731,6734,6735,6736,6749,6756,6759,6760,6766,6767,6771,6773,6786,6787,6788,6789,6792,6800,6805,6808,6810,6811,6814,6817,6818,6825,6835,6839,6842,6847,6848,6851,6852,6854,6859,6862,6864,6867,6872,6882,6885,6890,6892,6896,6905,6907,6911,6916,6921,6931,6933,6937,6938,6941,6944,6947,6952,6953,6954,6955,6959,6960,6966,6969,6970,6976,6977,6978,6981,6982,6984,6989,6990,6996,7001,7006,7007,7014,7019,7020,7022,7023,7033,7035,7038,7039,7041,7044,7045,7050,7051,7055,7057,7058,7063,7064,7065,7069,7070,7074,7079,7084,7086,7101,7103,7107,7108,7110,7115,7116,7118,7124,7125,7129,7135,7140,7141,7142,7143,7144,7148,7151,7153,7154,7165,7166,7170,7172,7178,7189,7191,7199,7209,7211,7213,7218,7228,7241,7247,7261,7264,7266,7270,7273,7280,7281,7282,7283,7284,7286,7291,7294,7295,7296,7307,7311,7313,7315,7323,7326,7331,7332,7333,7335,7350,7352,7355,7362,7365,7366,7367,7368,7371,7376,7379,7380,7385,7386,7400,7406,7409,7413,7415,7423,7424,7426,7430,7431,7434,7439,7442,7452,7459,7461,7464,7465,7469,7480,7486,7487,7494,7498,7500,7502,7513,7520,7523,7526,7527,7534,7540,7542,7545,7546,7551,7553,7555,7566,7568,7573,7577,7578,7582,7596,7602,7604,7605,7607,7616,7620,7622,7624,7628,7633,7634,7637,7638,7640,7642,7647,7655,7656,7657,7661,7662,7663,7665,7666,7670,7672,7682,7683,7684,7689,7691,7705,7708,7709,7720,7723,7729,7731,7739,7741,7744,7745,7746,7748,7749,7750,7753,7755,7756,7758,7761,7765,7768,7777,7804,7806,7809,7810,7813,7822,7826,7830,7836,7837,7842,7845,7851,7853,7859,7863,7867,7869,7870,7872,7873,7875,7876,7885,7893,7903,7911,7916,7930,7931,7933,7940,7946,7947,7953,7965,7966,7967,7968,7969,7974,7978,7979,7983,7985,7992,7994,8002,8003,8004,8006,8010,8013,8026,8031,8033,8035,8037,8043,8053,8057,8061,8069,8071,8079,8084,8085,8096,8098,8103,8105,8107,8108,8109,8114,8115,8121,8124,8127,8128,8131,8134,8141,8142,8144,8151,8152,8153,8156,8158,8162,8163,8178,8180,8182,8184,8187};
int results_parents[2048] = {0,1,3,5,12,16,22,28,31,32,40,40,44,45,46,47,49,52,53,54,57,60,62,63,65,66,75,77,94,94,97,98,102,111,114,119,121,126,136,137,140,140,142,143,143,146,150,152,156,158,176,179,191,196,196,200,200,201,206,206,211,215,216,218,219,228,228,231,231,235,240,245,250,255,256,262,265,266,269,276,284,290,292,294,296,296,298,299,301,310,312,316,338,338,345,346,352,362,367,370,376,378,383,384,385,387,390,391,393,402,404,417,422,429,429,433,434,439,444,446,447,452,454,470,475,484,486,491,493,497,502,503,505,514,514,516,529,532,533,535,535,544,549,553,554,555,556,564,564,572,575,579,581,583,585,585,592,596,600,602,602,603,604,606,610,611,611,615,621,623,624,625,634,642,644,648,650,652,660,661,664,665,665,672,684,686,688,695,701,715,717,719,722,727,736,736,749,751,755,757,760,761,761,762,767,768,768,773,774,776,780,789,790,792,797,798,799,806,808,808,818,822,826,827,829,833,837,838,842,842,843,846,846,847,854,855,859,861,865,874,875,882,890,892,898,903,907,916,918,923,928,936,944,947,949,951,958,965,970,978,979,987,990,991,992,993,998,1008,1009,1010,1024,1028,1031,1037,1044,1047,1047,1050,1055,1058,1058,1061,1063,1068,1077,1083,1083,1085,1090,1092,1099,1100,1102,1106,1107,1109,1112,1114,1116,1124,1128,1131,1133,1135,1144,1144,1150,1151,1152,1157,1165,1171,1175,1176,1177,1180,1186,1188,1188,1192,1199,1205,1210,1218,1219,1225,1225,1231,1236,1240,1241,1246,1246,1247,1250,1251,1254,1261,1268,1276,1279,1282,1287,1290,1307,1308,1314,1325,1327,1329,1329,1330,1331,1332,1333,1338,1344,1351,1352,1360,1361,1361,1364,1367,1369,1370,1370,1373,1385,1385,1388,1390,1397,1407,1414,1417,1419,1420,1426,1439,1452,1456,1457,1460,1467,1470,1472,1472,1483,1484,1488,1489,1490,1493,1499,1500,1503,1505,1509,1515,1517,1518,1519,1520,1520,1526,1529,1541,1541,1549,1552,1561,1564,1568,1572,1573,1575,1579,1581,1582,1584,1585,1588,1589,1604,1606,1617,1618,1626,1626,1629,1632,1638,1647,1653,1656,1666,1666,1674,1675,1683,1684,1684,1687,1709,1712,1713,1717,1719,1721,1725,1726,1728,1731,1735,1741,1744,1751,1754,1756,1757,1759,1759,1763,1770,1771,1773,1773,1774,1779,1785,1786,1787,1794,1804,1804,1810,1814,1820,1822,1827,1828,1831,1838,1840,1843,1847,1850,1855,1860,1865,1868,1870,1870,1878,1879,1882,1887,1888,1888,1891,1893,1896,1899,1900,1901,1903,1905,1906,1907,1912,1913,1915,1921,1922,1925,1928,1938,1942,1943,1945,1947,1959,1960,1962,1966,1968,1976,1979,1982,1984,1985,1993,1995,2006,2013,2016,2020,2025,2028,2035,2041,2042,2043,2044,2048,2048,2049,2055,2059,2061,2064,2066,2067,2067,2068,2071,2072,2080,2082,2087,2087,2088,2092,2094,2095,2108,2108,2110,2116,2130,2136,2140,2140,2141,2142,2148,2149,2150,2153,2156,2159,2164,2168,2170,2182,2185,2190,2195,2197,2199,2205,2208,2212,2212,2215,2219,2232,2234,2237,2242,2257,2259,2265,2268,2271,2279,2285,2286,2286,2288,2304,2307,2311,2312,2320,2322,2323,2325,2327,2332,2334,2339,2348,2357,2358,2369,2371,2375,2382,2384,2396,2404,2405,2408,2408,2410,2413,2416,2420,2435,2437,2448,2452,2454,2459,2462,2463,2471,2476,2484,2494,2494,2506,2508,2509,2515,2519,2523,2531,2533,2535,2538,2551,2553,2572,2574,2584,2585,2587,2596,2607,2610,2613,2614,2635,2637,2646,2651,2654,2655,2656,2659,2667,2677,2683,2687,2689,2691,2692,2697,2698,2700,2700,2707,2714,2715,2719,2719,2726,2733,2736,2739,2740,2746,2747,2747,2754,2761,2766,2770,2770,2773,2779,2779,2781,2782,2782,2784,2785,2791,2796,2798,2800,2803,2808,2824,2830,2837,2839,2840,2845,2845,2846,2848,2851,2860,2864,2864,2872,2875,2876,2877,2878,2879,2881,2883,2883,2890,2893,2895,2896,2902,2920,2924,2926,2927,2930,2935,2947,2949,2950,2951,2955,2963,2965,2974,2975,2976,2981,2985,2990,2994,2994,3002,3005,3009,3021,3025,3025,3032,3040,3055,3061,3067,3072,3079,3081,3092,3092,3106,3107,3109,3113,3118,3121,3129,3136,3142,3144,3146,3165,3166,3178,3185,3186,3194,3198,3200,3208,3211,3212,3217,3223,3223,3224,3225,3230,3235,3238,3240,3243,3245,3245,3246,3247,3249,3250,3252,3267,3267,3268,3272,3275,3279,3281,3282,3283,3291,3292,3294,3299,3310,3316,3321,3330,3341,3347,3347,3352,3354,3361,3362,3362,3363,3366,3372,3374,3375,3376,3381,3385,3394,3395,3397,3404,3410,3411,3413,3425,3425,3432,3432,3442,3444,3447,3449,3450,3451,3456,3470,3470,3486,3492,3497,3499,3503,3508,3514,3517,3522,3522,3532,3533,3533,3543,3543,3558,3567,3569,3587,3588,3590,3592,3593,3594,3605,3608,3611,3611,3619,3624,3628,3632,3633,3640,3642,3643,3649,3653,3654,3680,3686,3687,3688,3701,3702,3710,3713,3718,3723,3725,3726,3727,3736,3737,3739,3748,3754,3760,3765,3766,3772,3778,3779,3779,3790,3792,3796,3797,3807,3814,3818,3818,3823,3828,3833,3848,3850,3854,3860,3862,3876,3878,3883,3890,3914,3920,3924,3924,3927,3927,3934,3934,3936,3939,3940,3945,3946,3947,3949,3951,3959,3960,3964,3964,3966,3967,3971,3978,3986,3988,3989,3995,4007,4007,4010,4011,4012,4020,4021,4028,4029,4030,4033,4037,4038,4040,4042,4044,4047,4049,4059,4061,4070,4070,4071,4071,4074,4082,4087,4088,4088,4093,4103,4114,4127,4128,4137,4141,4144,4152,4153,4154,4155,4157,4169,4181,4188,4188,4192,4197,4201,4206,4209,4210,4211,4215,4216,4216,4217,4218,4220,4229,4230,4238,4241,4244,4248,4251,4253,4265,4270,4272,4273,4273,4276,4277,4284,4290,4299,4303,4305,4305,4307,4317,4319,4322,4323,4331,4332,4336,4339,4344,4345,4349,4349,4369,4374,4377,4385,4388,4390,4391,4393,4398,4399,4400,4403,4416,4418,4419,4427,4430,4438,4439,4443,4445,4449,4454,4456,4461,4468,4474,4476,4478,4480,4485,4485,4486,4489,4494,4497,4499,4506,4507,4508,4510,4514,4521,4521,4528,4532,4547,4555,4556,4559,4561,4562,4566,4568,4571,4573,4577,4584,4588,4596,4597,4613,4614,4615,4622,4623,4623,4626,4630,4633,4635,4636,4637,4645,4651,4652,4656,4661,4665,4666,4673,4674,4674,4688,4695,4696,4701,4708,4710,4716,4720,4725,4729,4735,4740,4745,4746,4754,4757,4762,4767,4769,4773,4778,4781,4784,4784,4789,4794,4795,4795,4797,4800,4801,4804,4805,4807,4819,4823,4833,4838,4842,4847,4849,4852,4855,4855,4862,4864,4865,4866,4872,4872,4873,4875,4878,4881,4882,4883,4894,4897,4903,4906,4910,4911,4913,4915,4918,4919,4920,4932,4938,4938,4955,4958,4959,4959,4962,4969,4971,4973,4981,4982,4985,4991,4994,5009,5010,5019,5039,5044,5053,5054,5055,5055,5058,5063,5065,5094,5095,5096,5096,5098,5101,5105,5109,5109,5110,5110,5112,5116,5119,5129,5129,5136,5138,5140,5144,5159,5159,5160,5170,5182,5182,5185,5186,5190,5194,5195,5196,5200,5200,5201,5206,5222,5225,5239,5246,5247,5257,5265,5266,5267,5269,5275,5276,5281,5283,5290,5291,5293,5293,5297,5301,5303,5307,5308,5313,5320,5322,5324,5328,5336,5337,5344,5344,5346,5348,5349,5353,5355,5356,5359,5361,5365,5366,5367,5370,5373,5378,5379,5380,5382,5383,5398,5399,5400,5402,5404,5405,5408,5414,5428,5431,5431,5440,5442,5443,5449,5457,5458,5459,5470,5474,5483,5483,5489,5493,5496,5498,5505,5508,5510,5512,5512,5514,5516,5517,5520,5526,5536,5537,5551,5552,5559,5560,5563,5566,5571,5577,5591,5597,5602,5604,5614,5615,5619,5622,5625,5627,5631,5632,5639,5645,5646,5650,5653,5656,5657,5667,5677,5678,5683,5683,5687,5690,5695,5697,5703,5713,5714,5716,5727,5730,5737,5745,5750,5751,5756,5764,5765,5771,5772,5775,5775,5776,5778,5779,5782,5786,5790,5792,5794,5796,5805,5806,5811,5816,5818,5820,5832,5839,5844,5846,5848,5849,5853,5860,5862,5874,5875,5878,5880,5880,5891,5893,5893,5904,5904,5920,5921,5928,5932,5938,5940,5952,5954,5955,5957,5958,5959,5964,5965,5966,5989,5992,5997,5998,6002,6004,6007,6010,6011,6012,6013,6018,6022,6023,6028,6038,6038,6039,6039,6041,6043,6044,6044,6046,6052,6052,6054,6054,6056,6059,6067,6067,6075,6076,6083,6085,6086,6091,6092,6096,6100,6103,6116,6118,6118,6127,6129,6130,6131,6133,6142,6143,6147,6148,6148,6149,6151,6153,6157,6161,6164,6170,6176,6179,6181,6186,6193,6193,6196,6199,6204,6212,6212,6214,6215,6218,6222,6224,6232,6241,6242,6243,6245,6249,6253,6253,6274,6277,6280,6285,6290,6293,6297,6298,6301,6301,6305,6312,6316,6317,6318,6320,6323,6324,6325,6329,6333,6339,6340,6345,6346,6350,6371,6389,6390,6396,6404,6407,6410,6421,6427,6433,6443,6447,6456,6456,6464,6470,6472,6473,6476,6476,6478,6481,6484,6484,6486,6487,6487,6488,6490,6497,6500,6503,6506,6510,6510,6514,6515,6522,6525,6530,6537,6540,6541,6544,6548,6552,6570,6571,6573,6573,6575,6577,6581,6583,6584,6586,6589,6606,6607,6608,6608,6610,6617,6619,6635,6652,6656,6657,6665,6665,6673,6676,6677,6678,6692,6704,6710,6710,6716,6718,6721,6723,6737,6742,6744,6745,6748,6757,6764,6767,6769,6770,6776,6779,6784,6793,6803,6805,6807,6813,6813,6816,6821,6823,6831,6833,6834,6836,6839,6847,6849,6852,6853,6857,6866,6868,6875,6883,6891,6903,6904,6907,6907,6909,6913,6915,6918,6918,6919,6919,6921,6922,6930,6933,6933,6939,6940,6940,6944,6949,6950,6955,6955,6962,6968,6976,6976,6983,6990,6991,6992,6993,7001,7004,7005,7007,7008,7010,7010,7014,7015,7018,7022,7025,7029,7029,7030,7032,7033,7043,7048,7053,7055,7072,7073,7079,7079,7088,7092,7093,7094,7098,7099,7102,7106,7112,7113,7115,7116,7116,7120,7125,7129,7129,7139,7143,7148,7149,7154,7163,7170,7175,7189,7191,7192,7200,7210,7220,7225,7239,7241,7242,7248,7249,7254,7256,7256,7257,7257,7262,7265,7267,7271,7271,7282,7286,7287,7289,7295,7297,7299,7300,7300,7301,7317,7318,7321,7329,7335,7335,7336,7336,7340,7343,7346,7347,7350,7351,7366,7369,7372,7374,7377,7384,7388,7390,7393,7395,7398,7401,7405,7415,7421,7422,7425,7426,7429,7444,7451,7452,7458,7465,7470,7472,7483,7488,7490,7492,7493,7504,7515,7516,7517,7518,7521,7522,7526,7537,7538,7542,7548,7548,7556,7567,7571,7573,7573,7578,7583,7586,7587,7590,7597,7600,7601,7604,7604,7606,7607,7614,7632,7632,7633,7639,7640,7641,7643,7644,7646,7648,7660,7661,7662,7667,7668,7682,7687,7687,7698,7702,7706,7707,7715,7717,7720,7720,7722,7723,7725,7725,7728,7729,7729,7730,7733,7737,7740,7749,7777,7779,7781,7782,7783,7792,7796,7802,7809,7810,7818,7820,7825,7827,7831,7833,7836,7837,7838,7839,7839,7840,7843,7853,7859,7878,7889,7894,7911,7913,7915,7923,7930,7930,7938,7950,7950,7951,7952,7952,7960,7964,7964,7968,7969,7978,7979,7990,7991,7992,7994,7999,8002,8015,8018,8021,8022,8023,8029,8037,8042,8045,8054,8055,8062,8070,8070,8084,8087,8093,8099,8101,8102,8102,8110,8110,8115,8117,8119,8120,8126,8128,8132,8134,8136,8145,8146,8147,8152,8155,8157,8158,8174,8176,8178,8183,8186};
int results_childrens[2048] = {5,11,19,33,87,34,0,171,125,64,249,85,183,93,94,95,0,0,0,112,0,119,241,249,257,261,145,293,0,167,343,177,369,391,0,411,0,0,459,233,236,0,475,0,0,487,0,499,521,263,0,585,0,0,0,625,314,315,0,322,324,659,0,0,0,340,683,687,345,703,711,359,0,0,743,0,0,757,0,771,0,399,807,0,0,815,409,410,0,847,855,871,919,461,0,939,0,478,0,977,497,498,506,1017,1021,1031,0,0,518,0,0,529,1061,534,1075,1093,1097,0,0,1127,1135,0,0,0,586,1803,1213,1231,617,0,1261,0,1271,0,645,1293,658,1325,666,671,1345,1371,0,1391,697,700,703,710,711,1447,0,0,1457,1461,735,736,740,1487,2253,1507,755,0,0,1513,1523,0,1531,0,0,782,0,0,1585,1607,0,0,807,0,814,815,0,819,0,1653,0,842,1695,859,863,0,1757,1775,890,893,1805,0,0,1831,922,924,0,927,928,0,1867,0,1873,945,948,0,0,962,964,967,973,0,0,982,983,984,996,2994,2005,0,1007,0,1010,0,1013,1014,1015,1019,2041,1022,0,1030,0,0,1039,2091,0,2105,2121,1063,2141,1077,2159,0,1089,2195,2203,1113,0,1122,1124,1127,2263,0,1142,0,0,2319,2327,1165,0,2333,2347,0,2379,0,1207,1208,1210,1217,0,2453,1228,0,1232,0,0,2467,1238,1241,1246,3756,2509,2513,2529,0,2541,2545,1274,0,2557,2563,0,2567,2577,2585,0,2599,2607,2615,0,1312,0,0,1314,1319,0,1334,2677,2685,0,1345,2697,0,0,2709,2715,1364,2737,2757,0,1385,1386,1388,2779,1392,1394,0,2793,2797,1400,1401,2827,0,1430,1436,2877,0,2897,0,1465,1467,2945,0,1485,1487,4467,0,1495,0,1498,3011,3023,3037,1520,3055,1529,0,1530,0,1534,1535,3073,1538,0,0,0,3115,1564,3161,3171,1589,0,0,0,0,0,3249,0,3257,3271,1639,0,3281,0,3317,0,1668,3339,3349,0,3371,3379,1694,1697,0,0,1705,1708,3419,0,0,3435,1733,3469,0,0,1750,0,3511,3525,5298,3543,3553,0,3563,3569,3573,1790,1791,3613,0,3635,1820,3661,1832,1835,0,0,0,3697,3705,5613,5622,0,0,1892,3787,1895,1897,1915,0,3841,0,1923,3853,1929,0,1931,0,3883,1946,0,0,1957,3919,1962,3929,3933,0,1988,0,1989,1990,3983,3989,0,3999,2002,2012,4043,2023,0,0,0,2031,4069,0,2039,2046,2049,0,2056,0,2059,2065,0,0,2073,2074,0,0,2090,4193,0,4201,0,4207,4211,2107,4221,0,0,2115,4233,2120,2129,2130,4263,2133,2135,0,2140,4291,2153,4309,4313,0,4337,4341,0,4363,4375,2189,0,4393,2198,4403,2214,2215,4443,2229,2235,4479,4499,4507,4519,2266,4537,4545,2274,4557,0,4563,2286,0,4585,0,0,4597,0,0,2303,0,2309,4631,0,2322,0,4659,0,4671,0,4685,0,0,0,0,4731,0,2368,0,4753,4757,0,0,2382,4775,4789,4799,2401,2416,4835,0,2422,0,0,2440,2443,2446,2447,0,2451,2458,2459,0,4933,0,4961,4975,4987,2497,2502,5023,0,0,2517,2542,2543,2546,2549,5111,2558,0,2560,2562,0,5131,0,0,0,0,2603,0,5221,2620,5249,2631,5287,2645,5293,2648,2649,5311,5321,0,5351,5357,2686,0,5387,5395,0,5401,2712,2718,2723,2732,5467,0,0,0,2737,0,2748,0,5523,5527,0,5551,0,5587,5601,0,2813,2814,5653,2831,0,0,2837,2844,2845,2852,0,2861,0,2862,0,5735,5761,2887,5787,2895,5793,2899,0,2906,5817,5821,0,0,0,0,5839,5847,0,2932,5873,5879,5887,2945,5893,5905,5915,2960,0,2963,5933,5955,5959,2983,0,5969,5977,0,2995,2999,0,3002,0,3005,3010,0,3027,0,0,0,3036,3037,3039,6089,3050,0,0,3064,3072,6147,6155,6159,0,0,0,0,0,0,6177,3090,3094,0,3106,6215,0,6225,3118,6253,6257,0,3130,3133,6283,0,0,3156,3158,6333,6337,0,0,3172,6359,3181,3183,6391,3198,6399,3206,3211,0,0,0,6493,6507,3258,6531,0,3282,3283,0,6581,0,3296,6611,6625,6635,6649,6665,6707,3355,6725,3368,3369,3377,6763,6775,0,3395,3396,0,6805,0,0,6809,0,6829,6841,0,3423,0,3426,6855,6859,3433,6871,3440,6893,3448,6899,0,6909,0,3461,6933,6937,6955,0,6959,6973,6993,3500,3501,3513,0,3527,7057,3536,7077,0,0,7091,7095,7109,7121,7127,0,0,3571,7147,7173,3588,0,7205,3609,0,0,7249,7253,7267,3635,0,7303,0,7317,3660,0,0,7359,0,0,0,0,3718,7449,0,3734,0,0,7483,0,3753,0,0,0,0,3784,0,3813,3814,3816,7643,3823,3824,0,3833,0,3837,3843,0,7699,7707,7711,7723,0,7731,7741,3872,3873,0,7787,0,3897,7815,3909,3920,7845,3926,0,3927,0,0,7871,0,7875,7895,0,7917,3962,3963,0,0,0,0,3973,0,0,0,0,0,3987,7977,3993,7995,8005,4017,4024,4027,8067,8071,4051,8105,0,0,8157,0,8173,8177,8183,0,8197,4100,8213,4108,8219,4118,4119,8241,8247,4129,0,0,8283,4143,4144,0,0,0,0,8337,0,8347,0,8375,8381,0,8385,0,8413,0,0,0,8435,0,0,0,0,8455,8459,4235,8481,0,4249,0,0,8501,0,4259,4268,4269,8541,0,8569,8589,8631,8635,0,0,0,8681,4342,0,4343,8689,8707,8735,4374,0,0,0,8765,0,8785,4394,8791,0,0,0,0,4405,4408,0,4415,8841,0,0,4431,4432,0,8887,0,4453,0,4454,0,0,4463,4470,4480,0,4483,4484,8975,0,4493,4495,4497,4500,9003,9013,4509,0,4514,0,4515,9073,0,4539,4544,4551,9109,9113,4558,4559,9125,9131,9135,9161,4582,0,9191,0,0,0,0,0,0,9223,9229,9233,0,0,0,4632,4634,4638,9279,4641,9297,9317,0,4662,9331,0,4669,4674,4680,4683,9369,4688,4690,4712,9433,4718,9441,9453,0,9469,0,4739,4742,4747,9503,0,9529,4766,9567,0,4785,9583,4793,4794,0,0,0,0,4805,0,9631,0,0,4819,9647,0,9657,0,4836,4837,4851,4854,0,9725,9747,0,0,9767,4886,4888,4891,0,0,0,4898,4900,4904,4913,9837,9847,4925,0,4930,4931,4935,0,0,9887,9897,9901,0,4957,9917,0,4965,9935,9953,4983,0,4994,0,0,0,5006,0,0,0,10019,0,10033,5018,0,5022,10055,10059,5031,0,5048,5054,10115,5061,0,5063,0,5069,0,5070,0,5077,10157,5094,0,5099,10201,0,5110,10223,5113,10243,0,0,0,5137,5141,0,5147,5169,10349,5186,10375,5189,0,0,0,0,5223,0,10451,10455,0,0,0,5236,0,0,0,5239,10485,10501,5263,0,10547,10553,5280,10565,10577,5290,5292,10597,5308,0,5314,10631,0,5321,0,5322,10653,5328,0,5338,10689,10697,0,10745,0,0,5383,10771,5387,0,10785,10793,10799,5403,0,0,10833,5418,10847,10851,10855,5432,0,0,5442,10893,5450,0,5455,5456,10929,5466,0,5470,0,10943,5478,5479,0,5481,5484,0,10977,10981,0,5495,10995,5499,0,5502,11009,11013,5510,0,5513,0,0,11041,0,0,11071,11087,5547,11097,0,11107,0,5555,5568,0,5573,11149,5577,11163,0,5589,5595,0,5598,11203,11207,5605,0,0,5611,11225,5619,0,5630,11263,0,5642,0,5643,11299,11315,0,5675,5679,5680,11381,5692,11395,5701,0,11415,5709,5710,0,11435,0,5727,0,0,0,0,0,11505,11513,5758,0,5762,0,11533,0,5777,5778,5779,0,5791,5798,5803,0,11617,11631,11649,5826,0,0,0,11673,5838,5843,5844,5847,11701,0,11713,0,0,5866,0,0,11757,0,11769,11795,0,0,11825,0,11835,0,0,0,0,0,11889,0,5946,0,0,0,11927,5965,11953,0,5985,11979,11993,0,0,6010,6011,12027,12031,12039,0,12049,6027,12103,6055,6061,12125,6064,0,12139,12147,12153,0,6078,0,12187,12191,12213,0,0,6113,12229,0,6120,0,12243,12247,0,0,12269,12273,6139,12291,6156,0,0,12325,12335,0,12343,6180,6182,0,12387,6199,12419,0,0,6215,0,0,0,12441,12457,6230,6237,12481,12485,12493,0,0,6253,0,6258,0,12537,12545,0,0,0,12575,0,12597,12609,0,6308,0,6313,6314,12641,0,6332,12687,0,0,12699,6355,0,12723,6382,6389,6395,12803,12825,12835,12843,12851,0,6428,12865,12883,6444,0,12893,12897,12901,12905,6454,12921,0,6470,6471,0,0,12965,6506,0,6519,6520,13057,0,0,13091,0,0,6562,13133,6570,13143,0,0,13171,6587,13177,0,13181,13191,13201,13205,0,6605,13213,0,6610,13227,0,6618,0,0,6622,13253,0,6636,13279,0,13295,0,0,6659,13321,6670,0,6682,13367,6685,0,13381,6694,0,13395,13399,0,13439,0,0,13443,6726,13461,6735,0,6757,13527,0,6771,6772,13559,0,0,6784,0,0,13603,6803,6807,6808,0,6813,0,0,0,13639,13647,6832,13677,0,0,0,0,0,0,0,6865,13743,0,13763,6883,13777,6890,0,6897,13799,6902,0,0,0,0,0,13845,13853,13869,13875,13885,13899,13917,13935,13939,13945,6974,6979,13961,0,13973,6988,0,13979,0,13985,0,7003,0,14013,14017,7010,14025,0,0,7018,7019,7026,7033,0,14079,14099,7056,0,7057,0,7070,7071,0,7073,0,7076,0,14161,7082,14173,7090,0,7095,7096,14195,0,0,7104,14215,0,0,7128,14263,7136,0,7137,7142,14287,14291,0,14303,14307,0,0,0,0,7166,7167,14341,7173,14351,14355,7190,0,14383,7195,7202,7209,14423,0,7227,0,7232,7237,7251,14527,0,0,14579,7292,0,14597,7304,14611,7307,0,14617,14621,7318,14641,14645,14649,7343,7344,14695,7349,0,7357,0,0,7364,14731,7385,0,14781,14797,0,7400,14803,14807,7408,0,14837,0,0,0,7437,14887,0,7451,7452,0,0,14931,7470,0,0,7476,7477,14975,7495,0,7497,14997,0,0,15031,15035,0,7530,0,0,0,7549,7554,7555,15113,7563,15143,7573,0,0,0,0,0,0,7597,15209,0,15213,7614,0,7635,15275,7639,15283,0,7650,7651,7652,0,15315,7659,0,0,7662,7664,7671,15357,0,7680,7683,15369,0,7686,15375,7692,15387,7705,0,15413,15423,7714,15455,0,7733,15489,7748,15511,0,15533,7769,7773,7774,7775,0,15553,7778,7780,7783,15569,7787,0,7793,0,15609,15665,7834,15671,15675,0,7847,7852,7858,7867,15737,0,15757,7883,7885,15785,7898,7900,0,0,0,0,0,0,0,0,0,7930,0,15893,7948,15899,7956,7963,0,7970,15961,0,7982,15967,15971,7990,15983,15987,0,15997,16009,8006,8013,0,0,0,0,8023,0,0,8046,8049,16105,0,16135,16147,0,8083,0,0,8096,0,0,8104,0,16221,8112,0,8113,16239,8121,8129,0,0,16267,16277,8142,8145,16293,8150,0,16311,8157,8160,16327,0,16337,8182,0,8183,8186,8189};
