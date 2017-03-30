//Maya ASCII 2016 scene
//Name: rig_cradle_template.ma
//Last modified: Wed, Dec 14, 2016 05:05:47 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "476DEDB4-431A-8E68-70C0-629ECF9B6F12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 62.66891922090997 181.96774349294466 409.99863705285122 ;
	setAttr ".r" -type "double3" -8.138352716457435 -1430.5999999999087 2.0149024605329793e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6CA3973B-473F-8712-81E9-76B6F25C529C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 407.53765295786297;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 22.106714252747189 122.88011859385625 30.469174233311165 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3A16E675-497F-B8AC-ED6F-AA9A0BB8FC69";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E4F926C6-47AB-3DE7-4A2F-3496609132DE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "843CE969-483A-02D6-B117-E2AC8C70E6AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "16807320-4E6C-57C5-7728-5A83BBD9544D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2B1BF4D8-4C40-E4C5-41C2-8C99372C41B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 15.153142681321347 4.0827656357992934 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1FD8F505-4AA4-FB4F-C858-36B7D219A150";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 56.602836331770533;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root_jnt";
	rename -uid "887F6FC9-495F-F779-AF9F-399E59202AB9";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 183;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine01_jnt" -p "root_jnt";
	rename -uid "F6A3193C-4925-83A0-BE18-2C96F0E6F9B1";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.7252902993097422e-007 144.46548223495481 0 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".jo" -type "double3" -90 0 90 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0010321741719852007 0.99999946522254857 6.4584020687097357e-005 0
		 -0.062427390520958317 2.21099791808399e-008 -0.99804950824733296 0 -0.99804897451438845 -0.0010341927366563921 0.062427357113376103 0
		 3.7252902993097422e-007 144.46548223495481 -6.8565800786018034 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 159;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine02_jnt" -p "spine01_jnt";
	rename -uid "B540AB7B-43FF-F07D-E7B6-6D84A8CA266C";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 15.777186056913848 -4.4408920985006262e-015 -2.2204460492503131e-016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0010321741719852007 0.99999946522254857 6.4584020687097357e-005 0
		 -0.062427390520958317 2.21099791808399e-008 -0.99804950824733296 0 -0.99804897451438845 -0.0010341927366563921 0.062427357113376103 0
		 -0.016284431425521075 160.2426598545853 -6.855561124491115 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 160;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "chest_jnt" -p "spine02_jnt";
	rename -uid "807A3799-4B5D-E7AD-E120-DEACCCFEE2F3";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 14.100293717109679 -1.7718179989856253e-007 -1.1102230246251565e-015 ;
	setAttr ".jo" -type "double3" 0 0 4.7076040566910198 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.006152156611000709 0.9966259723453037 -0.081846332940528621 0
		 -0.062132080601016972 -0.082070711536830043 -0.9946878921893173 0 -0.99804897451438845 -0.0010341927366563921 0.062427357113376103 0
		 -0.030838379356728361 174.34294603117584 -6.854650293993787 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 161;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "neck_jnt" -p "chest_jnt";
	rename -uid "064D3AB4-45BA-D8BB-17E0-A09EE016D537";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 37.774494477144316 -2.042810365310288e-014 -3.1086244689504383e-015 ;
	setAttr ".r" -type "double3" 0 0 9.5416640443905503e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999978 ;
	setAttr ".jo" -type "double3" 0 0 -23.408490965649577 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.019038266836199923 0.94720480107657712 0.32006344560626526 0
		 -0.059462499667027081 0.32062750234947823 -0.94533709113230247 0 -0.99804897451438823 -0.0010341927366563919 0.062427357113376089 0
		 -0.26323298528149713 211.98998831931209 -9.9463541456302806 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 162;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "89B17C7D-4832-57BE-3F7A-C19E51E572E8";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 13.826643418414506 1.4210854715202004e-013 7.7715611723760958e-016 ;
	setAttr ".r" -type "double3" -9.1937908761054616e-016 -6.7586786981099735e-015 -2.5677388234041889e-014 ;
	setAttr ".jo" -type "double3" 0 0 18.700888175767741 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 5.622672466509826e-016 0.99999999999999967 -4.5644911461639737e-016 0
		 -4.649058915617843e-016 -2.3924276188608262e-016 -0.99999999999999944 0 -0.99999999999999967 4.5146178462296405e-016 4.5102810375396984e-016 0
		 2.3415672564808254e-006 225.08665134800822 -5.5209510119634784 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 163;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_shoulder_jnt" -p "chest_jnt";
	rename -uid "76ED34E9-4CF7-1ECE-770C-BCB3358BB8A0";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 25.43798128290581 0.9683230019495852 -0.60002613772099145 ;
	setAttr ".r" -type "double3" -1.6618398210646866e-013 3.1557065980145771e-015 -3.1805546814635195e-015 ;
	setAttr ".jo" -type "double3" 65.929230855274326 83.334210932255246 61.067730654600609 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99324013581951698 0.047628497776235811 -0.10585631203101091 0
		 -0.10598385990293273 0.00015350554154929468 -0.99436783831544151 0 -0.047343996845462553 0.99886510732712464 0.0052003199006410246 0
		 0.60002651025003428 199.61565732955938 -9.9093511700629779 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 198;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_upperarm_jnt" -p "l_shoulder_jnt";
	rename -uid "5DA07B47-4E6A-4210-F871-ACB602BD97F1";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 19.869075715541896 0.00011622908504982377 2.3841872319962931e-005 ;
	setAttr ".r" -type "double3" 2.750384663998252e-012 -1.2960753530607741e-013 -2.8316222477299722e-006 ;
	setAttr ".jo" -type "double3" 8.5674843460849726 44.757747650146499 -7.0030503273010263 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.74253940438860189 -0.66975673487768328 0.0078197836418525974 0
		 0.11548247763738057 0.11651461274024963 -0.98645230111583271 0 0.65977195324517446 0.73338275211786574 0.16386185830471045 0
		 20.334776525386516 200.56201539074911 -12.01273369925384 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 199;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_forearm_jnt" -p "l_upperarm_jnt";
	rename -uid "729296F6-440E-16AA-BCAA-568C09A55CAF";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 39.590032238086934 4.1248352573575175e-006 1.2365405069658664e-005 ;
	setAttr ".r" -type "double3" 1.1835429274722443e-009 -6.120053458278291e-013 6.4525756107138176e-006 ;
	setAttr ".jo" -type "double3" -8.5376018043166696e-006 -0.0033724063545183406 -21.102131293270265 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.65120631985819677 -0.66674870842742229 0.36245894772664777 0
		 0.37507572534198896 -0.13243247971713673 -0.9174856067400462 0 0.6597336805377797 0.73342197821331689 0.16384038768795761 0
		 49.731944952036741 174.04633346204952 -11.703150246745118 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 200;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_hand_jnt" -p "l_forearm_jnt";
	rename -uid "033CEC03-4DBD-817C-13C2-CCB7875E9522";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 35.436648534581018 9.2507642523997902e-006 -9.4612288989992521e-006 ;
	setAttr ".r" -type "double3" 7.654737419163743e-007 -6.0338962951478927e-011 1.0670931246033052e-005 ;
	setAttr ".jo" -type "double3" 0.00097417161498369984 12.204476356421871 0.33744077919534787 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49916827394294538 -0.80747707579609485 0.31434345285469012 0
		 0.37124721304029346 -0.12849348144583919 -0.9196004197670542 0 0.78294734248136755 0.57573448506209535 0.23563374463698639 0
		 72.808511916698961 150.41898539378784 1.1411701973976154 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 201;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_thumb01_jnt" -p "l_hand_jnt";
	rename -uid "2D57A099-4F44-CCB1-A785-9AAA13327909";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5477936851268339 -2.8080513915072594 -0.781548173590636 ;
	setAttr ".r" -type "double3" -4.3431758077501995e-007 -2.9027654065948982e-007 2.8115497280433945e-007 ;
	setAttr ".jo" -type "double3" 166.07877575456004 23.642936780476706 -49.328320149952908 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.273916761505902 -0.62369316920363671 0.73210411722298274 0
		 -0.42554390978110895 0.76124601877955156 0.48930244199318179 0 -0.86248593531392004 -0.17751430810221369 -0.47392687390004185 0
		 72.925064121238009 147.46507614256649 4.6545220299964924 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 413;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_thumb02_jnt" -p "l_thumb01_jnt";
	rename -uid "16747640-492E-3FE3-543A-D88A88786500";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.5743123383835353 2.7353550535735849e-008 2.8240947358426638e-008 ;
	setAttr ".r" -type "double3" 0 0 2.8115496534304264e-007 ;
	setAttr ".jo" -type "double3" 0 0 -13.052124291558391 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.1707364021399233 -0.77949787549474014 0.6026874339850643 0
		 -0.47641063419070317 0.60072600452966873 0.64199779992756389 0 -0.8624859353139197 -0.17751430810221361 -0.47392687390004162 0
		 71.398166537885686 143.9884156141091 8.735499043613947 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 414;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_thumb03_jnt" -p "l_thumb02_jnt";
	rename -uid "B42C7379-442D-5546-5F31-71B4F3A4C9BE";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.3313718818291704 0.44598392218619409 2.6008919462583435e-008 ;
	setAttr ".r" -type "double3" 0 0 2.8115497011387466e-007 ;
	setAttr ".jo" -type "double3" 0 0 -8.6515494820333902 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.097129658102292279 -0.86099244840662048 0.49925728167319239 0
		 -0.49667277044610109 0.47663473877358764 0.72535197310797206 0 -0.8624859353139197 -0.17751430810221361 -0.47392687390004162 0
		 70.446172212996672 140.88003455943098 11.632283133228951 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 415;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_thumbtip_jnt" -p "l_thumb03_jnt";
	rename -uid "B79D2ECD-4DB1-2183-476C-00ABA1AF8BCF";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.2770215312447419 3.5527136788005009e-014 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.097129658102292279 -0.86099244840662048 0.49925728167319239 0
		 -0.49667277044610109 0.47663473877358764 0.72535197310797206 0 -0.8624859353139197 -0.17751430810221361 -0.47392687390004162 0
		 69.933616915868413 136.33655887095014 14.266874558249134 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 415;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_index01_jnt" -p "l_hand_jnt";
	rename -uid "4FF9D336-431D-3B07-7635-8CB15E26D79B";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.690634924841618 -3.6663938265384086 1.071417019854465 ;
	setAttr ".r" -type "double3" -2.6160703663378649e-007 -1.1142188956103076e-008 -5.3233257939913705e-007 ;
	setAttr ".jo" -type "double3" 80.097914075642464 -8.4360363194283252 -6.1369749172346513 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56654111571088561 -0.69611162237977608 0.44097593289981385 0
		 0.76960062699231291 0.63824926024803708 0.01878181902460499 0 -0.29452680547295529 0.32873468174293707 0.89732238904268147 0
		 79.120165685435765 140.45207179143807 9.0688109578173517 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 416;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_index02_jnt" -p "l_index01_jnt";
	rename -uid "70E8BB2F-4F6D-E2D1-5C4F-868D36C74863";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.8562502977466551 3.4423266299654642e-006 1.1387939480300702e-009 ;
	setAttr ".r" -type "double3" 0 0 -5.3233258131623138e-007 ;
	setAttr ".jo" -type "double3" 0 0 -0.00020473167379397826 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.5665383657381462 -0.69611390299426179 0.44097586578501802 0
		 0.76960265137579065 0.63824677286882225 0.018783394738117267 0 -0.29452680547295529 0.32873468174293707 0.89732238904268147 0
		 82.43797495409413 136.37547012740129 11.651276461836025 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 417;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_index03_jnt" -p "l_index02_jnt";
	rename -uid "0BC50990-49AA-3212-8050-FF8DCD61BFC3";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.240836105654374 -1.0278751005898812e-006 6.3030114461071207e-010 ;
	setAttr ".r" -type "double3" 0 0 -5.323325808168918e-007 ;
	setAttr ".jo" -type "double3" 0 0 9.6131633693283345e-005 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56653965698708475 -0.69611283213421526 0.44097589729943104 0
		 0.76960170082897594 0.63824794081724401 0.01878265486281978 0 -0.29452680547295529 0.32873468174293707 0.89732238904268147 0
		 84.274032177134515 134.11947842010952 13.0804069506529 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 418;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_indextip_jnt" -p "l_index03_jnt";
	rename -uid "123D81FF-4174-294E-86E2-CD84CA41004A";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.1730748925359009 -2.8421709430404007e-014 -3.1974423109204508e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56653965698708475 -0.69611283213421526 0.44097589729943104 0
		 0.76960170082897594 0.63824794081724401 0.01878265486281978 0 -0.29452680547295529 0.32873468174293707 0.89732238904268147 0
		 86.071704938346116 131.91066027009236 14.479656498587186 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 418;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_middle01_jnt" -p "l_hand_jnt";
	rename -uid "A2FC685A-4DD2-56E6-63B8-C09E857BDA66";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.284103830555495 -0.32489409414899306 -0.27944328080531022 ;
	setAttr ".r" -type "double3" -1.7184821945562288e-007 3.7593997240483622e-009 -5.6779785275903271e-007 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 74.66633650248302 2.2094335411112223 0.95447385432115006 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.47472314339229332 -0.83109957998694584 0.28967468869969232 0
		 0.86926126384337865 0.49431234886828429 -0.0063369501917299176 0 -0.13792313913608872 0.25481128291706984 0.95710418335153213 0
		 79.100108250455662 139.57323853700856 5.549867742263964 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 419;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_middle02_jnt" -p "l_middle01_jnt";
	rename -uid "896F83B7-4097-315F-42CE-29B4D3FFA364";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.8681214865085281 -0.048413045401758836 -2.3981172603271261e-010 ;
	setAttr ".r" -type "double3" 0 0 -5.6779784420565399e-007 ;
	setAttr ".jo" -type "double3" 0 0 -21.967980172609106 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11507441289502618 -0.95567248626677492 0.27101287513612032 0
		 0.98373527292036866 0.14751714846362174 0.10248709051119412 0 -0.13792313913608872 0.25481128291706984 0.95710418335153213 0
		 81.843757794084112 134.67231409641747 7.2500207979481068 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 420;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_middle03_jnt" -p "l_middle02_jnt";
	rename -uid "4B9DB6F8-40F3-192F-369F-5D9FE69D7B37";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.9843946659807585 -3.9485044567300065e-008 4.2280419165763306e-009 ;
	setAttr ".r" -type "double3" 0 0 -25.104424679817061 ;
	setAttr ".jo" -type "double3" 0 0 -0.96389175402430338 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.098509448076615713 -0.95801883049898362 0.26925045784362339 0
		 0.98553188498926192 0.13141967321340123 0.10703164561004949 0 -0.13792313913608872 0.25481128291706984 0.95710418335153213 0
		 82.302259671013942 130.86453773971155 8.3298430520525422 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 421;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_middletip_jnt" -p "l_middle03_jnt";
	rename -uid "B7D9348C-4854-784C-F7C2-F69F2CA75212";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.1727153513702717 1.4210854715202004e-014 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.098509448076615713 -0.95801883049898362 0.26925045784362339 0
		 0.98553188498926192 0.13141967321340123 0.10703164561004949 0 -0.13792313913608872 0.25481128291706984 0.95710418335153213 0
		 82.614802109181653 127.82501668928563 9.184098113016482 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 421;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_ring01_jnt" -p "l_hand_jnt";
	rename -uid "FCD14A65-41B3-9926-ECB6-EA860C75D072";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.502074462004629 2.4843902694288627 -0.7911797636073743 ;
	setAttr ".r" -type "double3" 1.3867010492957968e-008 1.2564065467456634e-007 -5.7962271553097187e-007 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".jo" -type "double3" 63.540881753178482 22.761460753404389 14.533425178854532 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.22855469762705738 -0.97325041481480179 -0.023374778189771905 0
		 0.95028912701651791 0.22824904218910375 -0.2117851501261156 0 0.21145525594505529 0.026191693388812054 0.97703667788401749 0
		 79.352020271988536 139.54911025865999 2.6000404666186707 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 422;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_ring02_jnt" -p "l_ring01_jnt";
	rename -uid "6E8EAE8F-44BD-435A-9F4B-1B88D84CBDBF";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.987408158299516 -6.0570670257220627e-008 -1.3129469067507671e-008 ;
	setAttr ".r" -type "double3" 0 0 -5.7962272985867192e-007 ;
	setAttr ".jo" -type "double3" 0 0 -28.636783353510129 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.25483435730217896 -0.96358761353328104 0.080983710606654977 0
		 0.94358154129444316 -0.26610694512293998 -0.19708112209377113 0 0.21145525594505529 0.026191693388812054 0.97703667788401749 0
		 80.720470533178357 133.72186278492941 2.460086128986795 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 423;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_ring03_jnt" -p "l_ring02_jnt";
	rename -uid "18326F3B-4F0C-DD22-63FC-FEA04F0CB1E9";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.9712430868252113 -3.0058060929150088e-008 -6.0630931386640441e-009 ;
	setAttr ".r" -type "double3" 0 0 -5.7962271713645357e-007 ;
	setAttr ".jo" -type "double3" 0 0 -22.419058639203222 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.59543491869280785 -0.78927160874260993 0.15002528198321341 0
		 0.77507672674032779 -0.61348538925575047 -0.15130018121343963 0 0.21145525594505529 0.026191693388812054 0.97703667788401749 0
		 79.963295710758757 130.85880974966827 2.7007084192722686 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 424;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_ringtip_jnt" -p "l_ring03_jnt";
	rename -uid "B0922225-4176-8EFB-FF0C-D5A4F7FF0231";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7553851003566479 3.5527136788005009e-015 3.5527136788005009e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.59543491869280785 -0.78927160874260993 0.15002528198321341 0
		 0.77507672674032779 -0.61348538925575047 -0.15130018121343963 0 0.21145525594505529 0.026191693388812054 0.97703667788401749 0
		 77.727208288867715 127.89479091006174 3.2641111279088357 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 424;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_pinky01_jnt" -p "l_hand_jnt";
	rename -uid "9EE1686E-4140-9D23-51A9-EAA786E2DF29";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.4378752864199527 4.1583950643234324 -3.106053631380945 ;
	setAttr ".r" -type "double3" 1.4525002342504289e-007 5.3389565554143828e-007 -2.1400508610853574e-007 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 13.942049122284926 29.142094034163158 27.687735601061451 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15544544857140086 -0.95702156651232084 -0.24483960821064094 0
		 0.33081162059705371 0.28397304818885838 -0.89995720986071304 0 0.93080630863589842 0.058898464603355183 0.36073617322217677 0
		 75.134009673759238 142.89796061403314 -1.3910787509360629 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 425;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_pinky02_jnt" -p "l_pinky01_jnt";
	rename -uid "74E6BF91-4CF5-221C-4509-A89500EAFD68";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.6339342956518124 -1.7308238398072717e-008 -4.3180094166928029e-008 ;
	setAttr ".r" -type "double3" 0 0 -2.1400511342241832e-007 ;
	setAttr ".jo" -type "double3" -4.9717369020050362e-017 0 -16.834611880927287 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658814 -0.99824958994113866 0.026289716268057622 0
		 0.36165316091901983 -0.0053597620951758018 -0.93229730459095739 0 0.93080630863589842 0.058898464603355183 0.36073617322217677 0
		 75.854333668997228 138.46318555529331 -2.5256494083572605 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 426;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_pinky03_jnt" -p "l_pinky02_jnt";
	rename -uid "DDC82B37-4326-DE61-EF10-3D9FB1ABE300";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.545411354861983 -9.5073495742781233e-009 -2.4571107815063442e-008 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658814 -0.99824958994113866 0.026289716268057622 0
		 0.36165316091901983 -0.0053597620951758018 -0.93229730459095739 0 0.93080630863589842 0.058898464603355183 0.36073617322217677 0
		 75.989182994720721 135.92222971407082 -2.4587312660524621 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 427;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_pinkytip_jnt" -p "l_pinky03_jnt";
	rename -uid "CFC8D96E-4FEB-5E8A-AFBF-5EB08FF0D566";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.4490797403507827 -2.1316282072803006e-014 1.4210854715202004e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658814 -0.99824958994113866 0.026289716268057622 0
		 0.36165316091901983 -0.0053597620951758018 -0.93229730459095739 0 0.93080630863589842 0.058898464603355183 0.36073617322217677 0
		 76.118928920069351 133.4774368675325 -2.3943456545607669 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 427;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_shoulder_jnt" -p "chest_jnt";
	rename -uid "A9102872-4D15-EAFD-B1CA-A4B1EC1DCD9D";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 25.437981282905866 0.96832300194958698 0.60002688277904725 ;
	setAttr ".r" -type "double3" -2.0673605429512861e-014 1.9083328088781101e-014 3.9756933518293928e-015 ;
	setAttr ".jo" -type "double3" 65.929230855274568 83.334210932255274 -118.93226934539931 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99324013581951676 -0.047628497776235901 0.10585631203101026 0
		 -0.10598385990293212 -0.00015350554155185792 0.99436783831544151 0 -0.047343996845462727 -0.99886510732712452 -0.0052003199006435876 0
		 -0.60002651025000442 199.61565732955944 -9.9093511700629868 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 185;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_upperarm_jnt" -p "r_shoulder_jnt";
	rename -uid "70D201A4-4FC4-D9A9-D6A8-8D823AB43D34";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -19.869075715541911 -0.00011622908503028384 -2.3841872149432675e-005 ;
	setAttr ".r" -type "double3" 3.1153533343568667e-012 -6.9892678488457809e-013 -3.9124819942881868e-006 ;
	setAttr ".jo" -type "double3" 8.5674853149726626 44.757747502939196 -7.0030489512604532 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.74253940638024574 0.66975673286823856 -0.0078197666292118169 0
		 0.1154824648313648 -0.11651462429110386 0.9864523012506865 0 0.65977195324516813 -0.73338275211785975 -0.16386185830475966 0
		 -20.334776525386534 200.56201539074897 -12.012733699253832 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 186;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_forearm_jnt" -p "r_upperarm_jnt";
	rename -uid "F9EE1569-493E-5A9C-F40C-149D6278FDBE";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -39.590032238086607 -4.1248519409009532e-006 -1.2365405666514562e-005 ;
	setAttr ".r" -type "double3" 2.2622591230347429e-010 4.2466962066644518e-013 9.5726346622484951e-006 ;
	setAttr ".jo" -type "double3" -8.5364849680548039e-006 -0.0033724063549350957 -21.10213441286411 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.65120630590503248 0.6667487035008266 -0.36245898185793107 0
		 0.37507574957889295 0.13243250450806138 0.91748559325340551 0 0.65973368053128234 -0.73342197821560351 -0.16384038770388132 0
		 -49.73194495203677 174.04633346204952 -11.703150246745123 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 187;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_hand_jnt" -p "r_forearm_jnt";
	rename -uid "D9833D7B-4D2E-D484-CBCF-DDBAB085914B";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -35.436648534581202 -9.250635672586327e-006 9.4612290979512181e-006 ;
	setAttr ".r" -type "double3" 1.1965628400031715e-006 -9.4291866642295415e-011 4.6330162584542512e-013 ;
	setAttr ".jo" -type "double3" 0.0009759999227612079 12.204476356278022 0.33744616918132042 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49916822544119166 0.80747705900760447 -0.31434357299986493 0
		 0.37124729383995547 0.12849357548234716 0.91960037400833605 0 0.78294733509119285 -0.57573448762097967 -0.23563376294030214 0
		 -72.808511916698961 150.41898539378784 1.1411701973975958 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 188;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_pinky01_jnt" -p "r_hand_jnt";
	rename -uid "1E548A84-498D-83D0-4234-C1978BE91776";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.4378755126748501 -4.1583962091674884 3.106053314083681 ;
	setAttr ".r" -type "double3" 2.2703435978760848e-007 8.3451030320748317e-007 -3.3450256479931463e-007 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 13.942047966142518 29.142094564146991 27.687742523677318 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15544544857140097 0.95702156651232051 0.24483960821064046 0
		 0.33081162059705416 -0.28397304818885777 0.8999572098607127 0 0.93080630863589742 -0.058898464603354905 -0.36073617322217727 0
		 -75.134009673759209 142.89796061403311 -1.3910787509360665 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 394;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_pinky02_jnt" -p "r_pinky01_jnt";
	rename -uid "5583F05F-4C8E-FEDA-1C39-669532CC7B78";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.6339342956517413 2.7053715712099802e-008 6.7493104438653972e-008 ;
	setAttr ".r" -type "double3" 0 0 -3.3450255850130025e-007 ;
	setAttr ".jo" -type "double3" -4.9717369020050362e-017 0 -16.834611880927291 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658731 0.99824958994113799 -0.026289716268058094 0
		 0.36165316091902033 0.0053597620951763014 0.93229730459095705 0 0.93080630863589764 -0.058898464603354919 -0.36073617322217733 0
		 -75.854333668997171 138.46318555529331 -2.5256494083572685 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 395;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_pinky03_jnt" -p "r_pinky02_jnt";
	rename -uid "2D72BA90-48B1-E4B9-3948-42B5FB5932AC";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.5454113548619546 1.4860546571071609e-008 3.8406057001338922e-008 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658731 0.99824958994113799 -0.026289716268058094 0
		 0.36165316091902033 0.0053597620951763014 0.93229730459095705 0 0.93080630863589764 -0.058898464603354919 -0.36073617322217733 0
		 -75.989182994720665 135.9222297140708 -2.4587312660524883 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 396;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_pinkytip_jnt" -p "r_pinky03_jnt";
	rename -uid "E4A6502C-43F4-1F87-6035-43A44DEFEDC5";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.449079740350669 3.1974423109204508e-014 -5.6843418860808015e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.052977419726658731 0.99824958994113799 -0.026289716268058094 0
		 0.36165316091902033 0.0053597620951763014 0.93229730459095705 0 0.93080630863589764 -0.058898464603354919 -0.36073617322217733 0
		 -76.118928920069322 133.47743686753259 -2.3943456545607695 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 396;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_ring01_jnt" -p "r_hand_jnt";
	rename -uid "F42E4643-4902-C30C-6680-A0A35AA826FB";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.502074917080918 -2.4843922485410577 0.79117944244424621 ;
	setAttr ".r" -type "double3" 2.1674944777723179e-008 1.963837147172717e-007 -9.0598435964348055e-007 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999967 ;
	setAttr ".jo" -type "double3" 63.540880556043625 22.761461039678981 14.533432201319425 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.22855469762705827 0.97325041481480201 0.023374778189771725 0
		 0.95028912701651769 -0.22824904218910402 0.21178515012611554 0 0.2114552559450551 -0.026191693388812332 -0.97703667788401771 0
		 -79.352020271988536 139.54911025865999 2.6000404666186734 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 397;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_ring02_jnt" -p "r_ring01_jnt";
	rename -uid "11DAB710-408C-6B1C-3DD1-21AE04EC47E1";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.9874081582996439 9.4675414175071637e-008 2.0522119115184978e-008 ;
	setAttr ".r" -type "double3" 0 0 -9.0598436922229028e-007 ;
	setAttr ".jo" -type "double3" 0 0 -28.636783353510136 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.25483435730217807 0.96358761353328082 -0.080983710606655088 0
		 0.94358154129444272 0.26610694512293986 0.19708112209377085 0 0.21145525594505504 -0.026191693388812325 -0.97703667788401749 0
		 -80.720470533178471 133.72186278492941 2.4600861289867844 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 398;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_ring03_jnt" -p "r_ring02_jnt";
	rename -uid "1A26E4D1-4A25-5D58-F0C7-5383A50B78F4";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.9712430868251545 4.6982563617348205e-008 9.4769880831790942e-009 ;
	setAttr ".r" -type "double3" 0 0 -9.0598434695840767e-007 ;
	setAttr ".jo" -type "double3" 0 0 -22.419058639203218 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.59543491869280685 0.78927160874260971 -0.15002528198321341 0
		 0.77507672674032779 0.61348538925575025 0.15130018121343933 0 0.21145525594505504 -0.026191693388812325 -0.97703667788401749 0
		 -79.963295710758786 130.85880974966832 2.7007084192722686 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 399;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_ringtip_jnt" -p "r_ring03_jnt";
	rename -uid "19764DE6-4F55-6B21-4202-4B8013C3F36C";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.7553851003567047 -2.1316282072803006e-014 -1.0658141036401503e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.59543491869280685 0.78927160874260971 -0.15002528198321341 0
		 0.77507672674032779 0.61348538925575025 0.15130018121343933 0 0.21145525594505504 -0.026191693388812325 -0.97703667788401749 0
		 -77.727208288867729 127.89479091006174 3.2641111279088486 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 399;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_middle01_jnt" -p "r_hand_jnt";
	rename -uid "0A434210-4B49-B304-A543-D7A52350E5D1";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -13.284104651546997 0.32489200281630204 0.27944290277145001 ;
	setAttr ".r" -type "double3" -2.6860879000091445e-007 5.8761413240592251e-009 -8.8750139807690886e-007 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".jo" -type "double3" 74.666335361372575 2.2094335602030459 0.95448129595956632 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.47472314339229293 0.83109957998694539 -0.28967468869969215 0
		 0.86926126384337765 -0.49431234886828379 0.0063369501917290572 0 -0.13792313913608953 -0.2548112829170695 -0.95710418335153202 0
		 -79.100108250455648 139.57323853700856 5.5498677422639711 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 400;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_middle02_jnt" -p "r_middle01_jnt";
	rename -uid "460FA551-4C3C-FE78-6D51-1794BC3298C9";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.8681214862384223 0.048413078145188138 3.7484326753656205e-010 ;
	setAttr ".r" -type "double3" 0 0 -8.8750142171851046e-007 ;
	setAttr ".jo" -type "double3" 0 0 -21.967980172609135 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11507441289502579 0.95567248626677515 -0.27101287513611999 0
		 0.98373527292036833 -0.14751714846362113 -0.10248709051119503 0 -0.13792313913608958 -0.25481128291706961 -0.95710418335153247 0
		 -81.843757794084084 134.67231409641744 7.2500207979481219 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 401;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_middle03_jnt" -p "r_middle02_jnt";
	rename -uid "F3E82700-43FD-D304-498D-D6B156979B13";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.9843946659807585 6.1717514654446859e-008 -6.6086904837447946e-009 ;
	setAttr ".r" -type "double3" 0 0 -8.8750141973066421e-007 ;
	setAttr ".jo" -type "double3" 0 0 -0.96389175402429383 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.098509448076615505 0.95801883049898384 -0.26925045784362306 0
		 0.98553188498926159 -0.13141967321340078 -0.10703164561005035 0 -0.13792313913608958 -0.25481128291706961 -0.95710418335153247 0
		 -82.302259671013928 130.86453773971152 8.3298430520525422 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 402;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_middletip_jnt" -p "r_middle03_jnt";
	rename -uid "AFEAB87D-4DF7-F3B9-F82E-52BA84B2102B";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.1727153513702717 0 -3.5527136788005009e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.098509448076615505 0.95801883049898384 -0.26925045784362306 0
		 0.98553188498926159 -0.13141967321340078 -0.10703164561005035 0 -0.13792313913608958 -0.25481128291706961 -0.95710418335153247 0
		 -82.614802109181625 127.8250166892856 9.184098113016482 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 402;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_index01_jnt" -p "r_hand_jnt";
	rename -uid "8FE80C0B-41C6-D58B-3E3F-F09A76267D4C";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -13.690636185050565 3.6663916532880041 -1.0714174683413091 ;
	setAttr ".r" -type "double3" -4.0890712958137201e-007 -1.7415957668062874e-008 -8.3206711427991821e-007 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
	setAttr ".jo" -type "double3" 80.097912929343281 -8.4360364412517779 -6.1369672634356629 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56654111571088606 0.69611162237977586 -0.44097593289981329 0
		 0.76960062699231224 -0.63824926024803696 -0.018781819024604879 0 -0.29452680547295496 -0.32873468174293663 -0.89732238904268169 0
		 -79.120165685435751 140.45207179143807 9.0688109578173624 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 403;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_index02_jnt" -p "r_index01_jnt";
	rename -uid "30098286-42DA-998E-C99A-5BBA8A1F44B5";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.8562502977467403 -3.4116904430447903e-006 -1.7800445561988454e-009 ;
	setAttr ".r" -type "double3" 0 0 -8.3206711603717011e-007 ;
	setAttr ".jo" -type "double3" 0 0 -0.00020473167380391741 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56653836573814653 0.69611390299426168 -0.44097586578501746 0
		 0.76960265137578987 -0.63824677286882192 -0.018783394738117229 0 -0.29452680547295496 -0.32873468174293663 -0.89732238904268169 0
		 -82.437974954094173 136.37547012740126 11.651276461836044 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 404;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_index03_jnt" -p "r_index02_jnt";
	rename -uid "45AA7A8C-42BE-B580-07A0-67B247A170CB";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.2408361056542887 1.0448288776387926e-006 -9.8518171398609411e-010 ;
	setAttr ".r" -type "double3" 0 0 -8.3206710380759386e-007 ;
	setAttr ".jo" -type "double3" 0 0 9.6131633695469923e-005 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56653965698708508 0.69611283213421515 -0.44097589729943049 0
		 0.76960170082897517 -0.63824794081724379 -0.018782654862819725 0 -0.29452680547295496 -0.32873468174293663 -0.89732238904268169 0
		 -84.274032177134558 134.11947842010954 13.08040695065289 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 405;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_indextip_jnt" -p "r_index03_jnt";
	rename -uid "F1F16487-4114-4A54-D53D-22ABBFF489F3";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.1730748925358441 1.4210854715202004e-013 3.5527136788005009e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.56653965698708508 0.69611283213421515 -0.44097589729943049 0
		 0.76960170082897517 -0.63824794081724379 -0.018782654862819725 0 -0.29452680547295496 -0.32873468174293663 -0.89732238904268169 0
		 -86.071704938346045 131.91066027009234 14.479656498587143 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 405;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_thumb01_jnt" -p "r_hand_jnt";
	rename -uid "170D273A-4BFB-CB23-A966-71A1A6FA7030";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5477948244363233 2.8080505697518134 0.78154768936636287 ;
	setAttr ".r" -type "double3" -6.7886385228321227e-007 -4.5371932518979192e-007 4.3946178485782548e-007 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".jo" -type "double3" 166.07877494313962 23.64293591557794 -49.32831298973052 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.27391676150590194 0.62369316920363638 -0.73210411722298263 0
		 -0.42554390978110834 -0.76124601877955134 -0.48930244199318162 0 -0.86248593531391893 0.17751430810221286 0.4739268739000414 0
		 -72.925064121238023 147.46507614256646 4.6545220299965191 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 406;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_thumb02_jnt" -p "r_thumb01_jnt";
	rename -uid "A6299D79-49F0-76C0-DF4A-6C920B0A6CC2";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.5743123383835069 -4.275524645436235e-008 -4.4142410615677363e-008 ;
	setAttr ".r" -type "double3" 0 0 4.3946178694073127e-007 ;
	setAttr ".jo" -type "double3" 0 0 -13.052124291558396 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.17073640213992333 0.77949787549473992 -0.60268743398506419 0
		 -0.47641063419070279 -0.60072600452966884 -0.64199779992756389 0 -0.86248593531391915 0.17751430810221289 0.47392687390004151 0
		 -71.398166537885629 143.98841561410907 8.735499043613963 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 407;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_thumb03_jnt" -p "r_thumb02_jnt";
	rename -uid "9F9563EA-4F6A-234B-559D-80B6CEF2FBF4";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.3313718805969614 -0.44598393415373039 -4.0653389987710398e-008 ;
	setAttr ".r" -type "double3" 0 0 4.3946179489211796e-007 ;
	setAttr ".jo" -type "double3" 0 0 -8.6515494820334009 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.097129658102292252 0.86099244840662026 -0.49925728167319205 0
		 -0.4966727704461007 -0.47663473877358753 -0.72535197310797217 0 -0.86248593531391915 0.17751430810221289 0.47392687390004151 0
		 -70.446172212996672 140.88003455943095 11.632283133228992 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 408;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_thumbtip_jnt" -p "r_thumb03_jnt";
	rename -uid "81BA1344-4DEA-CC57-F874-0DBCE537B2C3";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -5.2770215312446851 -1.4210854715202004e-014 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.097129658102292252 0.86099244840662026 -0.49925728167319205 0
		 -0.4966727704461007 -0.47663473877358753 -0.72535197310797217 0 -0.86248593531391915 0.17751430810221289 0.47392687390004151 0
		 -69.933616915868427 136.33655887095014 14.266874558249128 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 408;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hip_jnt" -p "spine01_jnt";
	rename -uid "AA0864CE-4067-5B2C-E6E4-2B88C9D2897C";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -8.5265128291212022e-014 -5.3290705182007514e-015 3.3306690738754696e-016 ;
	setAttr ".jo" -type "double3" 0 180 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.001032174171985323 -0.99999946522254857 -6.4584020687105e-005 0
		 -0.062427390520958317 2.21099791808399e-008 -0.99804950824733296 0 0.99804897451438845 0.0010341927366565146 -0.062427357113376103 0
		 3.7252902993446272e-007 144.46548223495475 -6.856580078601799 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 159;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_thigh_jnt" -p "spine01_jnt";
	rename -uid "128CAE71-41BC-6033-7923-60BD5A68074A";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -7.1251392364500816 1.5366837382316625 -11.19998693466186 ;
	setAttr ".r" -type "double3" 1.6002165726302708e-014 9.9392357640820126e-016 -1.7075472998830688e-006 ;
	setAttr ".jo" -type "double3" 0.64687974077491006 174.48561667169889 7.8733277776602444 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.096095629876918554 -0.98598906659760621 0.13634951583537028 0
		 0.011237695699961449 -0.13590004311625989 -0.99065881739191808 0 0.99530866775785354 0.09673023741819467 -0.0019791551496444251 0
		 11.199987307190879 137.34034299850472 -8.3932638168334677 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 177;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_calf_jnt" -p "l_thigh_jnt";
	rename -uid "37B3D79D-4DEE-764A-60A1-A79B4C431D7A";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 62.454096452545045 -1.1546319456101628e-013 -4.2632564145606011e-014 ;
	setAttr ".jo" -type "double3" 0 0 17.067929528932677 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0951616563895991 -0.98245097495867284 -0.16041926616195815 0
		 -0.017461816608661449 0.15947834640405906 -0.98704698063919549 0 0.99530866775785354 0.09673023741819467 -0.0019791551496444251 0
		 17.201552923138401 75.761287974132927 0.12232182464449259 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 178;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_foot_jnt" -p "l_calf_jnt";
	rename -uid "3812AE38-4DAF-931F-315C-128953FA7B63";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "overstretchVal" -ln "overstretchVal" -smn 
		-1 -smx 1 -at "double";
	addAttr -is true -ci true -k true -sn "stretchVal" -ln "stretchVal" -smn 0 -smx 
		1 -at "double";
	addAttr -is true -ci true -k true -sn "ikfk" -ln "ikfk" -smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 61.413922426179084 -1.0125233984581428e-013 -2.8421709430404007e-014 ;
	setAttr ".r" -type "double3" 0 0 7.4267695360444178e-006 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.095161654076878141 -0.98245095383664749 -0.16041939689081935 0
		 -0.017461829212291467 0.15947847652420499 -0.98704695939255049 0 0.99530866775785354 0.09673023741819467 -0.0019791551496444251 0
		 23.045803637191952 15.425118662220868 -9.7296547632434098 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 179;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_toes_jnt" -p "l_foot_jnt";
	rename -uid "56CF96E0-431B-9A25-CEE9-6AA6D3374544";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 10.264101022940975 -17.057201586963771 2.4868995751603507e-014 ;
	setAttr ".jo" -type "double3" -3.4074657569913223 -1.987846675914698e-016 -98.576371386533239 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0030753441506284878 -0.011184658749124915 0.99993272057024951 0
		 0.037373024094974124 -0.99923758522943817 -0.011291826018747833 0 0.99929665231519293 0.037405235910321737 -0.002654994941898331 0
		 24.320402405022339 2.6208863417855603 5.4600433395110706 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 180;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_toestip_jnt" -p "l_toes_jnt";
	rename -uid "C4F99D0B-47CE-9646-BE63-B0A93555511E";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 11.516041753284149 3.2450423903540582e-008 1.9321539923566888e-009 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0030753441506284878 -0.011184658749124915 0.99993272057024951 0
		 0.037373024094974124 -0.99923758522943817 -0.011291826018747833 0 0.99929665231519293 0.037405235910321737 -0.002654994941898331 0
		 24.355818196666714 2.4920833446344188 16.975310300073069 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 180;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_thigh_jnt" -p "spine01_jnt";
	rename -uid "95D07421-4F0E-8ADA-597B-5F808307C81C";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -7.1251392364503374 1.5366837382316554 11.199987679719936 ;
	setAttr ".r" -type "double3" -179.99999999999997 179.99999999999997 179.99999999999997 ;
	setAttr ".jo" -type "double3" -179.35312014266549 5.5143833146694607 7.8733289906148354 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.096095629975012392 0.98598906778386397 -0.13634950718800756 0
		 0.01123769486115235 0.13590003450965893 0.99065881858209948 0 0.99530866775785343 -0.096730237418195586 0.00197915514964455 0
		 -11.199987307190909 137.34034299850455 -8.3932638168334606 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 153;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_calf_jnt" -p "r_thigh_jnt";
	rename -uid "0C8E8F19-4166-9053-80C5-0F865C55895D";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -62.454096452545429 1.4566126083082054e-013 -4.9737991503207013e-014 ;
	setAttr ".r" -type "double3" 5.4086356605553986e-015 -1.4845022739024685e-014 2.5444437451708134e-014 ;
	setAttr ".jo" -type "double3" 0 0 17.067929528932638 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.095161656237177747 0.98245097356660216 0.16041927477779283 0
		 -0.017461817439318253 -0.15947835497977567 0.98704697923891171 0 0.99530866775785343 -0.096730237418195586 0.00197915514964455 0
		 -17.201552923138401 75.761287974132955 0.12232182464449259 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 154;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_foot_jnt" -p "r_calf_jnt";
	rename -uid "185F47E2-4AA4-E4B5-808A-858F9A1AA7B2";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "overstretchVal" -ln "overstretchVal" -smn 
		-1 -smx 1 -at "double";
	addAttr -is true -ci true -k true -sn "stretchVal" -ln "stretchVal" -smn 0 -smx 
		1 -at "double";
	addAttr -is true -ci true -k true -sn "ikfk" -ln "ikfk" -smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -61.4139224261788 8.7041485130612273e-014 -2.4868995751603507e-014 ;
	setAttr ".r" -type "double3" 0 0 -2.3806778354206481e-006 ;
	setAttr ".jo" -type "double3" 0 0 7.0883770080913358e-006 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.095161654076879237 0.98245095383664738 0.16041939689081935 0
		 -0.017461829212291658 -0.15947847652420497 0.9870469593925506 0 0.99530866775785343 -0.096730237418195586 0.00197915514964455 0
		 -23.045803637191952 15.425118662220875 -9.7296547632434116 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 155;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_toes_jnt" -p "r_foot_jnt";
	rename -uid "6F0204FE-4685-00F7-0BC1-599A7A42B385";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -10.264101334244847 17.057201399637915 2.8421709430404007e-014 ;
	setAttr ".r" -type "double3" -1.3745824678930717e-014 -6.4473979744385659e-007 1.1711854365741931e-006 ;
	setAttr ".jo" -type "double3" -3.4074657569912619 -1.9878466759146977e-016 -98.576382234082914 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0030753258425550538 0.011184470323381351 -0.99993272273415856 0
		 0.037373024676186174 0.99923758734321744 0.011291637040715438 0 0.99929665234979903 -0.037405235784465689 0.0026549836898232255 0
		 -24.320402405022342 2.6208863417855639 5.4600433395110688 1;
	setAttr ".radi" 3;
	setAttr -k on ".MaxHandle" 156;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_toestip_jnt" -p "r_toes_jnt";
	rename -uid "F19A037A-4991-BD96-4455-4D87EB93AC4C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -11.516041753284139 -2.3453743613899292e-007 -1.4401230430394207e-007 ;
	setAttr ".r" -type "double3" 0 0 -8.4519031910403575e-006 ;
	setAttr ".jo" -type "double3" 0 0 1.0828372201631568e-005 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0030753329057108705 0.011184659170039763 -0.99993272060012572 0
		 0.037373024094977378 0.99923758522943817 0.011291826018748006 0 0.99929665234979903 -0.037405235784465689 0.0026549836898232255 0
		 -24.355818196666721 2.4920833446344193 16.975310300073069 1;
	setAttr ".radi" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DDB3C92B-41EE-D7FA-EB31-49AE085AF2F8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "057858E5-42C1-E12A-D293-8D96A4B52F76";
	setAttr ".cdl" 10;
	setAttr -s 18 ".dli[1:17]"  18 1 2 3 4 5 6 7 
		9 10 8 12 13 14 15 16 17;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "76F8BF94-425D-3A86-8535-8F8D71FE2152";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ADA4A1A9-4AD0-8F2D-0D0A-D0A3982E6725";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ED9E55C2-4394-61DC-349E-9C913C7546E1";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "24EE5FDC-49B4-4BA2-2980-E99695334FCD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 792\n                -height 739\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 792\n            -height 739\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"active\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"active\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 24 100 -ps 2 76 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 1\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"active\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 1\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"active\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 792\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 792\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2F8310E9-4312-127E-B5EB-6C9C45D03FB5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode network -n "Rig";
	rename -uid "9806C567-419B-A7F4-B41F-90B5D273CCF4";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -s false -ci true -sn "grp_jnt" -ln "grp_jnt" -nn "grp_jnt" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_geo" -ln "grp_geo" -nn "grp_geo" -at "message";
	addAttr -s false -ci true -m -sn "modules" -ln "modules" -nn "modules" -at "message";
	setAttr ".name" -type "string" "Enemy <Rig>";
