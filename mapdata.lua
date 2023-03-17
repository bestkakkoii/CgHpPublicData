----------------------------------------------------------------
-- 用於批量添加編號請勿改動
----------------------------------------------------------------
local function AppendRange(t, range)
    if ((2 == #range)
        and (type(range[1]) == "number")
        and (type(range[1]) == "number")
        and (range[2] > range[1]))
    then
        for i = range[1], range[2] do
            table.insert(t, i);
        end
    end
end

----------------------------------------------------------------
-- Object < 200000
-- 請不要填 Ground 編號 Object 編號必須大於 0
----------------------------------------------------------------
ROAD = {
    -- grond
    --3133, 3026, 10560,
    --6690, 6688,

    -- object
    --0,


    --1.0/2.0地圖--
    200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222,
    223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245,
    246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268,
    269, 270, 271, 272, 273, 274, 275,

    --1*2--
    11490, 16224,

    --2*1--
    11491, 16223,

    --2*2--
    16788,

    --2*3--
    17681,

    --3*2--
    17682,

    --3*3--
    12804, 12805, 12806, 12807, 12808, 12809, 12810, 12811, 12812, 12813, 12814, 12815, 12816, 12817, 12818, 12819,
    12820, 12821, 12822, 12823, 12824, 12825, 12826, 12827, 12828, 12829, 12830, 12831, 12912, 12913, 12914, 12915,
    12916, 12917, 12918, 12919, 12920, 12921, 12922, 12923, 12924, 12925,

    --1*1--
    10001, 10002, 10011, 10012, 10039, 10040, 10041, 10042, 10318, 10319, 10320, 10321, 10322, 10323, 10324, 10325,
    10326, 10327, 10328, 10329, 10330, 10331, 10332, 10333, 10334, 10335, 10336, 10337, 10409, 10410, 10411, 10412,
    10413, 10414, 10415, 10416, 10419, 10422, 10423, 10424, 10425, 10428, 10429, 10504, 10505, 10506, 10507, 10508,
    10509, 10517, 10526, 10527, 10529, 10547, 10550, 10551, 10554, 10555, 10556, 10557, 10558, 10559, 10560, 10561,
    10562, 10563, 10564, 10565, 10566, 10567, 10568, 10569, 10570, 10571, 10572, 10573, 10574, 10575, 10576, 10577,
    10578, 10579, 10580, 10581, 10582, 10583, 10584, 10585, 10586, 10587, 10588, 10589, 10590, 10591, 10592, 10593,
    10594, 10595, 10596, 10597, 10598, 10599, 10600, 10601, 10610, 10611, 10612, 10662, 10700, 10702, 10703, 10704,
    10705, 10706, 10707, 10708, 10709, 10710, 10711, 10712, 10713, 10714, 10715, 10716, 10717, 10718, 10719, 10720,
    10721, 10731, 10732, 10733, 10734, 10735, 10736, 10737, 10738, 10739, 10740, 10741, 10742, 10743, 10744, 10745,
    10746, 10747, 10748, 10749, 10750, 10751, 10752, 10753, 10754, 10755, 10756, 10757, 10758, 10759, 10760, 10761,
    10762, 10763, 10764, 10765, 10766, 11024, 11025, 11028, 11029, 11030, 11063, 11064, 11065, 11066, 11067, 11068,
    11087, 11088, 11089, 11090, 11091, 11092, 11095, 11096, 11097, 11098, 11099, 11100, 11101, 11105, 11107, 11108,
    11109, 11110, 11111, 11112, 11113, 11114, 11115, 11118, 11119, 11120, 11121, 11122, 11123, 11124, 11125, 11126,
    11127, 11166, 11168, 11212, 11213, 11214, 11219, 11220, 11221, 11222, 11223, 11224, 11225, 11226, 11227, 11228,
    11299, 11424, 11425, 11426, 11427, 11428, 11429, 11430, 11431, 11432, 11433, 11434, 11435, 11436, 11437, 11438,
    11439, 11440, 11441, 11442, 11443, 11444, 11445, 11446, 11447, 11448, 11449, 11456, 11457, 11458, 11459, 11477,
    11478, 11479, 11480, 11482, 11483, 11484, 11485, 11486, 11487, 11492, 11493, 11532, 11533, 11537, 11538, 11539,
    11541, 11543, 11544, 11546, 11547, 11548, 11549, 11625, 11626, 11627, 11628, 11629, 11630, 11631, 11632, 11633,
    11634, 11635, 11636, 11637, 11638, 11639, 11640, 11641, 11642, 11643, 11644, 11645, 11646, 11647, 11648, 11649,
    11650, 11651, 11652, 11653, 11654, 11655, 11656, 11657, 11658, 11659, 11660, 11661, 11662, 11663, 11664, 11665,
    11666, 11667, 11668, 11669, 11670, 11671, 11672, 11673, 11674, 11675, 11676, 11677, 11678, 11679, 11680, 11681,
    11682, 11683, 11684, 11685, 11686, 11687, 11688, 11689, 11690, 11691, 11696, 11697, 11698, 11709, 11723, 11733,
    11734, 11735, 11736, 11737, 11738, 11739, 11740, 11741, 11742, 11774, 11775, 11776, 11777, 11778, 11779, 11787,
    11788, 11789, 11790, 11791, 11792, 11793, 11794, 11797, 11798, 11799, 11800, 11801, 11802, 11803, 11804, 11805,
    11806, 11807, 11808, 11809, 11810, 11811, 11812, 11813, 11814, 11815, 11816, 11817, 11818, 11819, 11820, 11821,
    11822, 11823, 11824, 11825, 11826, 11827, 11828, 11829, 11830, 11831, 11832, 11833, 11834, 11835, 11836, 11837,
    11838, 11839, 11840, 11841, 11842, 11843, 11844, 11845, 11846, 11847, 11848, 11849, 11850, 11851, 11852, 11853,
    11854, 11855, 11856, 11857, 11858, 11859, 11860, 11861, 11862, 11863, 11864, 11865, 11866, 11867, 11868, 11869,
    11870, 11871, 11872, 11873, 11874, 11875, 11876, 11877, 11878, 11879, 11880, 11881, 11882, 11883, 11884, 11885,
    11886, 11887, 11888, 11889, 11890, 11891, 11892, 11893, 11894, 11895, 11896, 11897, 11898, 11899, 11900, 11901,
    11902, 11903, 11904, 11905, 11906, 11907, 11908, 11909, 11910, 11911, 11912, 11913, 11914, 11915, 11916, 11917,
    11918, 11919, 11920, 11921, 11922, 11923, 11924, 11925, 11926, 11927, 11928, 11929, 11930, 11931, 11932, 11933,
    11934, 11935, 11936, 11937, 11938, 11939, 11940, 11941, 11942, 11943, 11944, 11945, 11946, 11947, 11948, 11949,
    11950, 11951, 11952, 11953, 11954, 11955, 11956, 11957, 11958, 11959, 11960, 11961, 11962, 11963, 11964, 11965,
    11966, 11967, 11968, 11969, 11970, 11971, 11972, 11973, 11974, 11975, 11976, 11977, 11978, 11979, 11980, 11981,
    11982, 11983, 11984, 11985, 11986, 11987, 11988, 11989, 11990, 11991, 11992, 11993, 11994, 11995, 11996, 11997,
    11998, 11999, 12000, 12001, 12002, 12003, 12103, 12104, 12105, 12108, 12110, 12124, 12126, 12129, 12147, 12163,
    12164, 12165, 12166, 12167, 12168, 12169, 12170, 12171, 12175, 12176, 12177, 12178, 12179, 12180, 12181, 12182,
    12183, 12184, 12185, 12203, 12207, 12215, 12219, 12221, 12238, 12239, 12244, 12256, 12257, 12261, 12264, 12275,
    12279, 12280, 12283, 12284, 12285, 12286, 12287, 12288, 12289, 12290, 12291, 12292, 12293, 12294, 12295, 12296,
    12297, 12298, 12301, 12302, 12303, 12304, 12305, 12306, 12307, 12308, 12312, 12313, 12314, 12315, 12317, 12318,
    12319, 12321, 12322, 12323, 12324, 12325, 12326, 12330, 12331, 12334, 12335, 12355, 12357, 12358, 12359, 12391,
    12392, 12393, 12396, 12401, 12404, 12407, 12408, 12409, 12420, 12421, 12422, 12423, 12424, 12425, 12426, 12427,
    12433, 12434, 12435, 12436, 12437, 12446, 12447, 12450, 12452, 12453, 12454, 12455, 12456, 12458, 12459, 12460,
    12461, 12462, 12463, 12464, 12465, 12466, 12467, 12468, 12469, 12470, 12471, 12472, 12473, 12474, 12475, 12476,
    12477, 12478, 12479, 12480, 12481, 12482, 12483, 12484, 12485, 12488, 12489, 12490, 12491, 12492, 12493, 12494,
    12495, 12496, 12497, 12498, 12499, 12500, 12501, 12502, 12503, 12504, 12505, 12506, 12507, 12508, 12509, 12510,
    12511, 12512, 12513, 12514, 12515, 12516, 12517, 12518, 12519, 12520, 12521, 12522, 12523, 12524, 12525, 12526,
    12527, 12528, 12529, 12530, 12531, 12532, 12533, 12534, 12535, 12566, 12567, 12568, 12569, 12570, 12571, 12572,
    12573, 12574, 12575, 12576, 12577, 12578, 12579, 12580, 12581, 12582, 12583, 12584, 12585, 12586, 12587, 12588,
    12589, 12590, 12591, 12592, 12593, 12594, 12595, 12596, 12597, 12598, 12599, 12600, 12601, 12638, 12639, 12640,
    12641, 12642, 12643, 12644, 12645, 12646, 12647, 12648, 12649, 12650, 12651, 12652, 12653, 12654, 12655, 12656,
    12657, 12658, 12659, 12660, 12661, 12662, 12663, 12664, 12665, 12666, 12667, 12668, 12669, 12670, 12671, 12672,
    12673, 12926, 12927, 12933, 12934, 12935, 12936, 12937, 12938, 12939, 12940, 12941, 12942, 12943, 13036, 13037,
    13038, 13039, 13040, 13041, 13042, 13043, 13044, 13045, 13046, 13047, 13048, 13049, 13050, 13051, 13052, 13053,
    13054, 13055, 13056, 13057, 13058, 13059, 13060, 13061, 13062, 13063, 13064, 13065, 13066, 13067, 13068, 13069,
    13070, 13071, 13251, 13257, 13268, 13269, 13270, 13271, 13272, 13273, 13274, 13275, 13288, 13289, 13290, 13291,
    13292, 13293, 13294, 13295, 13296, 13297, 13298, 13299, 13300, 13301, 13302, 13303, 13304, 13305, 13306, 13307,
    13308, 13309, 13310, 13311, 13312, 13313, 13314, 13315, 13316, 13317, 13318, 13319, 13320, 13321, 13322, 13323,
    13396, 13397, 13398, 13399, 13400, 13401, 13402, 13403, 13404, 13405, 13406, 13407, 13408, 13409, 13410, 13411,
    13412, 13413, 13414, 13415, 13416, 13417, 13418, 13419, 13420, 13421, 13422, 13423, 13424, 13425, 13426, 13427,
    13428, 13429, 13430, 13431, 13468, 13469, 13470, 13471, 13472, 13473, 13474, 13475, 13476, 13477, 13478, 13479,
    13480, 13481, 13482, 13483, 13484, 13485, 13486, 13487, 13488, 13489, 13490, 13491, 13492, 13493, 13494, 13495,
    13496, 13497, 13498, 13499, 13500, 13501, 13502, 13503, 13996, 13997, 13998, 13999, 15000, 15001, 15002, 15003,
    15004, 15011, 15012, 15013, 15014, 15015, 15022, 15037, 15052, 15067, 15082, 15097, 15098, 15099, 15100, 15101,
    15102, 15103, 15104, 15105, 15117, 15118, 15119, 15120, 15121, 15122, 15123, 15124, 15125, 15137, 15138, 15139,
    15140, 15141, 15142, 15143, 15144, 15145, 15157, 15158, 15159, 15160, 15161, 15162, 15163, 15164, 15165, 15177,
    15178, 15179, 15180, 15181, 15182, 15183, 15184, 15185, 15186, 15187, 15188, 15189, 15190, 15191, 15192, 15193,
    15194, 15195, 15196, 15197, 15198, 15199, 15200, 15201, 15202, 15203, 15204, 15205, 15206, 15207, 15208, 15209,
    15210, 15211, 15212, 15213, 15214, 15215, 15216, 15217, 15218, 15219, 15220, 15221, 15222, 15223, 15224, 15225,
    15226, 15227, 15228, 15229, 15230, 15231, 15232, 15233, 15234, 15235, 15236, 15237, 15238, 15239, 15240, 15241,
    15242, 15243, 15244, 15245, 15246, 15247, 15248, 15249, 15250, 15251, 15252, 15253, 15254, 15255, 15256, 15257,
    15258, 15259, 15260, 15261, 15262, 15263, 15264, 15265, 15266, 15267, 15268, 15269, 15270, 15271, 15272, 15273,
    15274, 15275, 15276, 15277, 15278, 15279, 15280, 15281, 15282, 15283, 15284, 15285, 15286, 15287, 15288, 15289,
    15290, 15291, 15292, 15293, 15300, 15301, 15302, 15303, 15304, 15305, 15306, 15307, 15308, 15315, 15316, 15317,
    15318, 15319, 15320, 15321, 15322, 15323, 15330, 15331, 15332, 15333, 15334, 15335, 15336, 15337, 15338, 15381,
    15382, 15383, 15384, 15385, 15386, 15387, 15388, 15389, 15390, 15391, 15392, 15393, 15394, 15395, 15396, 15397,
    15398, 15399, 15400, 15401, 15402, 15403, 15404, 15405, 15406, 15407, 15408, 15409, 15410, 15411, 15412, 15413,
    15414, 15415, 15416, 15453, 15454, 15455, 15456, 15457, 15458, 15459, 15460, 15461, 15462, 15463, 15464, 15465,
    15466, 15467, 15468, 15469, 15470, 15471, 15472, 15473, 15474, 15475, 15476, 15477, 15478, 15479, 15480, 15481,
    15482, 15483, 15484, 15485, 15486, 15487, 15488, 15525, 15526, 15527, 15528, 15529, 15530, 15531, 15532, 15533,
    15534, 15535, 15536, 15537, 15538, 15539, 15540, 15541, 15542, 15543, 15544, 15545, 15546, 15547, 15548, 15549,
    15550, 15551, 15552, 15553, 15554, 15555, 15556, 15557, 15558, 15559, 15560, 15561, 15562, 15563, 15564, 15565,
    15566, 15567, 15583, 15584, 15585, 15586, 15587, 15603, 15604, 15605, 15606, 15607, 15623, 15624, 15625, 15626,
    15627, 15628, 15643, 15644, 15645, 15646, 15647, 15648, 15723, 15724, 15725, 15726, 15727, 15743, 15744, 15745,
    15746, 15747, 15763, 15764, 15765, 15766, 15767, 15783, 15784, 15785, 15786, 15787, 15887, 15888, 15889, 15890,
    15891, 15892, 16130, 16131, 16132, 16133, 16134, 16135, 16136, 16137, 16138, 16139, 16206, 16207, 16208, 16209,
    16210, 16211, 16212, 16213, 16214, 16215, 16216, 16217, 16218, 16219, 16220, 16221, 16222, 16235, 16236, 16237,
    16238, 16239, 16240, 16241, 16242, 16243, 16345, 16347, 16525, 16526, 16530, 16533, 16534, 16535, 16540, 16541,
    16545, 16546, 16547, 16548, 16549, 16556, 16557, 16564, 16565, 16570, 16571, 16579, 16580, 16581, 16585, 16586,
    16587, 16588, 16597, 16598, 16599, 16600, 16609, 16632, 16633, 16634, 16635, 16638, 16639, 16640, 16641, 16642,
    16645, 16653, 16654, 16655, 16656, 16750, 16751, 16773, 16774, 16775, 16776, 16777, 16786, 16787, 16797, 16798,
    16803, 16804, 16805, 16806, 17023, 17048, 17062, 17111, 17112, 17113, 17114, 17115, 17116, 17117, 17118, 17119,
    17120, 17121, 17122, 17123, 17124, 17125, 17126, 17184, 17185, 17192, 17193, 17195, 17295, 17298, 17343, 17344,
    17520, 17521, 17522, 17523, 17524, 17525, 17532, 17533, 17534, 17553, 17554, 17555, 17556, 17557, 17558, 17559,
    17560, 17561, 17562, 17563, 17564, 17565, 17603, 17604, 17605, 17606, 17611, 17612, 17641, 17642, 17652, 17653,
    17654, 17655, 17663, 17664, 17665, 17666, 17667, 17668, 17669, 17670, 17671, 17672, 17673, 17674, 17683, 17684,
    17952, 17953, 17954, 17955, 17956, 17957, 17958, 17959, 17960, 17961, 17962, 17963, 17964, 17965, 17966, 17967,
    17968, 17969, 17970, 17971, 17972, 17973, 17974, 17975, 17976, 17977, 17978, 17979, 17980, 17981, 17982, 17983,
    17984, 17985, 17986, 17987, 17988, 17989, 17990, 17991, 17992, 17993, 17994, 17995, 17996, 17997, 17998, 17999,

    --未知區域可能是3.0--
    1032, 1033, 1034, 1035, 1087, 1101, 1104, 1106, 1220, 1438, 2001, 2286, 2289, 2362, 2366, 2368, 2717, 3347, 3354,
    3355, 3356, 3359, 3666, 4003, 7068, 7069, 7070, 7253, 7254, 7255, 7256, 7257, 7258, 7271, 7272, 7473, 7488, 7552,
    7555, 7560, 7561, 7562, 7632, 7639, 7641, 7645, 7648, 7650, 7664, 7720, 7952, 8052, 8053, 8055, 8058, 8066, 8071,
    8072, 8097, 8133, 8134, 8135, 8136, 8138, 8169, 8170, 8171, 8174, 8178, 8182, 8183, 8184, 8194, 8195, 8674, 8850,
    8851, 8852, 8853, 8867, 8868, 8871, 8872, 8877, 8881, 8882, 8979, 8980, 9027, 9028, 9248, 9250, 9251, 9251, 9254,
    9309, 9325, 9326, 9469, 9470, 9471, 9471, 9893, 9901, 9902, 9905, 9906, 10940, 10971, 10972, 10974, 10975, 10976,
    10977, 10978, 10979, 10981, 10994, 10995, 10996, 11176, 11177, 11178, 11179, 11181, 11182, 11183, 11187, 11188,
    11189, 11190, 11191, 11198, 11238, 11331, 12690, 16424, 17607, 17608, 25296,



};

----------------------------------------------------------------
-- Object >= 200000
-- 請不要填 Ground 編號 Object 編號必須大於 0
----------------------------------------------------------------
NEWROAD = {
    --1.0/2.0地圖--
    230015, 230016, 230017, 230018, 230019, 230020, 230021, 230022, 230024, 230025, 230026, 230027, 230028, 230029,
    230030, 230031, 230032, 230034, 230036, 230038, 230046, 230049, 230050, 230058, 230091, 230115, 230116, 230117,
    230118, 230119, 230120, 230130, 230131, 233045, 233046, 233047, 233048, 233049, 233050, 233055, 233149, 233150,
    233151, 233152, 233153, 233154, 233155, 233156, 233157, 233158, 233159, 233160, 233161, 233162, 233163, 233164,
    233165, 233166, 233167, 233168, 233169, 233170, 233171, 235039, 235040, 235041, 235042, 235043, 235044, 238000,
    238001, 238002, 238003, 238004, 238005, 238006, 238007, 238008, 238009, 238010, 238011, 238012, 238013, 238014,
    238015, 238016, 238017, 238018, 238019, 238020, 238021, 238022, 238023, 238024, 238025, 238026, 238027, 238043,
    238044, 238045, 238046, 238047, 238048, 238049, 238050, 238051, 238052, 238053, 238054, 238055, 238056, 238057,
    238058, 238059, 238060, 238061, 238062, 238063, 238064, 238090, 238091, 238092, 238093, 238125, 238126, 238127,
    238128, 238129, 238130, 238131, 238132, 238133, 238134, 238135, 238136, 238137, 238138, 238139, 238140, 238141,
    238142, 238143, 238144, 238150, 238151, 238152, 238153, 238154, 238155, 238156, 238157, 238158, 238159, 238160,
    238161, 238162, 238163, 238164, 238165, 238166, 238167, 238168, 238169, 238170, 238171, 238172, 238173, 238174,
    238175, 238176, 238177, 238178, 238179, 238180, 238181, 238182, 238188, 238189, 238190, 238191, 238192, 238193,
    238194,

    --未知物件，我會在去找一下--
    260089, 260090, 260091, 260092, 260093, 260094, 260097, 260098,
};

----------------------------------------------------------------
-- Object < 200000
-- 請不要填 Ground 編號 Object 編號必須大於 0
----------------------------------------------------------------
ROCK = {
    12218, 12197, 12222, 12200, 12199, 12209, 12220, 12198, 12223, 15068,
    15070, 15076, 15080, 15074, 15072, 15081, 15079, 12202, 12204, 12205,
    12206, 12208, 12209, 12210, 12211, 33075, 33076, 33077, 33078,
    33079, 12357, 12484, 15084, 15086, 15087, 15088, 15089, 15090, 15091,
    17088, 17086, --[[12207]]
};


----------------------------------------------------------------
-- 石頭或其他障礙物 Object >= 200000
----------------------------------------------------------------
NEWROCK = {
    -- 20230311 啾咪
    260074, 260075, 260076, 260077, 260078, 260079, 260080, 260081, 260083, 260085, 260086
};

----------------------------------------------------------------
-- 牆壁 Object < 200000
----------------------------------------------------------------
WALL = {
    13461, 13465, 13440, 13453, 13446, 15312, 15313, 13432, 13464, 13458,
    15314, 13444, 13459, 15310, 13439, 13451, 15309, 13462, 13436, 13447, 13438,
    13467, 15307, 13463, 13466, 13442, 13443, 13450, 13437, 13460, 13454, 13455,
    13449, 13457, 13433, 15306, 13445, 13456, 13434, 13441, 13448, 13435, 13452,
    13613, 13636, 13633, 13637, 13632, 13623, 13647, 13631, 13643, 13635, 13618,
    13619, 13624, 13640, 13634, 13617, 13644, 13642, 13620, 13637, 13630, 13616,
    13622, 13633, 13614, 13625, 13627, 13639, 13626, 13638, 13628, 13615, 13646,
    13645, 13629, 13641, 13621, 17700, 17701, 17702, 17703, 17704, 17705, 17706,
    17707, 17708, 17709, 17710, 17711, 17712, 17713, 17714, 17715, 17716, 17717,
    17718, 17719, 17720, 17721, 17722, 17723, 17724, 17725, 17726, 17727, 17728,
    17729, 17730, 17731, 17732, 17733, 17734, 17735, 17065, 13080, 13081, 13082,
    13083, 13084, 13085, 13086, 13087, 13088, 13089, 13090, 13091, 13092, 13093,
    13094, 13095, 13096, 13097, 13098, 13099, 13100, 13101, 13102, 13103, 13104,
    13105, 13106, 13107, 13108, 13109, 13110, 13111, 13112, 13113, 13114, 13115,
    12221, 12217, 12216, 12212, 15345, 15346, 15347, 15348, 15349, 15350, 15351,
    15352, 15353, 15354, 15355, 15356, 15357, 15358, 15359, 15360, 15361, 15362,
    15363, 15364, 15365, 15366, 15367, 15368, 15369, 15370, 15371, 15372, 15373,
    15374, 15375, 15376, 15377, 15378, 15379, 15380, 13504, 13505, 13506, 13507,
    13508, 13509, 13510, 13511, 13512, 13513, 13514, 13515, 13516, 13517, 13518,
    13519, 13520, 13521, 13522, 13523, 13524, 13525, 13526, 13527, 13528, 13529,
    13530, 13531, 13532, 13533, 13534, 13535, 13536, 13537, 13538, 13539, 13117,
    13118, 13119, 13120, 13121, 13122, 13123, 13124, 13125, 13126, 13127, 13128,
    13129, 13130, 13131, 13132, 13133, 13134, 13135, 13136, 13137, 13138, 13139,
    13360, 13361, 13362, 13363, 13364, 13365, 13366, 13367, 13368, 13370, 13384,
    13385, 13386, 13388, 13390, 13391, 13392, 13393, 13394, 13395,

    17771, 17772, 17773, 17774, 17775, 17776, 17777, 17778, 17779, 17780, 17781,
    17782, 17783, 17784, 17785, 17786, 17787, 17788, 17789, 17790, 17791, 17792,
    17793, 17794, 17795, 17796, 17797, 17798, 17799, 17800, 17801, 17802, 17803,
    17804, 17805, 17806, 17807,

    13648, 13649, 13650, 13651, 13652, 13653, 13654, 13655, 13656, 13657, 13658,
    13659, 13660, 13661, 13662, 13663, 13664, 13665, 13666, 13667, 13668, 13669,
    13670, 13671, 13672, 13673, 13674, 13675, 13676, 13677, 13678, 13679, 13680,
    13681, 13682, 13683, 13684, 13685, 13686, 13687, 13688, 13689, 13690, 13691,
    13696, 13693, 13694, 13695, 13696, 13697, 13698, 13699, 13700, 13701, 13702,
    13703, 13704, 13705, 13706, 13707, 13708, 13709, 13710, 13711, 13712, 13713,
    13714, 13715, 13716, 13717, 13718, 13719, 13720, 13721, 13722, 13723, 13724,
    13725, 13726, 13727, 13728, 13729, 13730, 13731, 13732, 13733, 13734, 13735,
    13736, 13737, 13738, 13739, 13740, 13741, 13742, 13743, 13744, 13745, 13746,
    13747, 13748, 13749, 13750, 13751, 13752, 13753, 13754, 13755, 13756, 13757,
    13758, 13759, 13760, 13761, 13762, 13763, 13764, 13765, 13766, 13767, 13768,
    13769, 13770, 13771, 13772, 13773, 13774, 13775, 13776, 13777, 13778, 13779,
    13780, 13781, 13782, 13783, 13784, 13785, 13786, 13787, 13788, 13789, 13790,
    13791, 13792, 13793, 13794, 13795, 13796, 13797, 13798, 13799, 13800, 13801,
    13802, 13803, 13804, 13805, 13806, 13807, 13808, 13809, 13810, 13811, 13812,
    13813, 13814, 13815, 13816, 13817, 13818, 13819, 13820, 13821, 13822, 13823,
    13824, 13825, 13826, 13827, 13828, 13829, 13830, 13831, 13832, 13833, 13834,
    13835, 13836, 13837, 13838, 13839, 13840, 13841, 13842, 13843, 13844, 13845,
    13846, 13847, 13848, 13849, 13850, 13851, 13852, 13853, 13854, 13855, 13856,
    13857, 13858, 13859, 13860, 13861, 13862, 13863, 13864, 13865, 13866, 13867,
    13868, 13869, 13870, 13871, 13872, 13873, 13874, 13875, 13876, 13877, 13878,
    13879, 13880, 13881, 13882, 13883, 13884, 13885, 13886, 13887, 13888, 13889,
    13890, 13891, 13892, 13893, 13894, 13895, 13896, 13897, 13898, 13899,

    17087,
    11389,
};

----------------------------------------------------------------
--- 牆壁 Object >= 200000
----------------------------------------------------------------
NEWWALL = {

};

----------------------------------------------------------------
-- 不可穿越地板 Ground < 200000
----------------------------------------------------------------
GROUND = {
    -- 20230314 啾咪 GROND
    3834, 3836, 3838, 3840,
    2999,

    -- 20230317 啾咪 GROUND
    100,
    1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440,
    1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459,
    1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478,
    1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495, 1496, 1497,
    1498, 1499, 1500, 1501, 1502, 1503, 1504, 1505, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515, 1516,
    1517, 1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535,
    1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554,
    1555, 1556, 1557, 1558, 1559, 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573,
    1574, 1575, 1576, 1577, 1578, 1579, 1580, 1581, 1582, 1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592,
    1593, 1594, 1595, 1596, 1597, 1598, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611,
    1612, 1613, 1614, 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630,
    1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649,
    1650, 1651, 1652, 1653, 1654, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665, 1666, 1667, 1668,
    1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687,
    1688, 1689, 1690, 1691, 1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706,
    1707, 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1721, 1722, 1723, 1724, 1725,
    1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744,
    1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763,
    1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1776, 1777, 1778, 1779, 1780, 1781, 1782,
    1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 2156, 2157, 2158, 2159,
    2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178,
    2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197,
    2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2226, 2227, 2228, 2229, 2230, 2231, 2232,
    2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260,
    2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279,
    2280, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298,
    2299, 2300, 2301, 2302, 2303, 2304, 2441, 2442, 2443, 2444, 2445, 2446, 2447, 2448, 2449, 2450, 2451, 2452, 2453,
    2454, 2455, 2456, 2457, 2458, 2459, 2999, 3245, 3246, 3247, 3248, 3346, 3347, 3348, 3349, 3350, 3351, 3352, 3353,
    3354, 3356, 3357, 3358, 3359, 3360, 3364, 3365, 3366, 3368, 3369, 3370, 3371, 3373, 3375, 3376, 3378, 3379, 3380,
    3619, 3620, 3621, 3622, 3623, 3640, 3641, 3642, 3643, 3644, 3661, 3662, 3663, 3664, 3665, 3682, 3683, 3684, 3685,
    3686, 3703, 3704, 3705, 3706, 3707, 3817, 3818, 3819, 3820, 3821, 3822, 3823, 3824, 3825, 3834, 3836, 3838, 3840,
    3880, 3881, 3882, 3883, 4108, 4109, 4110, 4111, 4117, 4118, 4119, 4120, 4121, 4122, 4123, 4129, 4130, 4131, 4132,
    4133, 4135, 4139, 4140, 4141, 4146, 4147, 4154, 4155, 4156, 4157, 4158, 4159, 4164, 4165, 4166, 4167, 4168, 4169,
    4170, 4171, 4177, 4178, 4179, 4180, 4181, 4182, 4189, 4190, 4191, 4192, 4201, 4202, 4203, 4214, 4227, 5000, 5001,
    5002, 5003, 5004, 5005, 5006, 5007, 5008, 6707, 6708, 6709, 6710, 6711, 6712, 6713, 6714, 6715, 6716, 6717, 6718,
    6719, 6720, 6721, 6722, 6724, 6725, 6726, 6727, 6728, 6732, 6733, 6734, 6735, 6736, 6737, 6738, 6741, 6742, 6743,
    6744, 6745, 6746, 6747, 6748, 6750, 6751, 6752, 6753, 6754, 6755, 6756, 6757, 6759, 6760, 6761, 6762, 6763, 6764,
    6765, 6766, 6768, 6769, 6770, 6771, 6772, 6773, 6774, 6775, 7664, 7665, 7666, 7667, 7668, 7669, 7670, 7671, 7672,
    7673, 7674, 7675, 7676, 7677, 7678, 7679, 7788, 7789, 7790, 7791, 7792, 7793, 7794, 7795, 7796, 7797, 7798, 7799,
    7800, 7801, 7802, 7803, 8685, 8686, 8687, 8688, 8689, 8690, 8691, 8692, 8693, 8694, 8695, 8696, 8697, 8698, 8699,
    8700, 8701, 8702, 8703, 8704, 8705, 8706, 8707, 8708, 8709, 8710, 8711, 8712, 8713, 8714, 8715, 8716, 8717, 8718,
    8719, 8720, 8838, 8839, 8840, 8841, 8842, 8843, 8844, 8845, 8846, 8847, 8848, 8849, 8850, 8851, 8852, 8853, 8854,
    8855, 8856, 8857, 8858, 8859, 8860, 8861, 8862, 8863, 8864, 8865, 8866, 8867, 8868, 8869, 8870, 8871, 8872, 8873,
    8874, 8875, 8876, 8877, 8878, 8879, 8880, 8881, 8882, 8883, 8884, 8885, 8886, 8887, 8888, 8889, 8890, 8891, 8892,
    8893, 8894, 8895, 8896, 8897, 8898, 8899, 8900, 8901, 8902, 8903, 8904, 8905, 8906, 8907, 8908, 8909, 8946, 8947,
    8948, 8949, 8950, 8951, 8952, 8953, 8954, 9180, 9181, 9182, 9183, 9184, 9185, 9186, 9187, 9188, 9189, 9190, 9191,
    9192, 9193, 9194, 9195, 9196, 9197, 9198, 9199, 9200, 9201, 9202, 9203, 9204, 9205, 9206, 9207, 9208, 9209, 9210,
    9211, 9212, 9213, 9214, 9215, 9216, 9217, 9218, 9219, 9220, 9221, 9222, 9223, 9224, 9230, 9233, 9234, 9236, 9237,
    9238, 9240, 9241, 9242, 9244, 9245, 9246, 9249, 9250, 9252, 9253, 9254, 9255, 9256, 9257, 9258, 9259, 9260, 9261,
    9262, 9263, 9264, 9265, 9266, 9267, 9268, 9269, 9270, 9271, 9272, 9273, 9274, 9275, 9276, 9277, 9278, 9279, 9280,
    9281, 9282, 9283, 9284, 9285, 9286, 9287, 9288, 9289, 9290, 9291, 9292, 9293, 9294, 9295, 9296, 9297, 9298, 9299,
    9300, 9301, 9302, 9303, 9306, 9307, 9308, 9309, 9310, 9311, 9312, 9313, 9314, 9315, 9316, 9317, 9318, 9319, 9320,
    9321, 9322, 9323, 9324, 9325, 9326, 9327, 9328, 9329, 9330, 9331, 9332, 9333, 9334, 9335, 9336, 9337, 9338, 9339,
    9340, 9341, 9342, 9343,
};

----------------------------------------------------------------
-- 不可穿越地板 Ground >= 200000
----------------------------------------------------------------
NEWGROUND = {
    -- 20230317 啾咪 GROUND
    223018, 223019, 223020, 223021, 223022, 223023, 223024, 223025, 223026, 223530, 223531, 223532, 223533, 223542,
    223543, 223544, 223545, 223554, 223555, 223556, 223557, 225509, 225510, 225511, 225512, 225513, 225514, 225515,
    225516, 225517, 225518, 225519, 225520, 225521, 225522, 225523, 225524, 225525, 225526, 225527, 225528, 225529,
    225530, 225531, 225532, 225533, 225534, 225535, 225536, 225537, 225538, 225539, 225540, 225541, 225542, 225543,
    225544, 225545, 225546, 225547, 225548, 225549, 225550, 225551, 225552, 225553, 225554, 225555, 225556, 225557,
    225558, 225559, 225560, 225561, 225562, 225563, 225564, 225565, 225566, 225567, 225568, 225569, 225570, 225571,
    225572, 225573, 225574, 225575, 225576, 225577, 225578, 225579, 225580, 225581, 225582, 225583, 225584, 225585,
    225586, 225587, 225588, 225589, 225590, 225591, 225592, 225593, 225594, 225595, 225596, 225597, 225598, 225599,
    225600, 225601, 225602, 225603, 225604, 225605, 225606, 225607, 225608, 225609, 225610, 225611, 225612, 225613,
    225614, 225615, 225616, 225617, 225618, 225619, 225620, 225621, 225622, 225623, 225624, 225625, 225626, 225627,
    225628, 225629, 225630, 225631, 225632, 225633, 225634, 225635, 225636, 225637, 225638, 225639, 225640, 225641,
    225642, 225643, 225644, 225645, 225646, 225647, 225648, 225649, 225650, 225651, 225652, 225653, 225654, 225655,
    225656, 225657, 225658, 225659, 225660, 225661, 225662, 225663, 225664, 225665, 225666, 225667, 225668, 225669,
    225670, 225671, 225672, 225673, 225674, 225675, 225676, 225677, 225678, 225679, 225680, 225681, 225682, 225683,
    225684, 225685, 225686, 225687, 225688, 225689, 225690, 225691, 225692, 225693, 225694, 225695, 225696, 225697,
    225698, 225699, 225700, 225701, 225702, 225703, 225704, 225705, 225706, 225707, 225708, 225709, 225710, 225711,
    225712, 225713, 225714, 225715, 225716, 225717, 225718, 225719, 225720, 225721, 225722, 225723, 225724, 225725,
    225726, 225727, 225728, 225729, 225730, 225731, 225732, 225733, 225734, 225735, 225736, 225737, 225738, 225739,
    225740, 225741, 225742, 225743, 225744, 225745, 225746, 225747, 225748, 225749, 225750, 225751, 225752, 225753,
    225754, 225755, 225756, 225757, 225758, 225759, 225760, 225761, 225762, 225763, 225764, 225765, 225766, 225767,
    225768, 225769, 225770, 225771, 225772, 225773, 225774, 225775, 225776, 225777, 225778, 225779, 225780, 225781,
    225782, 225783, 225784, 225785, 225786, 225787, 225788, 225789, 225790, 225791, 225792, 225793,
};

----------------------------------------------------------------
-- 不可穿越物件/黑區
----------------------------------------------------------------
EMPTY = {
    2 --[2號物],
};

----------------------------------------------------------------
-- 大型障礙物件 3 * 3 (9)
----------------------------------------------------------------
local ROCKEX_9 <const> = {
    12536, 12537, 12538, 12539, 12540, 12541, 12542,
    12543, 12544, 12545, 12546, 12547, 12548, 12549,

    12784, 12787, 12788, 12790, 12793, 12796, 12798, 12801,
};
setrockex(3, 3, ROCKEX_9);


----------------------------------------------------------------
-- 大型障礙物件 3 * 2 (6)
----------------------------------------------------------------
local ROCKEX_6 <const> = {
    12222, 12220,
};
setrockex(3, 2, ROCKEX_6);

----------------------------------------------------------------
-- 大型障礙物件 2 * 2 (4)
----------------------------------------------------------------
local ROCKEX_4 <const> = {
    15080,
};
setrockex(2, 2, ROCKEX_4);

----------------------------------------------------------------
-- 大型障礙物件 1 * 2 (2)
----------------------------------------------------------------
local ROCKEX_2 <const> = {
    15081, 15079, 12362,
};
setrockex(1, 2, ROCKEX_2);

----------------------------------------------------------------
-- Object < 200000 範圍牆壁編號添加
----------------------------------------------------------------
local wall_ranges = {
    { 17685, 17951 },
    { 15345, 15380 },
    { 15453, 15488 },
    { 15417, 15452 },
    { 15489, 15524 },
    { 15803, 15886 },
    { 13116, 13267 },
    { 13212, 13250 },
    { 12826, 12937 },
    { 12536, 12565 },
    { 12674, 12875 },
    { 13000, 13071 },
    { 13080, 13115 },
    { 13288, 13467 },
    { 13504, 13683 },
    { 13684, 13827 },
    { 13900, 13995 },
};

for _, range in ipairs(wall_ranges) do
    AppendRange(WALL, range);
end

----------------------------------------------------------------
-- Ground < 200000 範圍地面編號添加
----------------------------------------------------------------
local ground_ranges = {
    { 1422, 1797 },
    { 2156, 2209 },
    { 2226, 2241 },
    { 2251, 2304 },
    { 2441, 2459 },
    { 5000, 5008 },
    { 8838, 8909 },
    { 8946, 8954 },
    { 3245, 3248 },
    { 3347, 3354 },
    { 3356, 3360 },
    { 3364, 3365 },
    { 3817, 3825 },
    { 3880, 3883 },
};

for _, range in ipairs(ground_ranges) do
    AppendRange(GROUND, range);
end
