
local setname, coremajor = "Raid Loot", "1"
local vmajor, vminor = "Raid Loot 1", tonumber(string.sub("$Revision: 13370 $", 12, -3))


-- Check to see if an update is needed
-- if not then just return out now before we do anything
if not TekLibStub or not PeriodicTableEmbed or not PeriodicTableEmbed:NeedsUpgraded(vmajor, vminor) then return end

local mem = gcinfo()
local t = {

	---------------------
	--      Zones      --
	---------------------

	raidzones = {"moltencore", "onyxiaslair", "blackwinglair", "zulgurub"},

	["blackwinglair"] = "19375 19379 19387 19391 19395 19399 19403 19407 19431 19435 19439 16897 16905 16913 16917 16925 16933 16937 16941 16945 16949 16953 16957 16961 16965 19336 19340 19344 19348 19352 19356 19360 19364 16818 19372 19376 19380 19388 19392 19396 19400 19432 19436 16898 16902 16906 16910 16918 16926 16934 16942 16950 16958 19002 16966 19337 19341 19345 19349 19353 19357 19361 19365 19369 19373 19377 19381 19385 19389 19393 19397 19401 19405 19433 19437 16899 16903 16907 16911 16919 16923 16927 16931 16935 16943 16951 16959 19003 19334 19342 19346 19350 19354 19358 19362 19370 19374 19378 19382 19386 19390 19394 19398 19402 19406 19430 19434 19438 16904 16912 16916 16920 16924 16928 16932 16936 16940 16944 16948 16952 16956 16960 16964 19368 18562 20383 19335 19339 19343 19347 19351 19355 19363 19367 19371 16832",
	["moltencore"] = "16867 16845 16825 16829 16833 16837 16841 19140 16849 16853 16857 18646 16865 16901 3475 16909 17204 19017 18260 18264 18292 18806 18810 18814 18563 18822 16798 16802 16806 16810 16814 17073 17077 16826 16830 16834 16838 16842 16846 16850 17109 16858 16862 16866 18703 16922 16930 16938 16946 16954 16962 18257 18265 17010 18803 18811 18815 18564 18823 16795 16799 16803 16807 17066 16815 16819 16823 16827 16831 16835 18879 19138 19142 17106 16855 16859 16863 16915 17011 18870 18861 18808 18812 18816 18820 18824 16811 18832 16796 16800 16804 16808 16812 16816 16820 16824 16828 18872 16836 16840 16844 17103 16852 16856 16860 16864 16868 18252 16861 16843 19146 21371 16817 16821 17074 16848 18842 17104 16847 18203 17082 17110 18875 19144 17203 19145 17107 19136 19137 16822 19147 16851 16839 18259 17065 19143 18878 17071 17069 17063 16854 18291 18805 18809 19139 18817 18821 17982 18829 17105 16797 16801 16805 16809 16813 17072 17076 17102",
	["onyxiaslair"] = "16963 16908 18422 18423 18488 16914 17064 16921 18813 16939 17067 17068 18205 16947 17075 18705 17078 16900 16955 15410 16929",
	["zulgurub"] = "19918 19920 19922 19928 19930 19944 19946 19962 19710 19712 19714 19716 19718 19720 19722 19724 19853 19855 19857 19859 19861 19863 19865 19867 19869 19871 19873 19875 20258 20260 20262 20264 19885 19887 19889 19891 19893 19895 19897 19899 19901 19903 19905 19907 19909 20038 19913 19915 19919 19921 19923 19925 19927 19929 19877 20266 20032 19968 19708 19884 19945 19947 19964 19876 20259 19854 19713 19961 19963 19711 19967 19715 19717 19719 19721 19723 19852 19727 19856 19709 19965 19862 19864 19993 19870 19872 19874 20257 19878 20261 20263 20265 19886 19888 19890 19892 19894 19896 19898 19900 19902 19904 19906 19908 19910 19912 19802 19866 19707",


	----------------------
	--      Bosses      --
	----------------------

	raidbosses = {
		"majordomoexecutus", "ragnaros", "barongeddon", "golemaggtheincinerator",
		"garr", "sulfuronharbinger", "shazzrah", "lucifron", "gehennas", "magmadar",
		"broodlordlashlayer", "ebonroc", "firemaw", "razorgoretheuntamed",
		"vaelastraszthecorrupt", "nefarian", "chromaggus", "flamegor",
		"onyxia", "azuregos", "lordkazzak", "ysondre", "emeriss", "taerar", "lethon",
		"highpriestessjeklik", "highpriestvenoxis", "highpriestthekal", "highpriestessarlokk",
		"highpriestessmarli", "jindothehexxer", "bloodlordmandokir",
		"gahzranka", "grilek", "hazzarah", "renataki", "wushoolay", "hakkar",
		"baronkazum", "lordskwol", "highmarshalwhirlaxis", "princeskaldrenox",
		"battleguardsartura", "theprophetskeram", "princesshuhuran", "princessyauj", "fankrisstheunyielding",
		"lordkri", "cthun", "ouro", "emperorveknilash", "vem", "viscidus", "emperorveklor",
		"thaddius", "grobbulus", "patchwerk", "gluth", "heigantheunclean", "instructorrazuvious",
		"grandwidowfaerlina", "anubrekhan", "maexxna", "kelthuzad", "sapphiron", "noththeplaguebringer",
		"gothiktheharvester", "loatheb"
	},

	blackwinglairbosses = {"nefarian", "vaelastraszthecorrupt", "razorgoretheuntamed", "broodlordlashlayer", "chromaggus", "ebonroc", "firemaw", "flamegor"},
	moltencorebosses = {"majordomoexecutus", "magmadar", "ragnaros", "barongeddon", "garr", "golemaggtheincinerator", "sulfuronharbinger", "shazzrah", "lucifron", "gehennas"},
	outdoorbosses = {"azuregos", "lordkazzak"},
	thefourdragons = {"ysondre", "emeriss", "taerar", "lethon"},
	zulgurubbosses = {"highpriestessjeklik", "highpriestvenoxis", "highpriestthekal", "highpriestessarlokk", "highpriestessmarli", "jindothehexxer", "bloodlordmandokir", "gahzranka", "grilek", "hazzarah", "renataki", "wushoolay", "hakkar"},
	silithislords = {"baronkazum", "lordskwol", "highmarshalwhirlaxis", "princeskaldrenox"},
	ruinsofahnqiraj = {"buruthegorger", "generalrajaxx", "ossiriantheunscarred", "kurinnaxx", "moam", "ayamissthehunter"},
	ahnqiraj = {"battleguardsartura", "theprophetskeram", "princesshuhuran", "princessyauj", "fankrisstheunyielding", "lordkri", "cthun", "ouro", "emperorveknilash", "vem", "viscidus", "emperorveklor"},
	naxxall = {"naxxramasabomination","naxxramasdeathknight","naxxramasspider","naxxramasfrostwyrm","naxxramasplague"},
    naxxramasabomination = {"thaddius", "grobbulus", "patchwerk", "gluth"},
	naxxramasdeathknight = {"heigantheunclean", "instructorrazuvious"},
	naxxramasspider = {"grandwidowfaerlina", "anubrekhan", "maexxna"},
	naxxramasfrostwyrm = {"kelthuzad", "sapphiron"},
	naxxramasplague = {"noththeplaguebringer", "gothiktheharvester", "loatheb"},

	["azuregos"] = "18704 18547 17070 19132 18541 19130 18202 18208 18542 19131 18545",
	["barongeddon"] = "18252 19136 18563 16797 16844 17110 18829 18291 18861 18257 18820 18821 19142 18259 19143 18260 19144 18292 18265 16836 21371 16837 18264 18822 16807 18823 17010 18824 16856 16859",
	["bloodlordmandokir"] = "19724:1259 19895:1336 19866:302 19727:2 19867:595 20038:616 19869:1362 19870:1335 19716:303 19717:238 19718:283 19873:1233 19719:616 19872:36 19720:691 19874:649 19721:622 19878:1290 19877:1262 19893:1394 19723:1403 19863:1278 19722:1140",
	["broodlordlashlayer"] = "16965 16919 16906 19341 19373 19374 16941 16957 20383 16927 16912 16898 19350 19351 16949 19342",
	["chromaggus"] = "19352 19385 19386 16953 19387 19388 16924 19389 16832 19390 19391 19392 19393 19347 16945 16961 19349 16932 16917 16902 19361 16937",
	["ebonroc"] = "19368 19353 16920 19355 16907 19403 16940 16956 19406 19407 16928 16913 15416 19394 16899 19395 19396 16948 19397 16964 19345 19405",
	["emeriss"] = "20579 20644 20617 20621 20580 20599 20618 20622 20581 20615 20619 20623 20582 20616 20624",
	["firemaw"] = "19399 19353 19400 19401 19355 19402 16907 16940 16956 19344 19343 16928 16913 15416 19394 16899 19395 19396 19365 19397 16948 16964 19398 16920",
	["flamegor"] = "19430 19353 16920 19432 19355 19433 16907 19357 16940 16956 16928 16913 15416 19394 16899 19395 19396 19431 19397 16964 19367 16948",
	["gahzranka"] = "19944:90 19945:892 19946:3234 19947:3023",
	["garr"] = "16834 18291 18292 18861 16846 17105 16854 16795 18564 16866 18820 18821 18822 18823 18824 18259 19142 19143 19144 17066 18264 18832 17071 16821 17011 18257 18265 18252 16808 16842 19136 18260 18829 16813 16807 16814",
	["gehennas"] = "18252 16812 18872 18875 21371 18878 18861 18257 16803 16801 17077 18879 16849 18291 18265 18292 19145 18259 19146 18260 19147 18264 16823 16839 18870 16826 16860 16862",
	["golemaggtheincinerator"] = "16834 16841 18291 18292 16847 16845 17103 16853 16798 16800 16865 18252 18820 18821 18822 18823 16808 16809 18259 19142 19143 18829 16815 18265 16820 17011 18257 18824 17203 18842 18264 18260 19136 19144 18861 16842 16833 17072",
	["grilek"] = "19961:4085 19962:4745",
	["hakkar"] = "19855:1270 20264:828 19852:689 19856:1315 19876:1139 19864:796 19853:701 19857:1260 19861:780 19865:192 19854:703 19859:828 19802:6781 20257:446 19862:1165",
	["hazzarah"] = "19967:4973 19968:3324",
	["highpriestessarlokk"] = "19720:1351 19724:271 19717:630 19721:1546 19718:637 19909:456 19913:1497 19722:284 19912:1480 19910:189 19719:1273 19723:308 19922:1463 19716:740 19914:1446",
	["highpriestessjeklik"] = "19724:231 19928:259 19915:1173 19716:1065 19918:295 19717:1132 19718:1063 19920:1236 19719:542 20262:444 19720:604 19721:588 19923:1299 19722:209 20265:705 19723:243",
	["highpriestessmarli"] = "19720:1393 19919:1506 19927:352 19721:1433 19871:1417 19724:226 19718:655 19722:250 20032:370 19925:1368 19719:1302 19723:235 19717:657 19716:646 19930:1573",
	["highpriestthekal"] = "19724:270 19896:312 19897:547 19898:1452 19899:1488 19901:1404 19716:595 19717:634 20260:499 19718:644 19719:1394 19720:1657 19721:1381 19722:243 19723:193 20266:830 19902:75",
	["highpriestvenoxis"] = "19720:615 19724:225 19717:1034 19721:524 19905:1210 19904:268 19718:1059 19722:217 19906:1231 19903:252 19719:562 19723:189 19907:1298 19716:1105 19900:1222",
	["jindothehexxer"] = "19724:1191 19929:1170 19884:753 19885:595 19886:1319 19716:310 19887:1287 19717:297 19888:1426 19718:187 19889:1119 19719:658 19890:779 19875:1462 19891:618 19721:707 19892:1359 19722:1453 19723:1366 19894:1381 19720:602",
	["lethon"] = "20625 20579 20626 20580 20627 20581 20628 20582 20629 20630 20615 20616 20617 20618 20619 20644",
	["lordkazzak"] = "19135 18543 21371 18544 19133 17112 18665 19134 17113 17111 18546 18204",
	["lucifron"] = "18872 16811 16859 18875 21371 17109 18861 18257 18252 18878 18291 18879 16863 18260 16665 18292 19145 16805 19146 16837 19147 18264 18259 18265 18870 17077 16800 16829",
	["magmadar"] = "16835 18291 18292 18861 16847 16855 16796 16798 18252 18821 18822 18823 18824 18259 19142 19143 17065 16814 18264 18265 17069 17073 16822 18257 21371 18829 16810 19136 16829 16843 18260 18820 18203 19144",
	["majordomoexecutus"] = "18805 18809 18806 19140 18803 18811 18810 19139 18703 18812 18808 18646",
	["nefarian"] = "16950 16966 16905 19356 16923 19375 16942 19376 19377 16958 19378 19363 19379 19364 16931 16916 19381 19360 19382 16897 19380",
	["onyxia"] = "18422 18423 17075 16921 18813 18488 17078 16908 16955 17064 17067 17068 16929 16914 16900 16947 16963 15410 18705 18205 16939",
	["ragnaros"] = "17106 19137 17107 19138 16922 16938 18814 17063 18815 16909 18816 18817 17082 17982 17076 16954 16930 16946 16962 17102 16901 19017 17204 17104 16915",
	["razorgoretheuntamed"] = "16904 19335 16926 19334 16935 19369 16943 16951 19336 19370 16959 16918 19337 16911 16934",
	["renataki"] = "19963:4701 19964:4024",
	["shazzrah"] = "18872 16811 18875 21371 18861 16831 18257 16801 18259 18879 16804 18291 16824 18292 19145 19146 16852 18252 19147 18264 18260 18265 18870 16803 17077 18878",
	["sulfuronharbinger"] = "17077 16848 19147 16823 18870 17074 16868 19146 16816 18875 18879 19145 18872 18861 18878",
	["taerar"] = "20579 20616 20617 20619 20580 20644 20633 20577 20581 20615 20634 20632 20582 20631 20618",
	["vaelastraszthecorrupt"] = "16960 16818 19372 19346 19348 19339 19340 16903 16936 16925 16944 16933 16952 19371 16910",
	["wushoolay"] = "199933874 19965:4702",
	["ysondre"] = "20639 20578 20579 20580 20581 20582 20615 20616 20617 20618 20619 20635 20636 20637 20638 20644",

	baronkazum = "20151:4824 20688:2442 20687:2925 20868:2533",
	lordskwol = "20515:4631 20685:2949 20684:3157 20683:2477",
	highmarshalwhirlaxis = "20515:4150 20691:2514 20630:2709 20689:2615",
	princeskaldrenox = "20515:4769 20682:2322 20681:2932 20680:2707",
	princesshuhuran = "20932:7066 20928:6631 21620:1176 21619:1114 21618:1087 21621:1083 21617:1053 21616:569 21237:448 21232:407 20728:137 20734:117 20731:116 20932:7066 20928:6631 21620:1176 21619:1114 21618:1087 21621:1083 21617:1053 21616:569 21237:448 21232:407 20728:137 20734:117 20731:116",
	buruthegorger = "20884:2571 20888:2534 21488:1698 21491:1614 21489:1572 21490:1504 20889:939 20885:918 20886:847 20890:843 21485:791 21302:741 21303:618 21306:616 21214:613 21287:607 21284:600 21281:590 21279:584 21298:583 21295:573 21300:567 21280:564 21307:563 21304:541 21285:532 21282:502 21299:501 21486:500 21296:485 21297:485 21283:458 21294:458 21288:362 21487:315 21290:283 21289:270 21291:269 21292:200 21293:200 20728:107 20886:847 20890:843 21485:791 21486:500 21487:315 20884:2571 20888:2534 21488:1698 21491:1614 21489:1572 21490:1504 20889:939 20885:918 21302:741 21303:618 21306:616 21214:613 21287:607 21284:600 21281:590 21279:584 21298:583 21295:573 21300:567 21280:564 21307:563 21304:541 21285:532 21282:502 21299:501 21296:485 21297:485 21283:458 21294:458 21288:362 21290:283 21289:270 21291:269 21292:200 21293:200 20728:107",
	emperorveklor = "20930:7485 21600:1343 21602:1310 21599:1302 21601:1286 21598:1107 20735:694 21597:661 21232:432 21237:337 20930:7485 21600:1343 21602:1310 21599:1302 21601:1286 21598:1107 21597:661 21232:432 21237:337 20735:694",
	moam = "20886:3467 20890:3278 21474:1604 21468:1542 21470:1447 21477:1445 21473:1417 21469:1404 21455:1362 21475:957 20888:871 21472:787 20884:769 21471:692 21467:690 21479:686 22220:678 21476:669 21302:581 21303:576 21284:572 21279:556 21280:554 21214:547 21299:534 21304:533 21298:527 21297:517 21287:501 21285:498 21306:480 21282:479 21281:466 21307:460 21300:455 21294:439 21296:413 21283:412 21295:392 21289:323 21288:313 21290:289 21293:199 21291:197 21292:178 20886:3467 20890:3278 21472:787 21471:692 21467:690 21479:686 21474:1604 21468:1542 21470:1447 21477:1445 21473:1417 21469:1404 21455:1362 21475:957 20888:871 20884:769 22220:678 21476:669 21302:581 21303:576 21284:572 21279:556 21280:554 21214:547 21299:534 21304:533 21298:527 21297:517 21287:501 21285:498 21306:480 21282:479 21281:466 21307:460 21300:455 21294:439 21296:413 21283:412 21295:392 21289:323 21288:313 21290:289 21293:199 21291:197 21292:178",
	maexxna = "22357:7947 22364:5139 22371:4981 22947:2447 22807:1601 23220:1539 22804:1518 22954:1373 22357:7947 22364:5139 22371:4981 22947:2447 22807:1601 23220:1539 22804:1518 22954:1373",
	gluth = "22981:2112 23075:1864 22813:1773 22994:1512 22983:1317 22369:1017 22368:978 22370:900 22356:860 22365:808 22361:730 22372:704 22358:704 22354:613 22362:587 22363:561 22355:508 22981:2112 23075:1864 22813:1773 22994:1512 22983:1317 22369:1017 22368:978 22370:900 22356:860 22365:808 22361:730 22372:704 22358:704 22354:613 22362:587 22363:561 22355:508",
	grobbulus = "22361:3123 22354:2897 22368:2424 22968:2266 22803:1747 22810:1747 22988:1702 22967:1556 22361:3123 22354:2897 22368:2424 22968:2266 22803:1747 22810:1747 22988:1702 22967:1556",
	lordkri = "21680:2014 21695:1877 21685:1809 21696:1536 21603:1519 21681:1451 21692:1314 21694:1177 21693:1075 21697:1058 21237:461 21232:341 21680:2014 21695:1877 21685:1809 21696:1536 21603:1519 21681:1451 21692:1314 21694:1177 21693:1075 21697:1058 21237:461 21232:341",
	princessyauj = "21687:2069 21682:2041 21686:1914 21697:1681 21694:1493 21692:1482 21696:1438 21695:1112 21693:968 21683:929 21684:520 21232:326 21237:321 20731:183 20729:144 20736:127 21687:2069 21682:2041 21686:1914 21697:1681 21694:1493 21692:1482 21696:1438 21695:1112 21693:968 21683:929 21684:520 21232:326 21237:321 20731:183 20729:144 20736:127",
	patchwerk = "22368:3130 22361:3102 22354:2664 22820:2188 22961:1855 22815:1627 22818:1627 22960:1618 22368:3130 22361:3102 22354:2664 22820:2188 22961:1855 22815:1627 22818:1627 22960:1618",
	ossiriantheunscarred = "21220:8028 20886:3430 20890:3090 21461:1278 21458:1261 21464:1202 21463:1170 21460:1149 21462:1138 21456:1065 21457:1064 21452:912 20888:833 21306:832 21214:818 21280:812 21302:808 20884:802 21287:786 21285:781 21284:756 21279:749 21299:726 21453:719 21281:680 21298:679 21282:674 21303:674 21307:674 21296:668 21459:666 21297:665 21304:617 21300:615 21294:588 21283:578 21288:571 21715:569 21289:516 21295:503 21290:461 21454:416 21291:297 21293:290 21292:272 21220:8028 20886:3430 20890:3090 21461:1278 21458:1261 21464:1202 21463:1170 21460:1149 21462:1138 21456:1065 21457:1064 21452:912 21453:719 21459:666 21715:569 21454:416 20888:833 21306:832 21214:818 21280:812 21302:808 20884:802 21287:786 21285:781 21284:756 21279:749 21299:726 21281:680 21298:679 21282:674 21303:674 21307:674 21296:668 21297:665 21304:617 21300:615 21294:588 21283:578 21288:571 21289:516 21295:503 21290:461 21291:297 21293:290 21292:272",
	ayamissthehunter = "20888:2748 20884:2644 21480:1629 21483:1612 21484:1554 21481:1105 20885:1069 21478:965 20889:855 20890:845 20886:782 21297:689 21279:672 21280:632 21298:616 21214:605 21479:599 21303:599 21287:591 21306:564 21302:553 21282:549 21304:545 21296:514 21482:508 21285:497 21294:485 21300:483 21284:462 21299:449 21281:443 21307:420 21295:395 21288:389 21283:385 21290:358 21289:308 21291:268 21466:233 21293:221 21292:181 21478:965 20890:845 20886:782 21479:599 21466:233 20888:2748 20884:2644 21480:1629 21483:1612 21484:1554 21481:1105 20885:1069 20889:855 21297:689 21279:672 21280:632 21298:616 21214:605 21303:599 21287:591 21306:564 21302:553 21282:549 21304:545 21296:514 21482:508 21285:497 21294:485 21300:483 21284:462 21299:449 21281:443 21307:420 21295:395 21288:389 21283:385 21290:358 21289:308 21291:268 21293:221 21292:181",
	cthun = "21221:8697 20933:8206 20929:7760 22731:1629 21582:1412 21583:1403 21579:1338 21581:1266 21596:1237 21586:1223 21585:1198 22732:1177 22730:1175 21134:670 21126:612 21839:456 21221:8697 20933:8206 20929:7760 22731:1629 21582:1412 21583:1403 21579:1338 21581:1266 21596:1237 21586:1223 21585:1198 22732:1177 22730:1175 21134:670 21126:612 21839:456",
	thaddius = "22360:5518 22367:5418 22353:4960 23070:2351 23001:1853 22801:1335 22808:1116 23000:896 22360:5518 22367:5418 22353:4960 23070:2351 23001:1853 22801:1335 22808:1116 23000:896",
	loatheb = "22359:7286 22366:5762 22352:4647 23042:2602 23038:2454 23039:1413 23037:1115 22800:818 22359:7286 22366:5762 22352:4647 23042:2602 23038:2454 23039:1413 23037:1115 22800:818",
	generalrajaxx = "20889:3562 20885:3416 21496:1637 21497:1549 21494:1486 21495:1467 21492:921 20888:831 20884:805 21493:798 21287:613 21298:612 21304:609 21299:595 21307:588 21214:586 21306:582 21285:579 21284:570 21297:557 21300:553 21303:547 21279:532 21296:524 21280:517 21302:517 21282:484 21294:482 21281:464 21295:449 21283:432 21288:384 21290:360 21289:313 21291:232 21292:193 21293:181 21492:921 21493:798 20889:3562 20885:3416 21496:1637 21497:1549 21494:1486 21495:1467 20888:831 20884:805 21287:613 21298:612 21304:609 21299:595 21307:588 21214:586 21306:582 21285:579 21284:570 21297:557 21300:553 21303:547 21279:532 21296:524 21280:517 21302:517 21282:484 21294:482 21281:464 21295:449 21283:432 21288:384 21290:360 21289:313 21291:232 21292:193 21293:181",
	noththeplaguebringer = "22363:3157 22356:3152 22370:2657 22816:1598 23030:1471 23029:1422 23028:1387 23031:1299 23006:1152 23005:250 22363:3157 22356:3152 22370:2657 22816:1598 23030:1471 23029:1422 23028:1387 23031:1299 23006:1152 23005:250",
	kurinnaxx = "20885:2921 20889:2849 21500:1398 21502:1311 21503:1308 21501:1258 20888:757 20884:744 21499:705 21498:697 21302:280 21287:256 21280:255 21285:254 21299:253 21306:246 21298:245 21214:242 21303:240 21279:239 21297:238 21284:234 21295:234 21304:232 21307:230 21300:226 21282:217 21296:211 21281:208 21294:204 21283:188 21290:156 21289:145 21288:144 21293:102 21499:705 21498:697 20885:2921 20889:2849 21500:1398 21502:1311 21503:1308 21501:1258 20888:757 20884:744 21302:280 21287:256 21280:255 21285:254 21299:253 21306:246 21298:245 21214:242 21303:240 21279:239 21297:238 21284:234 21295:234 21304:232 21307:230 21300:226 21282:217 21296:211 21281:208 21294:204 21283:188 21290:156 21289:145 21288:144 21293:102",
	kelthuzad = "22520:8158 22819:4211 23062:4211 23067:3947 23577:3947 23059:3421 23066:3158 22798:2895 23057:2368 23064:1842 22799:1579 22812:1579 23063:1053 23056:789 22520:8158 22819:4211 23062:4211 23067:3947 23577:3947 23059:3421 23066:3158 22798:2895 23057:2368 23064:1842 22799:1579 22812:1579 23063:1053 23056:789",
	emperorveknilash = "20926:7590 21605:1427 21608:1311 21609:1219 21604:1203 21606:881 21679:777 20726:645 21232:629 21237:505 21607:364 20926:7590 21605:1427 21608:1311 21609:1219 21604:1203 21606:881 21679:777 21232:629 21237:505 21607:364 20726:645",
	ouro = "20931:8166 20927:7557 21615:2301 21611:2135 21610:1270 21237:641 23557:613 23558:414 23570:386 21232:373 20734:146 20728:130 20731:110 20931:8166 20927:7557 21615:2301 21611:2135 21610:1270 21237:641 23557:613 23558:414 23570:386 21232:373 20734:146 20728:130 20731:110",
	anubrekhan = "22362:3166 22369:3030 22355:2895 22935:1858 22939:1736 22938:1666 22937:1640 22936:1474 22362:3166 22369:3030 22355:2895 22935:1858 22939:1736 22938:1666 22937:1640 22936:1474",
	vem = "21688:1617 21689:1555 21690:1389 21691:1380 21696:1293 21695:1260 21694:1157 21697:1129 21693:1111 21692:1073 21232:507 21237:450 20734:122 20728:114 20727:108 20730:105 20731:101 21688:1617 21689:1555 21690:1389 21691:1380 21696:1293 21695:1260 21694:1157 21697:1129 21693:1111 21692:1073 21232:507 21237:450 20734:122 20728:114 20727:108 20730:105 20731:101",
	battleguardsartura = "21675:1194 21678:1190 21676:1189 21670:1173 21671:1116 21674:1103 21669:1089 21672:1081 21648:968 21667:729 21673:612 21666:562 21232:389 21237:386 21668:367 21677:272 21675:1194 21678:1190 21676:1189 21670:1173 21671:1116 21674:1103 21669:1089 21672:1081 21648:968 21667:729 21673:612 21666:562 21232:389 21237:386 21668:367 21677:272 20731:100",
	instructorrazuvious = "22365:2981 22358:2948 22372:2910 23014:1590 23018:1486 23017:1467 23009:1377 23004:1368 23219:1321 22365:2981 22358:2948 22372:2910 23014:1590 23018:1486 23017:1467 23009:1377 23004:1368 23219:1321",
	viscidus = "20932:8271 20928:7867 21625:1974 22399:1369 21626:951 21622:922 21677:807 21232:634 21624:418 21623:375 21648:346 21237:288 20730:173 20729:101 20932:8271 20928:7867 21625:1974 22399:1369 21626:951 21622:922 21677:807 21232:634 21624:418 21623:375 21648:346 21237:288 20730:173 20729:101",
	sapphiron = "23548:8592 23545:5775 23050:4366 23547:4085 23045:2958 23242:2535 23046:2394 23043:1831 23041:1549 23047:1549 23549:563 23048:423 23548:8592 23545:5775 23050:4366 23547:4085 23045:2958 23242:2535 23046:2394 23043:1831 23041:1549 23047:1549 23549:563 23048:423",
	gothiktheharvester = "22372:4444 23023:2963 22365:2840 22358:2469 23073:1728 23021:1646 23032:1605 23020:1111 22372:4444 23023:2963 22365:2840 22358:2469 23073:1728 23021:1646 23032:1605 23020:1111",
	theprophetskeram = "21708:1181 21707:1137 21706:1134 21700:1070 21702:1065 21699:1056 21698:1033 21701:1024 21814:991 21704:700 21703:614 21128:604 22222:597 21705:301 21237:152 21232:115 20728:101 21708:1181 21707:1137 21706:1134 21700:1070 21702:1065 21699:1056 21698:1033 21701:1024 21814:991 21704:700 21703:614 21128:604 21705:301 21237:152 21232:115 22222:597 20728:101",
	grandwidowfaerlina = "22369:3162 22355:3120 22362:2577 22942:2137 22940:1931 22806:1677 22941:1649 22943:1595 22369:3162 22355:3120 22362:2577 22942:2137 22940:1931 22806:1677 22941:1649 22943:1595",
	heigantheunclean = "22370:3570 22356:2814 22363:2511 23035:1982 23036:1967 23033:1831 23068:1619 23019:968 22370:3570 22356:2814 22363:2511 23035:1982 23036:1967 23033:1831 23068:1619 23019:968",
	fankrisstheunyielding = "21645:1308 21651:1272 21647:1215 21639:1211 21664:1184 21665:1164 21663:1120 21627:1057 21652:1050 21635:632 21650:599 22402:494 21237:467 21232:388 22396:237 20728:103 21645:1308 21651:1272 21647:1215 21639:1211 21664:1184 21665:1164 21663:1120 21627:1057 21652:1050 21635:632 21650:599 22402:494 21237:467 21232:388 22396:237 20728:103",

}


local lib = {}


-- Return the library's current version
function lib:GetLibraryVersion()
	return vmajor, vminor
end


-- Activate a new instance of this library
function lib:LibActivate(stub, oldLib, oldList)
	self.dataset = t
	t = nil
	PeriodicTableEmbed:GetInstance(coremajor):AddModule(setname, self.dataset, self.memuse)
end

lib.memuse = gcinfo() - mem


--------------------------------
--      Load this bitch!      --
--------------------------------
PeriodicTableEmbed:Register(lib)