createNode displayLayer -n "layer_joints";
	rename -uid "AE312592-4649-83B3-B6BD-8ABA428D124C";
	setAttr ".c" 14;
	setAttr ".do" 4;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3B521578-4456-2507-4B71-238C023B4669";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 459.88935754630154 -549.14446935592036 ;
	setAttr ".tgi[0].vh" -type "double2" 2232.0611882939475 424.16719038843507 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 262.85714721679687;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 1093.7830810546875;
	setAttr ".tgi[0].ni[2].y" 111.75775909423828;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 706.51788330078125;
	setAttr ".tgi[0].ni[3].y" 131.84136962890625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 1448.91455078125;
	setAttr ".tgi[0].ni[4].y" 202.08465576171875;
	setAttr ".tgi[0].ni[4].nvs" 18306;
createNode objectSet -n "Export";
	rename -uid "273C84E2-4320-A1CA-DA2D-21B4F97092C7";
	setAttr ".ihi" 0;
	setAttr -s 53 ".dsm";
createNode dagPose -n "bindPose1";
	rename -uid "7FD3F053-4D7E-1293-0928-46A814D3A1C6";
	setAttr -s 66 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 74 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 5.5511151231257827e-017 0 0 0 3.7252902993097422e-007
		 144.46548223495481 -6.8565800786018034 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48387509922619992 -0.48440810252528499 0.51562086584412536 0.51512018137794058 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.777186056913848 -4.4408920985006262e-015
		 -2.2204460492503131e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.100293717109679 -1.7718179989856253e-007
		 -1.1102230246251565e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.041070040759036953 0.99915626993581497 1
		 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 0.99999999999999956 0.99999999999999956 0.99999999999999978 0
		 0 1.6653345369377348e-016 0 37.774494477144316 -2.042810365310288e-014 -3.1086244689504383e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.20285985291239558 0.97920778187081481 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.6046192152785438e-017 -1.1796119636642288e-016
		 -4.4815496799688326e-016 0 13.826643418414506 1.4210854715202004e-013 7.7715611723760958e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.030897958791342522 -0.0045638673659790397 0.16240926875143874 0.98622903865218703 1.0000000000000004
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.440958271012562 0.99968941978870784
		 0.3512438734184814 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68415746196941196 -0.08915472547981701 -0.72330670796801833 0.028414932072047427 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -19.869075715541918 -0.00011622908503383655
		 -2.3841872121010965e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.092129361834331513 0.37473859366256568 -0.084703337341251211 0.91864493236018863 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -39.590033361474994 -3.4420711685356764e-006
		 -1.2365405297032339e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -5.4621790523761375e-006 -2.8918560106194196e-005 -0.18311181905873797 0.98309209174668954 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -35.43664892854499 -1.0568910661312714e-005
		 9.4612286716255767e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00030456862563989256 0.1063024776753641 0.0029271780209420679 0.99432948367574048 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 0.99999999999999978 0 0 0 0 -3.5477926801273725
		 2.8080516074148214 0.78154887843945176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.89329934919417953 -0.38287588846935794 -0.23429948976644194 0.022936343501962608 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.5743123383835353 2.8421709430404007e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11365514832339677 0.9935202601153067 1
		 1 1.0000000000000002 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.3313718840177131 -0.4459839009318074
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.075427307039904634 0.99715130313945233 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.2770215312446851 -1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1.0000000000000002 1 0 0 0 0 -13.690634016437542
		 3.6663926616978975 -1.071416425855972 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.63776516432263719 -0.090572686704622318 0.0063928687780717211 0.7648603237378786 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.8562502977466409 -3.4967367810168071e-006
		 3.1974423109204508e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -1.7866208954977406e-006 0.99999999999840394 1
		 0.99999999999999978 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.2408361056543242 9.9776448791999428e-007
		 1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 8.3890676165343869e-007 0.99999999999964817 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1730748925358441 1.4210854715202004e-013
		 3.5527136788005009e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999956
		 0.99999999999999956 0 0 0 0 -13.284102490295751 0.324893005904201 0.27944393430780679 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.60618734488285453 0.020379602332148295 -0.0050701731120862429 0.79504456985584893 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.8681214869883007 0.048412987249008665
		 -1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19053469606136092 0.98168046206329518 1.0000000000000002
		 1.0000000000000004 1.0000000000000004 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.9843946659807443 -2.8421709430404007e-014
		 4.6185277824406512e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.008411443178849896 0.99996462318606505 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1727153513702717 0
		 -3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1.0000000000000002 0
		 0 0 0 -12.502072752732659 -2.4843912450742875 0.79118047132763536 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49079905776644805 0.23170234196517042 0.0023595854115746745 0.83989567327145298 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.9874081582995728 0
		 7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.24731004950156207 0.96893639595978376 0.99999999999999956
		 0.99999999999999956 0.99999999999999978 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9712430868251545 5.6843418860808015e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19439749903479803 0.98092283711259154 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7553851003567047 -2.1316282072803006e-014
		 -1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 0.99999999999999989 0 0 0 0 -6.4378733763945348
		 -4.1583951943513737 3.1060544247033874 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.054299217079017893 0.270572884775584 0.20022237219494438 0.94008133197157651 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.6339342956517413 2.8421709430404007e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14638182729035176 0.98922816409518877 1
		 1 1.0000000000000002 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.5454113548620114 -2.1316282072803006e-014
		 4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.449079740350669 3.1974423109204508e-014
		 -5.6843418860808015e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 1.7034412151348715e-005 -1.4901163602337775e-007
		 -5.2899639862683229e-006 0 -20.769071020463883 -7.2502243186001181e-005 5.5451410503337684e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -2.9004576518332199e-015 5.507747036226352e-017
		 -5.5511151231257876e-017 0 25.433575356888866 0.9251276287935033 -0.84646781305447605 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.044215044771715534 0.68903802831991778 -0.014697126589229226 0.72322584288371172 1
		 1 1 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 4.7933879088191455e-014 1.4849232954260297e-015
		 4.2213454953810025e-013 0 19.869075715541872 0.00011622908504271834 2.3841872348384641e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.092129358602884986 0.37473859445701252 -0.084703345262849339 0.91864493162978167 1
		 1 1 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 1.7460871695390636e-011 -2.2235529343890098e-015
		 -3.6323309425311288e-012 0 39.590033361475008 4.1248522677506116e-006 1.2365405183345501e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -5.4621878458896894e-006 -2.891855846666838e-005 -0.1831117922954402 0.98309209673165066 1
		 1 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 1.3361572921124521e-008 -1.0532727327603449e-012
		 1.8623933485909528e-007 0 35.436648928545367 9.2506355811039498e-006 -9.4612292116380559e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00030457949006914902 0.10630247764423566 0.0029271329472175022 0.99432948380843078 1
		 1 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1.0000000000000002 1 0 0 0 0 6.4378739196893946
		 4.1583944150735244 -3.1060543419235387 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.054299244109622787 0.27057287923511514 0.20022231347744779 0.94008134451082581 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6339342956517555 -2.8421709430404007e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14638182729035173 0.98922816409518877 1
		 0.99999999999999978 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 1.6653345369377346e-016 0 2.545411354861983
		 0 -4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4490797403507827 -2.1316282072803006e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.502073077316851 2.4843896274399144
		 -0.79118042185737636 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49079908126096516 0.23170230987981366 0.0023595328521701653 0.83989566854132003 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 5.5511151231257827e-017 0 5.9874081582995444
		 -1.1368683772161603e-013 -1.7763568394002505e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.24731004950156202 0.96893639595978376 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9712430868251829 4.2632564145606011e-014
		 7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19439749903479803 0.98092283711259154 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7553851003566479 3.5527136788005009e-015
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 1 0
		 0 0 0 13.284102447849179 -0.32489473589553608 -0.27944394075257151 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.60618735412647429 0.020379562783093417 -0.0050702248446178287 0.79504456349184571 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.8681214869882723 -0.048412987248980244
		 1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.1905346960613607 0.98168046206329529 0.99999999999999956
		 0.99999999999999978 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9843946659807585 1.4210854715202004e-014
		 -3.5527136788005009e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0084114431788499793 0.99996462318606505 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1727153513702717 1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.690633537425455 -3.6663944716897836
		 1.0714163529022755 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.63776516601795441 -0.090572728430536736 0.0063928179131313989 0.76486031780833608 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 -1.11021878946042e-016 0 5.8562502977465982
		 3.4967367525950976e-006 -2.4868995751603507e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -1.7866208954110052e-006 0.99999999999840394 1 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 -2.0816724063369048e-016 0 3.2408361056543669
		 -9.9776451634170371e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 8.3890676163435715e-007 0.99999999999964817 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1730748925359009 -2.8421709430404007e-014
		 -3.1974423109204508e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1.0000000000000004 1.0000000000000004 0
		 0 0 0 3.547792313259734 -2.8080520553739508 -0.78154893432540007 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.89329932441147708 -0.38287594449190487 -0.23429949507441075 0.022936319305992076 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 -2.7755575615628914e-016 0 5.5743123383835211
		 -5.6843418860808015e-014 -7.1054273576010019e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.11365514832339672 0.9935202601153067 1 0.99999999999999956 0.99999999999999956 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3313718840176847 0.44598390093183582
		 4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.075427307039904537 0.99715130313945233 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.2770215312447419 3.5527136788005009e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 1.7042783761219889e-005 0 0 0 20.769071020466569
		 7.1729615140903036e-005 -5.5451413345508627e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		3.8184237430976468e-006 -7.4515980501399893e-008 -2.6635821564461842e-006 0.99999999998915967 1
		 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.6843418860808015e-014
		 -4.4408920985006262e-015 3.3306690738754696e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 1 0 6.123233995736766e-017 1 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1136743332911578 2.2328722964489032
		 -11.089573881067366 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.051000815112259255 0.028763081102561337 -0.99604867285776355 -0.06677307332795554 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 -62.454095192825051 5.4515574454683247e-007
		 1.3145040611561853e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.14839567073123963 0.98892806862189198 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 -61.413923798538775 5.3607612393591353e-007
		 8.8817841970012523e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 6.185775870692923e-008 0.99999999999999811 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.264100974791294 17.057201615937661
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.019392421797559369 0.022536373329939029 -0.75766482742546182 0.65196629908017834 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.516041753283934 -2.1764253279599188e-006
		 -1.295881091323281e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 9.4495373774948938e-008 0.99999999999999556 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 2.79290479373772e-016 1.7347238921520546e-017
		 -2.9802322516498537e-008 0 7.1367950085410996 0.83450033353734554 11.266697811964711 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.033404833956837403 -0.045704747135071888 -0.06979694615854444 0.99595360306822367 1
		 1 1 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 62.45409519282525 -1.1368683772161603e-013
		 -4.9737991503207013e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.14839567073123996 0.98892806862189198 1
		 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 1.3244441773467654e-007 0 61.413923798538761
		 -1.0480505352461478e-013 -1.7763568394002505e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.264100974791287 -17.057201615937664
		 2.4868995751603507e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.019392423930914223 0.02253637149419976 -0.75766476570854935 0.6519663708027954 1
		 1 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.516041753284142 -1.4876988529977098e-014
		 2.1316282072803006e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0.14953081045184219 0.78117006227188157
		 -0.12222628589485598 0 1.4210854715202004e-014 -7.1054273576010019e-015 -2.8421709430404007e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.092129358602885195 -0.37473859445701269 0.084703345262849269 0.91864493162978167 1
		 1 1 no;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0.14953081045225683 0.78117006227180519
		 -0.12222628589426979 0 13.196677787158364 1.3749507630222979e-006 4.1218018225208652e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.092129358602884945 -0.37473859445701269 0.084703345262849394 0.91864493162978167 1
		 1 1 no;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0.14953081045225569 0.78117006227181141
		 -0.12222628589426837 0 13.196677787158309 1.3749507488114432e-006 4.121801737255737e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.092129358602885042 -0.37473859445701257 0.084703345262849339 0.91864493162978167 1
		 1 1 no;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 -1.7120135678181887e-007 1.5740810990109429e-013
		 1.5628464360868307e-007 0 -6.4788616782607278e-007 -2.0578750863364803e-006
		 1.7053025658242404e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 1.5557264138906283e-007 -3.5446333880160676e-014
		 1.5628474567215413e-007 0 -13.19667713927214 9.1052360318144565e-007 -4.1218035278234311e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 8.527581968366301e-008 -7.3821483817583715e-015 -8.6567897079652181e-008 0.99999999999999256 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 -1.5557273901583265e-007 1.3689331976130233e-014
		 1.5628464849016057e-007 0 -13.196677787158379 6.9270799940568395e-007 -4.1218011119781295e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -7.7069380337978232e-008 6.0768865442778119e-015 -7.8849557601583673e-008 0.99999999999999389 1
		 1 1 yes;
	setAttr -s 70 ".m";
	setAttr -s 74 ".p";
	setAttr -s 74 ".g[0:73]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no;
	setAttr ".bp" yes;
createNode network -n "RigCradle";
	rename -uid "24B6200B-4692-4CCC-F4FC-AA852A63A858";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	setAttr ".name" -type "string" "untitled";
	setAttr "._class_namespace" -type "string" "Rig.RigCradle";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "RigCradle";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
connectAttr "layer_joints.di" "root_jnt.do";
connectAttr "root_jnt.s" "spine01_jnt.is";
connectAttr "layer_joints.di" "spine01_jnt.do";
connectAttr "spine01_jnt.s" "spine02_jnt.is";
connectAttr "layer_joints.di" "spine02_jnt.do";
connectAttr "spine02_jnt.s" "chest_jnt.is";
connectAttr "layer_joints.di" "chest_jnt.do";
connectAttr "chest_jnt.s" "neck_jnt.is";
connectAttr "layer_joints.di" "neck_jnt.do";
connectAttr "neck_jnt.s" "head_jnt.is";
connectAttr "layer_joints.di" "head_jnt.do";
connectAttr "chest_jnt.s" "l_shoulder_jnt.is";
connectAttr "layer_joints.di" "l_shoulder_jnt.do";
connectAttr "l_shoulder_jnt.s" "l_upperarm_jnt.is";
connectAttr "layer_joints.di" "l_upperarm_jnt.do";
connectAttr "l_upperarm_jnt.s" "l_forearm_jnt.is";
connectAttr "layer_joints.di" "l_forearm_jnt.do";
connectAttr "l_forearm_jnt.s" "l_hand_jnt.is";
connectAttr "layer_joints.di" "l_hand_jnt.do";
connectAttr "l_hand_jnt.s" "l_thumb01_jnt.is";
connectAttr "layer_joints.di" "l_thumb01_jnt.do";
connectAttr "l_thumb01_jnt.s" "l_thumb02_jnt.is";
connectAttr "layer_joints.di" "l_thumb02_jnt.do";
connectAttr "l_thumb02_jnt.s" "l_thumb03_jnt.is";
connectAttr "layer_joints.di" "l_thumb03_jnt.do";
connectAttr "l_thumb03_jnt.s" "l_thumbtip_jnt.is";
connectAttr "layer_joints.di" "l_thumbtip_jnt.do";
connectAttr "l_hand_jnt.s" "l_index01_jnt.is";
connectAttr "layer_joints.di" "l_index01_jnt.do";
connectAttr "l_index01_jnt.s" "l_index02_jnt.is";
connectAttr "layer_joints.di" "l_index02_jnt.do";
connectAttr "l_index02_jnt.s" "l_index03_jnt.is";
connectAttr "layer_joints.di" "l_index03_jnt.do";
connectAttr "l_index03_jnt.s" "l_indextip_jnt.is";
connectAttr "layer_joints.di" "l_indextip_jnt.do";
connectAttr "l_hand_jnt.s" "l_middle01_jnt.is";
connectAttr "layer_joints.di" "l_middle01_jnt.do";
connectAttr "l_middle01_jnt.s" "l_middle02_jnt.is";
connectAttr "layer_joints.di" "l_middle02_jnt.do";
connectAttr "l_middle02_jnt.s" "l_middle03_jnt.is";
connectAttr "layer_joints.di" "l_middle03_jnt.do";
connectAttr "l_middle03_jnt.s" "l_middletip_jnt.is";
connectAttr "layer_joints.di" "l_middletip_jnt.do";
connectAttr "l_hand_jnt.s" "l_ring01_jnt.is";
connectAttr "layer_joints.di" "l_ring01_jnt.do";
connectAttr "l_ring01_jnt.s" "l_ring02_jnt.is";
connectAttr "layer_joints.di" "l_ring02_jnt.do";
connectAttr "l_ring02_jnt.s" "l_ring03_jnt.is";
connectAttr "layer_joints.di" "l_ring03_jnt.do";
connectAttr "l_ring03_jnt.s" "l_ringtip_jnt.is";
connectAttr "layer_joints.di" "l_ringtip_jnt.do";
connectAttr "l_hand_jnt.s" "l_pinky01_jnt.is";
connectAttr "layer_joints.di" "l_pinky01_jnt.do";
connectAttr "l_pinky01_jnt.s" "l_pinky02_jnt.is";
connectAttr "layer_joints.di" "l_pinky02_jnt.do";
connectAttr "l_pinky02_jnt.s" "l_pinky03_jnt.is";
connectAttr "layer_joints.di" "l_pinky03_jnt.do";
connectAttr "l_pinky03_jnt.s" "l_pinkytip_jnt.is";
connectAttr "layer_joints.di" "l_pinkytip_jnt.do";
connectAttr "chest_jnt.s" "r_shoulder_jnt.is";
connectAttr "layer_joints.di" "r_shoulder_jnt.do";
connectAttr "r_shoulder_jnt.s" "r_upperarm_jnt.is";
connectAttr "layer_joints.di" "r_upperarm_jnt.do";
connectAttr "r_upperarm_jnt.s" "r_forearm_jnt.is";
connectAttr "layer_joints.di" "r_forearm_jnt.do";
connectAttr "r_forearm_jnt.s" "r_hand_jnt.is";
connectAttr "layer_joints.di" "r_hand_jnt.do";
connectAttr "r_hand_jnt.s" "r_pinky01_jnt.is";
connectAttr "layer_joints.di" "r_pinky01_jnt.do";
connectAttr "r_pinky01_jnt.s" "r_pinky02_jnt.is";
connectAttr "layer_joints.di" "r_pinky02_jnt.do";
connectAttr "r_pinky02_jnt.s" "r_pinky03_jnt.is";
connectAttr "layer_joints.di" "r_pinky03_jnt.do";
connectAttr "r_pinky03_jnt.s" "r_pinkytip_jnt.is";
connectAttr "layer_joints.di" "r_pinkytip_jnt.do";
connectAttr "r_hand_jnt.s" "r_ring01_jnt.is";
connectAttr "layer_joints.di" "r_ring01_jnt.do";
connectAttr "r_ring01_jnt.s" "r_ring02_jnt.is";
connectAttr "layer_joints.di" "r_ring02_jnt.do";
connectAttr "r_ring02_jnt.s" "r_ring03_jnt.is";
connectAttr "layer_joints.di" "r_ring03_jnt.do";
connectAttr "r_ring03_jnt.s" "r_ringtip_jnt.is";
connectAttr "layer_joints.di" "r_ringtip_jnt.do";
connectAttr "r_hand_jnt.s" "r_middle01_jnt.is";
connectAttr "layer_joints.di" "r_middle01_jnt.do";
connectAttr "r_middle01_jnt.s" "r_middle02_jnt.is";
connectAttr "layer_joints.di" "r_middle02_jnt.do";
connectAttr "r_middle02_jnt.s" "r_middle03_jnt.is";
connectAttr "layer_joints.di" "r_middle03_jnt.do";
connectAttr "r_middle03_jnt.s" "r_middletip_jnt.is";
connectAttr "layer_joints.di" "r_middletip_jnt.do";
connectAttr "r_hand_jnt.s" "r_index01_jnt.is";
connectAttr "layer_joints.di" "r_index01_jnt.do";
connectAttr "r_index01_jnt.s" "r_index02_jnt.is";
connectAttr "layer_joints.di" "r_index02_jnt.do";
connectAttr "r_index02_jnt.s" "r_index03_jnt.is";
connectAttr "layer_joints.di" "r_index03_jnt.do";
connectAttr "r_index03_jnt.s" "r_indextip_jnt.is";
connectAttr "layer_joints.di" "r_indextip_jnt.do";
connectAttr "r_hand_jnt.s" "r_thumb01_jnt.is";
connectAttr "layer_joints.di" "r_thumb01_jnt.do";
connectAttr "r_thumb01_jnt.s" "r_thumb02_jnt.is";
connectAttr "layer_joints.di" "r_thumb02_jnt.do";
connectAttr "r_thumb02_jnt.s" "r_thumb03_jnt.is";
connectAttr "layer_joints.di" "r_thumb03_jnt.do";
connectAttr "r_thumb03_jnt.s" "r_thumbtip_jnt.is";
connectAttr "layer_joints.di" "r_thumbtip_jnt.do";
connectAttr "spine01_jnt.s" "hip_jnt.is";
connectAttr "layer_joints.di" "hip_jnt.do";
connectAttr "spine01_jnt.s" "l_thigh_jnt.is";
connectAttr "layer_joints.di" "l_thigh_jnt.do";
connectAttr "l_thigh_jnt.s" "l_calf_jnt.is";
connectAttr "layer_joints.di" "l_calf_jnt.do";
connectAttr "l_calf_jnt.s" "l_foot_jnt.is";
connectAttr "layer_joints.di" "l_foot_jnt.do";
connectAttr "l_foot_jnt.s" "l_toes_jnt.is";
connectAttr "layer_joints.di" "l_toes_jnt.do";
connectAttr "l_toes_jnt.s" "l_toestip_jnt.is";
connectAttr "layer_joints.di" "l_toestip_jnt.do";
connectAttr "spine01_jnt.s" "r_thigh_jnt.is";
connectAttr "layer_joints.di" "r_thigh_jnt.do";
connectAttr "r_thigh_jnt.s" "r_calf_jnt.is";
connectAttr "layer_joints.di" "r_calf_jnt.do";
connectAttr "r_calf_jnt.s" "r_foot_jnt.is";
connectAttr "layer_joints.di" "r_foot_jnt.do";
connectAttr "r_foot_jnt.s" "r_toes_jnt.is";
connectAttr "layer_joints.di" "r_toes_jnt.do";
connectAttr "r_toes_jnt.s" "r_toestip_jnt.is";
connectAttr "layer_joints.di" "r_toestip_jnt.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "root_jnt.msg" "Rig.grp_jnt";
connectAttr "layerManager.dli[1]" "layer_joints.id";
connectAttr "r_hand_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "r_forearm_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "root_jnt.iog" "Export.dsm" -na;
connectAttr "spine01_jnt.iog" "Export.dsm" -na;
connectAttr "spine02_jnt.iog" "Export.dsm" -na;
connectAttr "chest_jnt.iog" "Export.dsm" -na;
connectAttr "neck_jnt.iog" "Export.dsm" -na;
connectAttr "head_jnt.iog" "Export.dsm" -na;
connectAttr "r_shoulder_jnt.iog" "Export.dsm" -na;
connectAttr "r_upperarm_jnt.iog" "Export.dsm" -na;
connectAttr "r_forearm_jnt.iog" "Export.dsm" -na;
connectAttr "r_hand_jnt.iog" "Export.dsm" -na;
connectAttr "r_thumb01_jnt.iog" "Export.dsm" -na;
connectAttr "r_thumb02_jnt.iog" "Export.dsm" -na;
connectAttr "r_thumb03_jnt.iog" "Export.dsm" -na;
connectAttr "r_index01_jnt.iog" "Export.dsm" -na;
connectAttr "r_index02_jnt.iog" "Export.dsm" -na;
connectAttr "r_index03_jnt.iog" "Export.dsm" -na;
connectAttr "r_middle01_jnt.iog" "Export.dsm" -na;
connectAttr "r_middle02_jnt.iog" "Export.dsm" -na;
connectAttr "r_middle03_jnt.iog" "Export.dsm" -na;
connectAttr "r_ring01_jnt.iog" "Export.dsm" -na;
connectAttr "r_ring02_jnt.iog" "Export.dsm" -na;
connectAttr "r_ring03_jnt.iog" "Export.dsm" -na;
connectAttr "r_pinky01_jnt.iog" "Export.dsm" -na;
connectAttr "r_pinky02_jnt.iog" "Export.dsm" -na;
connectAttr "r_pinky03_jnt.iog" "Export.dsm" -na;
connectAttr "l_shoulder_jnt.iog" "Export.dsm" -na;
connectAttr "l_upperarm_jnt.iog" "Export.dsm" -na;
connectAttr "l_forearm_jnt.iog" "Export.dsm" -na;
connectAttr "l_hand_jnt.iog" "Export.dsm" -na;
connectAttr "l_pinky01_jnt.iog" "Export.dsm" -na;
connectAttr "l_pinky02_jnt.iog" "Export.dsm" -na;
connectAttr "l_pinky03_jnt.iog" "Export.dsm" -na;
connectAttr "l_ring01_jnt.iog" "Export.dsm" -na;
connectAttr "l_ring02_jnt.iog" "Export.dsm" -na;
connectAttr "l_ring03_jnt.iog" "Export.dsm" -na;
connectAttr "l_middle01_jnt.iog" "Export.dsm" -na;
connectAttr "l_middle02_jnt.iog" "Export.dsm" -na;
connectAttr "l_middle03_jnt.iog" "Export.dsm" -na;
connectAttr "l_index01_jnt.iog" "Export.dsm" -na;
connectAttr "l_index02_jnt.iog" "Export.dsm" -na;
connectAttr "l_index03_jnt.iog" "Export.dsm" -na;
connectAttr "l_thumb01_jnt.iog" "Export.dsm" -na;
connectAttr "l_thumb02_jnt.iog" "Export.dsm" -na;
connectAttr "l_thumb03_jnt.iog" "Export.dsm" -na;
connectAttr "hip_jnt.iog" "Export.dsm" -na;
connectAttr "r_thigh_jnt.iog" "Export.dsm" -na;
connectAttr "r_calf_jnt.iog" "Export.dsm" -na;
connectAttr "r_foot_jnt.iog" "Export.dsm" -na;
connectAttr "r_toes_jnt.iog" "Export.dsm" -na;
connectAttr "l_thigh_jnt.iog" "Export.dsm" -na;
connectAttr "l_calf_jnt.iog" "Export.dsm" -na;
connectAttr "l_foot_jnt.iog" "Export.dsm" -na;
connectAttr "l_toes_jnt.iog" "Export.dsm" -na;
connectAttr "root_jnt.msg" "bindPose1.m[1]";
connectAttr "spine01_jnt.msg" "bindPose1.m[2]";
connectAttr "spine02_jnt.msg" "bindPose1.m[3]";
connectAttr "chest_jnt.msg" "bindPose1.m[4]";
connectAttr "neck_jnt.msg" "bindPose1.m[5]";
connectAttr "head_jnt.msg" "bindPose1.m[6]";
connectAttr "r_shoulder_jnt.msg" "bindPose1.m[7]";
connectAttr "r_upperarm_jnt.msg" "bindPose1.m[8]";
connectAttr "r_forearm_jnt.msg" "bindPose1.m[9]";
connectAttr "r_hand_jnt.msg" "bindPose1.m[10]";
connectAttr "r_thumb01_jnt.msg" "bindPose1.m[11]";
connectAttr "r_thumb02_jnt.msg" "bindPose1.m[12]";
connectAttr "r_thumb03_jnt.msg" "bindPose1.m[13]";
connectAttr "r_thumbtip_jnt.msg" "bindPose1.m[14]";
connectAttr "r_index01_jnt.msg" "bindPose1.m[15]";
connectAttr "r_index02_jnt.msg" "bindPose1.m[16]";
connectAttr "r_index03_jnt.msg" "bindPose1.m[17]";
connectAttr "r_indextip_jnt.msg" "bindPose1.m[18]";
connectAttr "r_middle01_jnt.msg" "bindPose1.m[19]";
connectAttr "r_middle02_jnt.msg" "bindPose1.m[20]";
connectAttr "r_middle03_jnt.msg" "bindPose1.m[21]";
connectAttr "r_middletip_jnt.msg" "bindPose1.m[22]";
connectAttr "r_ring01_jnt.msg" "bindPose1.m[23]";
connectAttr "r_ring02_jnt.msg" "bindPose1.m[24]";
connectAttr "r_ring03_jnt.msg" "bindPose1.m[25]";
connectAttr "r_ringtip_jnt.msg" "bindPose1.m[26]";
connectAttr "r_pinky01_jnt.msg" "bindPose1.m[27]";
connectAttr "r_pinky02_jnt.msg" "bindPose1.m[28]";
connectAttr "r_pinky03_jnt.msg" "bindPose1.m[29]";
connectAttr "r_pinkytip_jnt.msg" "bindPose1.m[30]";
connectAttr "l_shoulder_jnt.msg" "bindPose1.m[32]";
connectAttr "l_upperarm_jnt.msg" "bindPose1.m[33]";
connectAttr "l_forearm_jnt.msg" "bindPose1.m[34]";
connectAttr "l_hand_jnt.msg" "bindPose1.m[35]";
connectAttr "l_pinky01_jnt.msg" "bindPose1.m[36]";
connectAttr "l_pinky02_jnt.msg" "bindPose1.m[37]";
connectAttr "l_pinky03_jnt.msg" "bindPose1.m[38]";
connectAttr "l_pinkytip_jnt.msg" "bindPose1.m[39]";
connectAttr "l_ring01_jnt.msg" "bindPose1.m[40]";
connectAttr "l_ring02_jnt.msg" "bindPose1.m[41]";
connectAttr "l_ring03_jnt.msg" "bindPose1.m[42]";
connectAttr "l_ringtip_jnt.msg" "bindPose1.m[43]";
connectAttr "l_middle01_jnt.msg" "bindPose1.m[44]";
connectAttr "l_middle02_jnt.msg" "bindPose1.m[45]";
connectAttr "l_middle03_jnt.msg" "bindPose1.m[46]";
connectAttr "l_middletip_jnt.msg" "bindPose1.m[47]";
connectAttr "l_index01_jnt.msg" "bindPose1.m[48]";
connectAttr "l_index02_jnt.msg" "bindPose1.m[49]";
connectAttr "l_index03_jnt.msg" "bindPose1.m[50]";
connectAttr "l_indextip_jnt.msg" "bindPose1.m[51]";
connectAttr "l_thumb01_jnt.msg" "bindPose1.m[52]";
connectAttr "l_thumb02_jnt.msg" "bindPose1.m[53]";
connectAttr "l_thumb03_jnt.msg" "bindPose1.m[54]";
connectAttr "l_thumbtip_jnt.msg" "bindPose1.m[55]";
connectAttr "hip_jnt.msg" "bindPose1.m[57]";
connectAttr "r_thigh_jnt.msg" "bindPose1.m[58]";
connectAttr "r_calf_jnt.msg" "bindPose1.m[59]";
connectAttr "r_foot_jnt.msg" "bindPose1.m[60]";
connectAttr "r_toes_jnt.msg" "bindPose1.m[61]";
connectAttr "r_toestip_jnt.msg" "bindPose1.m[62]";
connectAttr "l_thigh_jnt.msg" "bindPose1.m[63]";
connectAttr "l_calf_jnt.msg" "bindPose1.m[64]";
connectAttr "l_foot_jnt.msg" "bindPose1.m[65]";
connectAttr "l_toes_jnt.msg" "bindPose1.m[66]";
connectAttr "l_toestip_jnt.msg" "bindPose1.m[67]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[4]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[10]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[10]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[10]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[10]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[9]" "bindPose1.p[31]";
connectAttr "bindPose1.m[4]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[35]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[35]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[35]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[35]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "bindPose1.m[53]" "bindPose1.p[54]";
connectAttr "bindPose1.m[54]" "bindPose1.p[55]";
connectAttr "bindPose1.m[34]" "bindPose1.p[56]";
connectAttr "bindPose1.m[2]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[58]" "bindPose1.p[59]";
connectAttr "bindPose1.m[59]" "bindPose1.p[60]";
connectAttr "bindPose1.m[60]" "bindPose1.p[61]";
connectAttr "bindPose1.m[61]" "bindPose1.p[62]";
connectAttr "bindPose1.m[57]" "bindPose1.p[63]";
connectAttr "bindPose1.m[63]" "bindPose1.p[64]";
connectAttr "bindPose1.m[64]" "bindPose1.p[65]";
connectAttr "bindPose1.m[65]" "bindPose1.p[66]";
connectAttr "bindPose1.m[66]" "bindPose1.p[67]";
connectAttr "bindPose1.m[33]" "bindPose1.p[68]";
connectAttr "bindPose1.m[68]" "bindPose1.p[69]";
connectAttr "bindPose1.m[69]" "bindPose1.p[70]";
connectAttr "bindPose1.m[8]" "bindPose1.p[71]";
connectAttr "bindPose1.m[71]" "bindPose1.p[72]";
connectAttr "bindPose1.m[72]" "bindPose1.p[73]";
connectAttr "root_jnt.bps" "bindPose1.wm[1]";
connectAttr "spine01_jnt.bps" "bindPose1.wm[2]";
connectAttr "spine02_jnt.bps" "bindPose1.wm[3]";
connectAttr "chest_jnt.bps" "bindPose1.wm[4]";
connectAttr "neck_jnt.bps" "bindPose1.wm[5]";
connectAttr "head_jnt.bps" "bindPose1.wm[6]";
connectAttr "r_shoulder_jnt.bps" "bindPose1.wm[7]";
connectAttr "r_upperarm_jnt.bps" "bindPose1.wm[8]";
connectAttr "r_forearm_jnt.bps" "bindPose1.wm[9]";
connectAttr "r_hand_jnt.bps" "bindPose1.wm[10]";
connectAttr "r_thumb01_jnt.bps" "bindPose1.wm[11]";
connectAttr "r_thumb02_jnt.bps" "bindPose1.wm[12]";
connectAttr "r_thumb03_jnt.bps" "bindPose1.wm[13]";
connectAttr "r_thumbtip_jnt.bps" "bindPose1.wm[14]";
connectAttr "r_index01_jnt.bps" "bindPose1.wm[15]";
connectAttr "r_index02_jnt.bps" "bindPose1.wm[16]";
connectAttr "r_index03_jnt.bps" "bindPose1.wm[17]";
connectAttr "r_indextip_jnt.bps" "bindPose1.wm[18]";
connectAttr "r_middle01_jnt.bps" "bindPose1.wm[19]";
connectAttr "r_middle02_jnt.bps" "bindPose1.wm[20]";
connectAttr "r_middle03_jnt.bps" "bindPose1.wm[21]";
connectAttr "r_middletip_jnt.bps" "bindPose1.wm[22]";
connectAttr "r_ring01_jnt.bps" "bindPose1.wm[23]";
connectAttr "r_ring02_jnt.bps" "bindPose1.wm[24]";
connectAttr "r_ring03_jnt.bps" "bindPose1.wm[25]";
connectAttr "r_ringtip_jnt.bps" "bindPose1.wm[26]";
connectAttr "r_pinky01_jnt.bps" "bindPose1.wm[27]";
connectAttr "r_pinky02_jnt.bps" "bindPose1.wm[28]";
connectAttr "r_pinky03_jnt.bps" "bindPose1.wm[29]";
connectAttr "r_pinkytip_jnt.bps" "bindPose1.wm[30]";
connectAttr "l_shoulder_jnt.bps" "bindPose1.wm[32]";
connectAttr "l_upperarm_jnt.bps" "bindPose1.wm[33]";
connectAttr "l_forearm_jnt.bps" "bindPose1.wm[34]";
connectAttr "l_hand_jnt.bps" "bindPose1.wm[35]";
connectAttr "l_pinky01_jnt.bps" "bindPose1.wm[36]";
connectAttr "l_pinky02_jnt.bps" "bindPose1.wm[37]";
connectAttr "l_pinky03_jnt.bps" "bindPose1.wm[38]";
connectAttr "l_pinkytip_jnt.bps" "bindPose1.wm[39]";
connectAttr "l_ring01_jnt.bps" "bindPose1.wm[40]";
connectAttr "l_ring02_jnt.bps" "bindPose1.wm[41]";
connectAttr "l_ring03_jnt.bps" "bindPose1.wm[42]";
connectAttr "l_ringtip_jnt.bps" "bindPose1.wm[43]";
connectAttr "l_middle01_jnt.bps" "bindPose1.wm[44]";
connectAttr "l_middle02_jnt.bps" "bindPose1.wm[45]";
connectAttr "l_middle03_jnt.bps" "bindPose1.wm[46]";
connectAttr "l_middletip_jnt.bps" "bindPose1.wm[47]";
connectAttr "l_index01_jnt.bps" "bindPose1.wm[48]";
connectAttr "l_index02_jnt.bps" "bindPose1.wm[49]";
connectAttr "l_index03_jnt.bps" "bindPose1.wm[50]";
connectAttr "l_indextip_jnt.bps" "bindPose1.wm[51]";
connectAttr "l_thumb01_jnt.bps" "bindPose1.wm[52]";
connectAttr "l_thumb02_jnt.bps" "bindPose1.wm[53]";
connectAttr "l_thumb03_jnt.bps" "bindPose1.wm[54]";
connectAttr "l_thumbtip_jnt.bps" "bindPose1.wm[55]";
connectAttr "hip_jnt.bps" "bindPose1.wm[57]";
connectAttr "r_thigh_jnt.bps" "bindPose1.wm[58]";
connectAttr "r_calf_jnt.bps" "bindPose1.wm[59]";
connectAttr "r_foot_jnt.bps" "bindPose1.wm[60]";
connectAttr "r_toes_jnt.bps" "bindPose1.wm[61]";
connectAttr "r_toestip_jnt.bps" "bindPose1.wm[62]";
connectAttr "l_thigh_jnt.bps" "bindPose1.wm[63]";
connectAttr "l_calf_jnt.bps" "bindPose1.wm[64]";
connectAttr "l_foot_jnt.bps" "bindPose1.wm[65]";
connectAttr "l_toes_jnt.bps" "bindPose1.wm[66]";
connectAttr "l_toestip_jnt.bps" "bindPose1.wm[67]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rig_cradle_template.ma
