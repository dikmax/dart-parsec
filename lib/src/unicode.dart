// This file is autogenerated. Do not edit.

part of parsec;

bool isSpace(int c) => c==9||c==10||c==11||c==13||c==32||c==160||c==5760||(c>=8192&&c<=8202)||c==8239||c==8287||c==12288;
bool isLower(int c) => (c>=97&&c<=122)||c==181||(c>=223&&c<=246)||(c>=248&&c<=255)||c==257||c==259||c==261||c==263||c==265||c==267||c==269||c==271||c==273||c==275||c==277||c==279||c==281||c==283||c==285||c==287||c==289||c==291||c==293||c==295||c==297||c==299||c==301||c==303||c==305||c==307||c==309||(c>=311&&c<=312)||c==314||c==316||c==318||c==320||c==322||c==324||c==326||(c>=328&&c<=329)||c==331||c==333||c==335||c==337||c==339||c==341||c==343||c==345||c==347||c==349||c==351||c==353||c==355||c==357||c==359||c==361||c==363||c==365||c==367||c==369||c==371||c==373||c==375||c==378||c==380||(c>=382&&c<=384)||c==387||c==389||c==392||(c>=396&&c<=397)||c==402||c==405||(c>=409&&c<=411)||c==414||c==417||c==419||c==421||c==424||(c>=426&&c<=427)||c==429||c==432||c==436||c==438||(c>=441&&c<=442)||(c>=445&&c<=447)||c==454||c==457||c==460||c==462||c==464||c==466||c==468||c==470||c==472||c==474||(c>=476&&c<=477)||c==479||c==481||c==483||c==485||c==487||c==489||c==491||c==493||(c>=495&&c<=496)||c==499||c==501||c==505||c==507||c==509||c==511||c==513||c==515||c==517||c==519||c==521||c==523||c==525||c==527||c==529||c==531||c==533||c==535||c==537||c==539||c==541||c==543||c==545||c==547||c==549||c==551||c==553||c==555||c==557||c==559||c==561||(c>=563&&c<=569)||c==572||(c>=575&&c<=576)||c==578||c==583||c==585||c==587||c==589||(c>=591&&c<=659)||(c>=661&&c<=687)||c==881||c==883||c==887||(c>=891&&c<=893)||c==912||(c>=940&&c<=974)||(c>=976&&c<=977)||(c>=981&&c<=983)||c==985||c==987||c==989||c==991||c==993||c==995||c==997||c==999||c==1001||c==1003||c==1005||(c>=1007&&c<=1011)||c==1013||c==1016||(c>=1019&&c<=1020)||(c>=1072&&c<=1119)||c==1121||c==1123||c==1125||c==1127||c==1129||c==1131||c==1133||c==1135||c==1137||c==1139||c==1141||c==1143||c==1145||c==1147||c==1149||c==1151||c==1153||c==1163||c==1165||c==1167||c==1169||c==1171||c==1173||c==1175||c==1177||c==1179||c==1181||c==1183||c==1185||c==1187||c==1189||c==1191||c==1193||c==1195||c==1197||c==1199||c==1201||c==1203||c==1205||c==1207||c==1209||c==1211||c==1213||c==1215||c==1218||c==1220||c==1222||c==1224||c==1226||c==1228||(c>=1230&&c<=1231)||c==1233||c==1235||c==1237||c==1239||c==1241||c==1243||c==1245||c==1247||c==1249||c==1251||c==1253||c==1255||c==1257||c==1259||c==1261||c==1263||c==1265||c==1267||c==1269||c==1271||c==1273||c==1275||c==1277||c==1279||c==1281||c==1283||c==1285||c==1287||c==1289||c==1291||c==1293||c==1295||c==1297||c==1299||c==1301||c==1303||c==1305||c==1307||c==1309||c==1311||c==1313||c==1315||c==1317||c==1319||(c>=1377&&c<=1415)||(c>=7424&&c<=7467)||(c>=7531&&c<=7543)||(c>=7545&&c<=7578)||c==7681||c==7683||c==7685||c==7687||c==7689||c==7691||c==7693||c==7695||c==7697||c==7699||c==7701||c==7703||c==7705||c==7707||c==7709||c==7711||c==7713||c==7715||c==7717||c==7719||c==7721||c==7723||c==7725||c==7727||c==7729||c==7731||c==7733||c==7735||c==7737||c==7739||c==7741||c==7743||c==7745||c==7747||c==7749||c==7751||c==7753||c==7755||c==7757||c==7759||c==7761||c==7763||c==7765||c==7767||c==7769||c==7771||c==7773||c==7775||c==7777||c==7779||c==7781||c==7783||c==7785||c==7787||c==7789||c==7791||c==7793||c==7795||c==7797||c==7799||c==7801||c==7803||c==7805||c==7807||c==7809||c==7811||c==7813||c==7815||c==7817||c==7819||c==7821||c==7823||c==7825||c==7827||(c>=7829&&c<=7837)||c==7839||c==7841||c==7843||c==7845||c==7847||c==7849||c==7851||c==7853||c==7855||c==7857||c==7859||c==7861||c==7863||c==7865||c==7867||c==7869||c==7871||c==7873||c==7875||c==7877||c==7879||c==7881||c==7883||c==7885||c==7887||c==7889||c==7891||c==7893||c==7895||c==7897||c==7899||c==7901||c==7903||c==7905||c==7907||c==7909||c==7911||c==7913||c==7915||c==7917||c==7919||c==7921||c==7923||c==7925||c==7927||c==7929||c==7931||c==7933||(c>=7935&&c<=7943)||(c>=7952&&c<=7957)||(c>=7968&&c<=7975)||(c>=7984&&c<=7991)||(c>=8000&&c<=8005)||(c>=8016&&c<=8023)||(c>=8032&&c<=8039)||(c>=8048&&c<=8061)||(c>=8064&&c<=8071)||(c>=8080&&c<=8087)||(c>=8096&&c<=8103)||(c>=8112&&c<=8116)||(c>=8118&&c<=8119)||c==8126||(c>=8130&&c<=8132)||(c>=8134&&c<=8135)||(c>=8144&&c<=8147)||(c>=8150&&c<=8151)||(c>=8160&&c<=8167)||(c>=8178&&c<=8180)||(c>=8182&&c<=8183)||c==8458||(c>=8462&&c<=8463)||c==8467||c==8495||c==8500||c==8505||(c>=8508&&c<=8509)||(c>=8518&&c<=8521)||c==8526||c==8580||(c>=11312&&c<=11358)||c==11361||(c>=11365&&c<=11366)||c==11368||c==11370||c==11372||c==11377||(c>=11379&&c<=11380)||(c>=11382&&c<=11387)||c==11393||c==11395||c==11397||c==11399||c==11401||c==11403||c==11405||c==11407||c==11409||c==11411||c==11413||c==11415||c==11417||c==11419||c==11421||c==11423||c==11425||c==11427||c==11429||c==11431||c==11433||c==11435||c==11437||c==11439||c==11441||c==11443||c==11445||c==11447||c==11449||c==11451||c==11453||c==11455||c==11457||c==11459||c==11461||c==11463||c==11465||c==11467||c==11469||c==11471||c==11473||c==11475||c==11477||c==11479||c==11481||c==11483||c==11485||c==11487||c==11489||(c>=11491&&c<=11492)||c==11500||c==11502||c==11507||(c>=11520&&c<=11557)||c==11559||c==11565||c==42561||c==42563||c==42565||c==42567||c==42569||c==42571||c==42573||c==42575||c==42577||c==42579||c==42581||c==42583||c==42585||c==42587||c==42589||c==42591||c==42593||c==42595||c==42597||c==42599||c==42601||c==42603||c==42605||c==42625||c==42627||c==42629||c==42631||c==42633||c==42635||c==42637||c==42639||c==42641||c==42643||c==42645||c==42647||c==42787||c==42789||c==42791||c==42793||c==42795||c==42797||(c>=42799&&c<=42801)||c==42803||c==42805||c==42807||c==42809||c==42811||c==42813||c==42815||c==42817||c==42819||c==42821||c==42823||c==42825||c==42827||c==42829||c==42831||c==42833||c==42835||c==42837||c==42839||c==42841||c==42843||c==42845||c==42847||c==42849||c==42851||c==42853||c==42855||c==42857||c==42859||c==42861||c==42863||(c>=42865&&c<=42872)||c==42874||c==42876||c==42879||c==42881||c==42883||c==42885||c==42887||c==42892||c==42894||c==42897||c==42899||c==42913||c==42915||c==42917||c==42919||c==42921||c==43002||(c>=64256&&c<=64262)||(c>=64275&&c<=64279)||(c>=65345&&c<=65370)||(c>=66600&&c<=66639)||(c>=119834&&c<=119859)||(c>=119886&&c<=119892)||(c>=119894&&c<=119911)||(c>=119938&&c<=119963)||(c>=119990&&c<=119993)||c==119995||(c>=119997&&c<=120003)||(c>=120005&&c<=120015)||(c>=120042&&c<=120067)||(c>=120094&&c<=120119)||(c>=120146&&c<=120171)||(c>=120198&&c<=120223)||(c>=120250&&c<=120275)||(c>=120302&&c<=120327)||(c>=120354&&c<=120379)||(c>=120406&&c<=120431)||(c>=120458&&c<=120485)||(c>=120514&&c<=120538)||(c>=120540&&c<=120545)||(c>=120572&&c<=120596)||(c>=120598&&c<=120603)||(c>=120630&&c<=120654)||(c>=120656&&c<=120661)||(c>=120688&&c<=120712)||(c>=120714&&c<=120719)||(c>=120746&&c<=120770)||(c>=120772&&c<=120777)||c==120779;
bool isUpper(int c) => (c>=65&&c<=90)||(c>=192&&c<=214)||(c>=216&&c<=222)||c==256||c==258||c==260||c==262||c==264||c==266||c==268||c==270||c==272||c==274||c==276||c==278||c==280||c==282||c==284||c==286||c==288||c==290||c==292||c==294||c==296||c==298||c==300||c==302||c==304||c==306||c==308||c==310||c==313||c==315||c==317||c==319||c==321||c==323||c==325||c==327||c==330||c==332||c==334||c==336||c==338||c==340||c==342||c==344||c==346||c==348||c==350||c==352||c==354||c==356||c==358||c==360||c==362||c==364||c==366||c==368||c==370||c==372||c==374||(c>=376&&c<=377)||c==379||c==381||(c>=385&&c<=386)||c==388||(c>=390&&c<=391)||(c>=393&&c<=395)||(c>=398&&c<=401)||(c>=403&&c<=404)||(c>=406&&c<=408)||(c>=412&&c<=413)||(c>=415&&c<=416)||c==418||c==420||(c>=422&&c<=423)||c==425||c==428||(c>=430&&c<=431)||(c>=433&&c<=435)||c==437||(c>=439&&c<=440)||c==444||(c>=452&&c<=453)||(c>=455&&c<=456)||(c>=458&&c<=459)||c==461||c==463||c==465||c==467||c==469||c==471||c==473||c==475||c==478||c==480||c==482||c==484||c==486||c==488||c==490||c==492||c==494||(c>=497&&c<=498)||c==500||(c>=502&&c<=504)||c==506||c==508||c==510||c==512||c==514||c==516||c==518||c==520||c==522||c==524||c==526||c==528||c==530||c==532||c==534||c==536||c==538||c==540||c==542||c==544||c==546||c==548||c==550||c==552||c==554||c==556||c==558||c==560||c==562||(c>=570&&c<=571)||(c>=573&&c<=574)||c==577||(c>=579&&c<=582)||c==584||c==586||c==588||c==590||c==880||c==882||c==886||c==902||(c>=904&&c<=906)||c==908||(c>=910&&c<=911)||(c>=913&&c<=929)||(c>=931&&c<=939)||c==975||(c>=978&&c<=980)||c==984||c==986||c==988||c==990||c==992||c==994||c==996||c==998||c==1000||c==1002||c==1004||c==1006||c==1012||c==1015||(c>=1017&&c<=1018)||(c>=1021&&c<=1071)||c==1120||c==1122||c==1124||c==1126||c==1128||c==1130||c==1132||c==1134||c==1136||c==1138||c==1140||c==1142||c==1144||c==1146||c==1148||c==1150||c==1152||c==1162||c==1164||c==1166||c==1168||c==1170||c==1172||c==1174||c==1176||c==1178||c==1180||c==1182||c==1184||c==1186||c==1188||c==1190||c==1192||c==1194||c==1196||c==1198||c==1200||c==1202||c==1204||c==1206||c==1208||c==1210||c==1212||c==1214||(c>=1216&&c<=1217)||c==1219||c==1221||c==1223||c==1225||c==1227||c==1229||c==1232||c==1234||c==1236||c==1238||c==1240||c==1242||c==1244||c==1246||c==1248||c==1250||c==1252||c==1254||c==1256||c==1258||c==1260||c==1262||c==1264||c==1266||c==1268||c==1270||c==1272||c==1274||c==1276||c==1278||c==1280||c==1282||c==1284||c==1286||c==1288||c==1290||c==1292||c==1294||c==1296||c==1298||c==1300||c==1302||c==1304||c==1306||c==1308||c==1310||c==1312||c==1314||c==1316||c==1318||(c>=1329&&c<=1366)||(c>=4256&&c<=4293)||c==4295||c==4301||c==7680||c==7682||c==7684||c==7686||c==7688||c==7690||c==7692||c==7694||c==7696||c==7698||c==7700||c==7702||c==7704||c==7706||c==7708||c==7710||c==7712||c==7714||c==7716||c==7718||c==7720||c==7722||c==7724||c==7726||c==7728||c==7730||c==7732||c==7734||c==7736||c==7738||c==7740||c==7742||c==7744||c==7746||c==7748||c==7750||c==7752||c==7754||c==7756||c==7758||c==7760||c==7762||c==7764||c==7766||c==7768||c==7770||c==7772||c==7774||c==7776||c==7778||c==7780||c==7782||c==7784||c==7786||c==7788||c==7790||c==7792||c==7794||c==7796||c==7798||c==7800||c==7802||c==7804||c==7806||c==7808||c==7810||c==7812||c==7814||c==7816||c==7818||c==7820||c==7822||c==7824||c==7826||c==7828||c==7838||c==7840||c==7842||c==7844||c==7846||c==7848||c==7850||c==7852||c==7854||c==7856||c==7858||c==7860||c==7862||c==7864||c==7866||c==7868||c==7870||c==7872||c==7874||c==7876||c==7878||c==7880||c==7882||c==7884||c==7886||c==7888||c==7890||c==7892||c==7894||c==7896||c==7898||c==7900||c==7902||c==7904||c==7906||c==7908||c==7910||c==7912||c==7914||c==7916||c==7918||c==7920||c==7922||c==7924||c==7926||c==7928||c==7930||c==7932||c==7934||(c>=7944&&c<=7951)||(c>=7960&&c<=7965)||(c>=7976&&c<=7983)||(c>=7992&&c<=7999)||(c>=8008&&c<=8013)||c==8025||c==8027||c==8029||c==8031||(c>=8040&&c<=8047)||(c>=8072&&c<=8079)||(c>=8088&&c<=8095)||(c>=8104&&c<=8111)||(c>=8120&&c<=8124)||(c>=8136&&c<=8140)||(c>=8152&&c<=8155)||(c>=8168&&c<=8172)||(c>=8184&&c<=8188)||c==8450||c==8455||(c>=8459&&c<=8461)||(c>=8464&&c<=8466)||c==8469||(c>=8473&&c<=8477)||c==8484||c==8486||c==8488||(c>=8490&&c<=8493)||(c>=8496&&c<=8499)||(c>=8510&&c<=8511)||c==8517||c==8579||(c>=11264&&c<=11310)||c==11360||(c>=11362&&c<=11364)||c==11367||c==11369||c==11371||(c>=11373&&c<=11376)||c==11378||c==11381||(c>=11390&&c<=11392)||c==11394||c==11396||c==11398||c==11400||c==11402||c==11404||c==11406||c==11408||c==11410||c==11412||c==11414||c==11416||c==11418||c==11420||c==11422||c==11424||c==11426||c==11428||c==11430||c==11432||c==11434||c==11436||c==11438||c==11440||c==11442||c==11444||c==11446||c==11448||c==11450||c==11452||c==11454||c==11456||c==11458||c==11460||c==11462||c==11464||c==11466||c==11468||c==11470||c==11472||c==11474||c==11476||c==11478||c==11480||c==11482||c==11484||c==11486||c==11488||c==11490||c==11499||c==11501||c==11506||c==42560||c==42562||c==42564||c==42566||c==42568||c==42570||c==42572||c==42574||c==42576||c==42578||c==42580||c==42582||c==42584||c==42586||c==42588||c==42590||c==42592||c==42594||c==42596||c==42598||c==42600||c==42602||c==42604||c==42624||c==42626||c==42628||c==42630||c==42632||c==42634||c==42636||c==42638||c==42640||c==42642||c==42644||c==42646||c==42786||c==42788||c==42790||c==42792||c==42794||c==42796||c==42798||c==42802||c==42804||c==42806||c==42808||c==42810||c==42812||c==42814||c==42816||c==42818||c==42820||c==42822||c==42824||c==42826||c==42828||c==42830||c==42832||c==42834||c==42836||c==42838||c==42840||c==42842||c==42844||c==42846||c==42848||c==42850||c==42852||c==42854||c==42856||c==42858||c==42860||c==42862||c==42873||c==42875||(c>=42877&&c<=42878)||c==42880||c==42882||c==42884||c==42886||c==42891||c==42893||c==42896||c==42898||c==42912||c==42914||c==42916||c==42918||c==42920||c==42922||(c>=65313&&c<=65338)||(c>=66560&&c<=66599)||(c>=119808&&c<=119833)||(c>=119860&&c<=119885)||(c>=119912&&c<=119937)||c==119964||(c>=119966&&c<=119967)||c==119970||(c>=119973&&c<=119974)||(c>=119977&&c<=119980)||(c>=119982&&c<=119989)||(c>=120016&&c<=120041)||(c>=120068&&c<=120069)||(c>=120071&&c<=120074)||(c>=120077&&c<=120084)||(c>=120086&&c<=120092)||(c>=120120&&c<=120121)||(c>=120123&&c<=120126)||(c>=120128&&c<=120132)||c==120134||(c>=120138&&c<=120144)||(c>=120172&&c<=120197)||(c>=120224&&c<=120249)||(c>=120276&&c<=120301)||(c>=120328&&c<=120353)||(c>=120380&&c<=120405)||(c>=120432&&c<=120457)||(c>=120488&&c<=120512)||(c>=120546&&c<=120570)||(c>=120604&&c<=120628)||(c>=120662&&c<=120686)||(c>=120720&&c<=120744)||c==120778;
bool isAlpha(int c) => (c>=65&&c<=90)||(c>=97&&c<=122)||c==170||c==181||c==186||(c>=192&&c<=214)||(c>=216&&c<=246)||(c>=248&&c<=705)||(c>=710&&c<=721)||(c>=736&&c<=740)||c==748||c==750||(c>=880&&c<=884)||(c>=886&&c<=887)||(c>=890&&c<=893)||c==902||(c>=904&&c<=906)||c==908||(c>=910&&c<=929)||(c>=931&&c<=1013)||(c>=1015&&c<=1153)||(c>=1162&&c<=1319)||(c>=1329&&c<=1366)||c==1369||(c>=1377&&c<=1415)||(c>=1488&&c<=1514)||(c>=1520&&c<=1522)||(c>=1568&&c<=1610)||(c>=1646&&c<=1647)||(c>=1649&&c<=1747)||c==1749||(c>=1765&&c<=1766)||(c>=1774&&c<=1775)||(c>=1786&&c<=1788)||c==1791||c==1808||(c>=1810&&c<=1839)||(c>=1869&&c<=1957)||c==1969||(c>=1994&&c<=2026)||(c>=2036&&c<=2037)||c==2042||(c>=2048&&c<=2069)||c==2074||c==2084||c==2088||(c>=2112&&c<=2136)||c==2208||(c>=2210&&c<=2220)||(c>=2308&&c<=2361)||c==2365||c==2384||(c>=2392&&c<=2401)||(c>=2417&&c<=2423)||(c>=2425&&c<=2431)||(c>=2437&&c<=2444)||(c>=2447&&c<=2448)||(c>=2451&&c<=2472)||(c>=2474&&c<=2480)||c==2482||(c>=2486&&c<=2489)||c==2493||c==2510||(c>=2524&&c<=2525)||(c>=2527&&c<=2529)||(c>=2544&&c<=2545)||(c>=2565&&c<=2570)||(c>=2575&&c<=2576)||(c>=2579&&c<=2600)||(c>=2602&&c<=2608)||(c>=2610&&c<=2611)||(c>=2613&&c<=2614)||(c>=2616&&c<=2617)||(c>=2649&&c<=2652)||c==2654||(c>=2674&&c<=2676)||(c>=2693&&c<=2701)||(c>=2703&&c<=2705)||(c>=2707&&c<=2728)||(c>=2730&&c<=2736)||(c>=2738&&c<=2739)||(c>=2741&&c<=2745)||c==2749||c==2768||(c>=2784&&c<=2785)||(c>=2821&&c<=2828)||(c>=2831&&c<=2832)||(c>=2835&&c<=2856)||(c>=2858&&c<=2864)||(c>=2866&&c<=2867)||(c>=2869&&c<=2873)||c==2877||(c>=2908&&c<=2909)||(c>=2911&&c<=2913)||c==2929||c==2947||(c>=2949&&c<=2954)||(c>=2958&&c<=2960)||(c>=2962&&c<=2965)||(c>=2969&&c<=2970)||c==2972||(c>=2974&&c<=2975)||(c>=2979&&c<=2980)||(c>=2984&&c<=2986)||(c>=2990&&c<=3001)||c==3024||(c>=3077&&c<=3084)||(c>=3086&&c<=3088)||(c>=3090&&c<=3112)||(c>=3114&&c<=3123)||(c>=3125&&c<=3129)||c==3133||(c>=3160&&c<=3161)||(c>=3168&&c<=3169)||(c>=3205&&c<=3212)||(c>=3214&&c<=3216)||(c>=3218&&c<=3240)||(c>=3242&&c<=3251)||(c>=3253&&c<=3257)||c==3261||c==3294||(c>=3296&&c<=3297)||(c>=3313&&c<=3314)||(c>=3333&&c<=3340)||(c>=3342&&c<=3344)||(c>=3346&&c<=3386)||c==3389||c==3406||(c>=3424&&c<=3425)||(c>=3450&&c<=3455)||(c>=3461&&c<=3478)||(c>=3482&&c<=3505)||(c>=3507&&c<=3515)||c==3517||(c>=3520&&c<=3526)||(c>=3585&&c<=3632)||(c>=3634&&c<=3635)||(c>=3648&&c<=3654)||(c>=3713&&c<=3714)||c==3716||(c>=3719&&c<=3720)||c==3722||c==3725||(c>=3732&&c<=3735)||(c>=3737&&c<=3743)||(c>=3745&&c<=3747)||c==3749||c==3751||(c>=3754&&c<=3755)||(c>=3757&&c<=3760)||(c>=3762&&c<=3763)||c==3773||(c>=3776&&c<=3780)||c==3782||(c>=3804&&c<=3807)||c==3840||(c>=3904&&c<=3911)||(c>=3913&&c<=3948)||(c>=3976&&c<=3980)||(c>=4096&&c<=4138)||c==4159||(c>=4176&&c<=4181)||(c>=4186&&c<=4189)||c==4193||(c>=4197&&c<=4198)||(c>=4206&&c<=4208)||(c>=4213&&c<=4225)||c==4238||(c>=4256&&c<=4293)||c==4295||c==4301||(c>=4304&&c<=4346)||(c>=4348&&c<=4680)||(c>=4682&&c<=4685)||(c>=4688&&c<=4694)||c==4696||(c>=4698&&c<=4701)||(c>=4704&&c<=4744)||(c>=4746&&c<=4749)||(c>=4752&&c<=4784)||(c>=4786&&c<=4789)||(c>=4792&&c<=4798)||c==4800||(c>=4802&&c<=4805)||(c>=4808&&c<=4822)||(c>=4824&&c<=4880)||(c>=4882&&c<=4885)||(c>=4888&&c<=4954)||(c>=4992&&c<=5007)||(c>=5024&&c<=5108)||(c>=5121&&c<=5740)||(c>=5743&&c<=5759)||(c>=5761&&c<=5786)||(c>=5792&&c<=5866)||(c>=5888&&c<=5900)||(c>=5902&&c<=5905)||(c>=5920&&c<=5937)||(c>=5952&&c<=5969)||(c>=5984&&c<=5996)||(c>=5998&&c<=6000)||(c>=6016&&c<=6067)||c==6103||c==6108||(c>=6176&&c<=6263)||(c>=6272&&c<=6312)||c==6314||(c>=6320&&c<=6389)||(c>=6400&&c<=6428)||(c>=6480&&c<=6509)||(c>=6512&&c<=6516)||(c>=6528&&c<=6571)||(c>=6593&&c<=6599)||(c>=6656&&c<=6678)||(c>=6688&&c<=6740)||c==6823||(c>=6917&&c<=6963)||(c>=6981&&c<=6987)||(c>=7043&&c<=7072)||(c>=7086&&c<=7087)||(c>=7098&&c<=7141)||(c>=7168&&c<=7203)||(c>=7245&&c<=7247)||(c>=7258&&c<=7293)||(c>=7401&&c<=7404)||(c>=7406&&c<=7409)||(c>=7413&&c<=7414)||(c>=7424&&c<=7615)||(c>=7680&&c<=7957)||(c>=7960&&c<=7965)||(c>=7968&&c<=8005)||(c>=8008&&c<=8013)||(c>=8016&&c<=8023)||c==8025||c==8027||c==8029||(c>=8031&&c<=8061)||(c>=8064&&c<=8116)||(c>=8118&&c<=8124)||c==8126||(c>=8130&&c<=8132)||(c>=8134&&c<=8140)||(c>=8144&&c<=8147)||(c>=8150&&c<=8155)||(c>=8160&&c<=8172)||(c>=8178&&c<=8180)||(c>=8182&&c<=8188)||c==8305||c==8319||(c>=8336&&c<=8348)||c==8450||c==8455||(c>=8458&&c<=8467)||c==8469||(c>=8473&&c<=8477)||c==8484||c==8486||c==8488||(c>=8490&&c<=8493)||(c>=8495&&c<=8505)||(c>=8508&&c<=8511)||(c>=8517&&c<=8521)||c==8526||(c>=8579&&c<=8580)||(c>=11264&&c<=11310)||(c>=11312&&c<=11358)||(c>=11360&&c<=11492)||(c>=11499&&c<=11502)||(c>=11506&&c<=11507)||(c>=11520&&c<=11557)||c==11559||c==11565||(c>=11568&&c<=11623)||c==11631||(c>=11648&&c<=11670)||(c>=11680&&c<=11686)||(c>=11688&&c<=11694)||(c>=11696&&c<=11702)||(c>=11704&&c<=11710)||(c>=11712&&c<=11718)||(c>=11720&&c<=11726)||(c>=11728&&c<=11734)||(c>=11736&&c<=11742)||c==11823||(c>=12293&&c<=12294)||(c>=12337&&c<=12341)||(c>=12347&&c<=12348)||(c>=12353&&c<=12438)||(c>=12445&&c<=12447)||(c>=12449&&c<=12538)||(c>=12540&&c<=12543)||(c>=12549&&c<=12589)||(c>=12593&&c<=12686)||(c>=12704&&c<=12730)||(c>=12784&&c<=12799)||c==13312||c==19893||c==19968||c==40908||(c>=40960&&c<=42124)||(c>=42192&&c<=42237)||(c>=42240&&c<=42508)||(c>=42512&&c<=42527)||(c>=42538&&c<=42539)||(c>=42560&&c<=42606)||(c>=42623&&c<=42647)||(c>=42656&&c<=42725)||(c>=42775&&c<=42783)||(c>=42786&&c<=42888)||(c>=42891&&c<=42894)||(c>=42896&&c<=42899)||(c>=42912&&c<=42922)||(c>=43000&&c<=43009)||(c>=43011&&c<=43013)||(c>=43015&&c<=43018)||(c>=43020&&c<=43042)||(c>=43072&&c<=43123)||(c>=43138&&c<=43187)||(c>=43250&&c<=43255)||c==43259||(c>=43274&&c<=43301)||(c>=43312&&c<=43334)||(c>=43360&&c<=43388)||(c>=43396&&c<=43442)||c==43471||(c>=43520&&c<=43560)||(c>=43584&&c<=43586)||(c>=43588&&c<=43595)||(c>=43616&&c<=43638)||c==43642||(c>=43648&&c<=43695)||c==43697||(c>=43701&&c<=43702)||(c>=43705&&c<=43709)||c==43712||c==43714||(c>=43739&&c<=43741)||(c>=43744&&c<=43754)||(c>=43762&&c<=43764)||(c>=43777&&c<=43782)||(c>=43785&&c<=43790)||(c>=43793&&c<=43798)||(c>=43808&&c<=43814)||(c>=43816&&c<=43822)||(c>=43968&&c<=44002)||c==44032||c==55203||(c>=55216&&c<=55238)||(c>=55243&&c<=55291)||(c>=63744&&c<=64109)||(c>=64112&&c<=64217)||(c>=64256&&c<=64262)||(c>=64275&&c<=64279)||c==64285||(c>=64287&&c<=64296)||(c>=64298&&c<=64310)||(c>=64312&&c<=64316)||c==64318||(c>=64320&&c<=64321)||(c>=64323&&c<=64324)||(c>=64326&&c<=64433)||(c>=64467&&c<=64829)||(c>=64848&&c<=64911)||(c>=64914&&c<=64967)||(c>=65008&&c<=65019)||(c>=65136&&c<=65140)||(c>=65142&&c<=65276)||(c>=65313&&c<=65338)||(c>=65345&&c<=65370)||(c>=65382&&c<=65470)||(c>=65474&&c<=65479)||(c>=65482&&c<=65487)||(c>=65490&&c<=65495)||(c>=65498&&c<=65500)||(c>=65536&&c<=65547)||(c>=65549&&c<=65574)||(c>=65576&&c<=65594)||(c>=65596&&c<=65597)||(c>=65599&&c<=65613)||(c>=65616&&c<=65629)||(c>=65664&&c<=65786)||(c>=66176&&c<=66204)||(c>=66208&&c<=66256)||(c>=66304&&c<=66334)||(c>=66352&&c<=66368)||(c>=66370&&c<=66377)||(c>=66432&&c<=66461)||(c>=66464&&c<=66499)||(c>=66504&&c<=66511)||(c>=66560&&c<=66717)||(c>=67584&&c<=67589)||c==67592||(c>=67594&&c<=67637)||(c>=67639&&c<=67640)||c==67644||(c>=67647&&c<=67669)||(c>=67840&&c<=67861)||(c>=67872&&c<=67897)||(c>=67968&&c<=68023)||(c>=68030&&c<=68031)||c==68096||(c>=68112&&c<=68115)||(c>=68117&&c<=68119)||(c>=68121&&c<=68147)||(c>=68192&&c<=68220)||(c>=68352&&c<=68405)||(c>=68416&&c<=68437)||(c>=68448&&c<=68466)||(c>=68608&&c<=68680)||(c>=69635&&c<=69687)||(c>=69763&&c<=69807)||(c>=69840&&c<=69864)||(c>=69891&&c<=69926)||(c>=70019&&c<=70066)||(c>=70081&&c<=70084)||(c>=71296&&c<=71338)||(c>=73728&&c<=74606)||(c>=77824&&c<=78894)||(c>=92160&&c<=92728)||(c>=93952&&c<=94020)||c==94032||(c>=94099&&c<=94111)||(c>=110592&&c<=110593)||(c>=119808&&c<=119892)||(c>=119894&&c<=119964)||(c>=119966&&c<=119967)||c==119970||(c>=119973&&c<=119974)||(c>=119977&&c<=119980)||(c>=119982&&c<=119993)||c==119995||(c>=119997&&c<=120003)||(c>=120005&&c<=120069)||(c>=120071&&c<=120074)||(c>=120077&&c<=120084)||(c>=120086&&c<=120092)||(c>=120094&&c<=120121)||(c>=120123&&c<=120126)||(c>=120128&&c<=120132)||c==120134||(c>=120138&&c<=120144)||(c>=120146&&c<=120485)||(c>=120488&&c<=120512)||(c>=120514&&c<=120538)||(c>=120540&&c<=120570)||(c>=120572&&c<=120596)||(c>=120598&&c<=120628)||(c>=120630&&c<=120654)||(c>=120656&&c<=120686)||(c>=120688&&c<=120712)||(c>=120714&&c<=120744)||(c>=120746&&c<=120770)||(c>=120772&&c<=120779)||(c>=126464&&c<=126467)||(c>=126469&&c<=126495)||(c>=126497&&c<=126498)||c==126500||c==126503||(c>=126505&&c<=126514)||(c>=126516&&c<=126519)||c==126521||c==126523||c==126530||c==126535||c==126537||c==126539||(c>=126541&&c<=126543)||(c>=126545&&c<=126546)||c==126548||c==126551||c==126553||c==126555||c==126557||c==126559||(c>=126561&&c<=126562)||c==126564||(c>=126567&&c<=126570)||(c>=126572&&c<=126578)||(c>=126580&&c<=126583)||(c>=126585&&c<=126588)||c==126590||(c>=126592&&c<=126601)||(c>=126603&&c<=126619)||(c>=126625&&c<=126627)||(c>=126629&&c<=126633)||(c>=126635&&c<=126651)||c==131072||c==173782||c==173824||c==177972||c==177984||c==178205||(c>=194560 && c<=195101);
bool isAlphaNum(int c) => (c>=48&&c<=57)||(c>=65&&c<=90)||(c>=97&&c<=122)||c==170||(c>=178&&c<=179)||c==181||(c>=185&&c<=186)||(c>=188&&c<=190)||(c>=192&&c<=214)||(c>=216&&c<=246)||(c>=248&&c<=705)||(c>=710&&c<=721)||(c>=736&&c<=740)||c==748||c==750||(c>=768&&c<=884)||(c>=886&&c<=887)||(c>=890&&c<=893)||c==902||(c>=904&&c<=906)||c==908||(c>=910&&c<=929)||(c>=931&&c<=1013)||(c>=1015&&c<=1153)||(c>=1155&&c<=1319)||(c>=1329&&c<=1366)||c==1369||(c>=1377&&c<=1415)||(c>=1425&&c<=1469)||c==1471||(c>=1473&&c<=1474)||(c>=1476&&c<=1477)||c==1479||(c>=1488&&c<=1514)||(c>=1520&&c<=1522)||(c>=1552&&c<=1562)||(c>=1568&&c<=1641)||(c>=1646&&c<=1747)||(c>=1749&&c<=1756)||(c>=1759&&c<=1768)||(c>=1770&&c<=1788)||c==1791||(c>=1808&&c<=1866)||(c>=1869&&c<=1969)||(c>=1984&&c<=2037)||c==2042||(c>=2048&&c<=2093)||(c>=2112&&c<=2139)||c==2208||(c>=2210&&c<=2220)||(c>=2276&&c<=2302)||(c>=2304&&c<=2403)||(c>=2406&&c<=2415)||(c>=2417&&c<=2423)||(c>=2425&&c<=2431)||(c>=2433&&c<=2435)||(c>=2437&&c<=2444)||(c>=2447&&c<=2448)||(c>=2451&&c<=2472)||(c>=2474&&c<=2480)||c==2482||(c>=2486&&c<=2489)||(c>=2492&&c<=2500)||(c>=2503&&c<=2504)||(c>=2507&&c<=2510)||c==2519||(c>=2524&&c<=2525)||(c>=2527&&c<=2531)||(c>=2534&&c<=2545)||(c>=2548&&c<=2553)||(c>=2561&&c<=2563)||(c>=2565&&c<=2570)||(c>=2575&&c<=2576)||(c>=2579&&c<=2600)||(c>=2602&&c<=2608)||(c>=2610&&c<=2611)||(c>=2613&&c<=2614)||(c>=2616&&c<=2617)||c==2620||(c>=2622&&c<=2626)||(c>=2631&&c<=2632)||(c>=2635&&c<=2637)||c==2641||(c>=2649&&c<=2652)||c==2654||(c>=2662&&c<=2677)||(c>=2689&&c<=2691)||(c>=2693&&c<=2701)||(c>=2703&&c<=2705)||(c>=2707&&c<=2728)||(c>=2730&&c<=2736)||(c>=2738&&c<=2739)||(c>=2741&&c<=2745)||(c>=2748&&c<=2757)||(c>=2759&&c<=2761)||(c>=2763&&c<=2765)||c==2768||(c>=2784&&c<=2787)||(c>=2790&&c<=2799)||(c>=2817&&c<=2819)||(c>=2821&&c<=2828)||(c>=2831&&c<=2832)||(c>=2835&&c<=2856)||(c>=2858&&c<=2864)||(c>=2866&&c<=2867)||(c>=2869&&c<=2873)||(c>=2876&&c<=2884)||(c>=2887&&c<=2888)||(c>=2891&&c<=2893)||(c>=2902&&c<=2903)||(c>=2908&&c<=2909)||(c>=2911&&c<=2915)||(c>=2918&&c<=2927)||(c>=2929&&c<=2935)||(c>=2946&&c<=2947)||(c>=2949&&c<=2954)||(c>=2958&&c<=2960)||(c>=2962&&c<=2965)||(c>=2969&&c<=2970)||c==2972||(c>=2974&&c<=2975)||(c>=2979&&c<=2980)||(c>=2984&&c<=2986)||(c>=2990&&c<=3001)||(c>=3006&&c<=3010)||(c>=3014&&c<=3016)||(c>=3018&&c<=3021)||c==3024||c==3031||(c>=3046&&c<=3058)||(c>=3073&&c<=3075)||(c>=3077&&c<=3084)||(c>=3086&&c<=3088)||(c>=3090&&c<=3112)||(c>=3114&&c<=3123)||(c>=3125&&c<=3129)||(c>=3133&&c<=3140)||(c>=3142&&c<=3144)||(c>=3146&&c<=3149)||(c>=3157&&c<=3158)||(c>=3160&&c<=3161)||(c>=3168&&c<=3171)||(c>=3174&&c<=3183)||(c>=3192&&c<=3198)||(c>=3202&&c<=3203)||(c>=3205&&c<=3212)||(c>=3214&&c<=3216)||(c>=3218&&c<=3240)||(c>=3242&&c<=3251)||(c>=3253&&c<=3257)||(c>=3260&&c<=3268)||(c>=3270&&c<=3272)||(c>=3274&&c<=3277)||(c>=3285&&c<=3286)||c==3294||(c>=3296&&c<=3299)||(c>=3302&&c<=3311)||(c>=3313&&c<=3314)||(c>=3330&&c<=3331)||(c>=3333&&c<=3340)||(c>=3342&&c<=3344)||(c>=3346&&c<=3386)||(c>=3389&&c<=3396)||(c>=3398&&c<=3400)||(c>=3402&&c<=3406)||c==3415||(c>=3424&&c<=3427)||(c>=3430&&c<=3445)||(c>=3450&&c<=3455)||(c>=3458&&c<=3459)||(c>=3461&&c<=3478)||(c>=3482&&c<=3505)||(c>=3507&&c<=3515)||c==3517||(c>=3520&&c<=3526)||c==3530||(c>=3535&&c<=3540)||c==3542||(c>=3544&&c<=3551)||(c>=3570&&c<=3571)||(c>=3585&&c<=3642)||(c>=3648&&c<=3662)||(c>=3664&&c<=3673)||(c>=3713&&c<=3714)||c==3716||(c>=3719&&c<=3720)||c==3722||c==3725||(c>=3732&&c<=3735)||(c>=3737&&c<=3743)||(c>=3745&&c<=3747)||c==3749||c==3751||(c>=3754&&c<=3755)||(c>=3757&&c<=3769)||(c>=3771&&c<=3773)||(c>=3776&&c<=3780)||c==3782||(c>=3784&&c<=3789)||(c>=3792&&c<=3801)||(c>=3804&&c<=3807)||c==3840||(c>=3864&&c<=3865)||(c>=3872&&c<=3891)||c==3893||c==3895||c==3897||(c>=3902&&c<=3911)||(c>=3913&&c<=3948)||(c>=3953&&c<=3972)||(c>=3974&&c<=3991)||(c>=3993&&c<=4028)||c==4038||(c>=4096&&c<=4169)||(c>=4176&&c<=4253)||(c>=4256&&c<=4293)||c==4295||c==4301||(c>=4304&&c<=4346)||(c>=4348&&c<=4680)||(c>=4682&&c<=4685)||(c>=4688&&c<=4694)||c==4696||(c>=4698&&c<=4701)||(c>=4704&&c<=4744)||(c>=4746&&c<=4749)||(c>=4752&&c<=4784)||(c>=4786&&c<=4789)||(c>=4792&&c<=4798)||c==4800||(c>=4802&&c<=4805)||(c>=4808&&c<=4822)||(c>=4824&&c<=4880)||(c>=4882&&c<=4885)||(c>=4888&&c<=4954)||(c>=4957&&c<=4959)||(c>=4969&&c<=4988)||(c>=4992&&c<=5007)||(c>=5024&&c<=5108)||(c>=5121&&c<=5740)||(c>=5743&&c<=5759)||(c>=5761&&c<=5786)||(c>=5792&&c<=5866)||(c>=5870&&c<=5872)||(c>=5888&&c<=5900)||(c>=5902&&c<=5908)||(c>=5920&&c<=5940)||(c>=5952&&c<=5971)||(c>=5984&&c<=5996)||(c>=5998&&c<=6000)||(c>=6002&&c<=6003)||(c>=6016&&c<=6099)||c==6103||(c>=6108&&c<=6109)||(c>=6112&&c<=6121)||(c>=6128&&c<=6137)||(c>=6155&&c<=6157)||(c>=6160&&c<=6169)||(c>=6176&&c<=6263)||(c>=6272&&c<=6314)||(c>=6320&&c<=6389)||(c>=6400&&c<=6428)||(c>=6432&&c<=6443)||(c>=6448&&c<=6459)||(c>=6470&&c<=6509)||(c>=6512&&c<=6516)||(c>=6528&&c<=6571)||(c>=6576&&c<=6601)||(c>=6608&&c<=6618)||(c>=6656&&c<=6683)||(c>=6688&&c<=6750)||(c>=6752&&c<=6780)||(c>=6783&&c<=6793)||(c>=6800&&c<=6809)||c==6823||(c>=6912&&c<=6987)||(c>=6992&&c<=7001)||(c>=7019&&c<=7027)||(c>=7040&&c<=7155)||(c>=7168&&c<=7223)||(c>=7232&&c<=7241)||(c>=7245&&c<=7293)||(c>=7376&&c<=7378)||(c>=7380&&c<=7414)||(c>=7424&&c<=7654)||(c>=7676&&c<=7957)||(c>=7960&&c<=7965)||(c>=7968&&c<=8005)||(c>=8008&&c<=8013)||(c>=8016&&c<=8023)||c==8025||c==8027||c==8029||(c>=8031&&c<=8061)||(c>=8064&&c<=8116)||(c>=8118&&c<=8124)||c==8126||(c>=8130&&c<=8132)||(c>=8134&&c<=8140)||(c>=8144&&c<=8147)||(c>=8150&&c<=8155)||(c>=8160&&c<=8172)||(c>=8178&&c<=8180)||(c>=8182&&c<=8188)||(c>=8304&&c<=8305)||(c>=8308&&c<=8313)||(c>=8319&&c<=8329)||(c>=8336&&c<=8348)||(c>=8400&&c<=8432)||c==8450||c==8455||(c>=8458&&c<=8467)||c==8469||(c>=8473&&c<=8477)||c==8484||c==8486||c==8488||(c>=8490&&c<=8493)||(c>=8495&&c<=8505)||(c>=8508&&c<=8511)||(c>=8517&&c<=8521)||c==8526||(c>=8528&&c<=8585)||(c>=9312&&c<=9371)||(c>=9450&&c<=9471)||(c>=10102&&c<=10131)||(c>=11264&&c<=11310)||(c>=11312&&c<=11358)||(c>=11360&&c<=11492)||(c>=11499&&c<=11507)||c==11517||(c>=11520&&c<=11557)||c==11559||c==11565||(c>=11568&&c<=11623)||c==11631||(c>=11647&&c<=11670)||(c>=11680&&c<=11686)||(c>=11688&&c<=11694)||(c>=11696&&c<=11702)||(c>=11704&&c<=11710)||(c>=11712&&c<=11718)||(c>=11720&&c<=11726)||(c>=11728&&c<=11734)||(c>=11736&&c<=11742)||(c>=11744&&c<=11775)||c==11823||(c>=12293&&c<=12295)||(c>=12321&&c<=12335)||(c>=12337&&c<=12341)||(c>=12344&&c<=12348)||(c>=12353&&c<=12438)||(c>=12441&&c<=12442)||(c>=12445&&c<=12447)||(c>=12449&&c<=12538)||(c>=12540&&c<=12543)||(c>=12549&&c<=12589)||(c>=12593&&c<=12686)||(c>=12690&&c<=12693)||(c>=12704&&c<=12730)||(c>=12784&&c<=12799)||(c>=12832&&c<=12841)||(c>=12872&&c<=12879)||(c>=12881&&c<=12895)||(c>=12928&&c<=12937)||(c>=12977&&c<=12991)||c==13312||c==19893||c==19968||c==40908||(c>=40960&&c<=42124)||(c>=42192&&c<=42237)||(c>=42240&&c<=42508)||(c>=42512&&c<=42539)||(c>=42560&&c<=42610)||(c>=42612&&c<=42621)||(c>=42623&&c<=42647)||(c>=42655&&c<=42737)||(c>=42775&&c<=42783)||(c>=42786&&c<=42888)||(c>=42891&&c<=42894)||(c>=42896&&c<=42899)||(c>=42912&&c<=42922)||(c>=43000&&c<=43047)||(c>=43056&&c<=43061)||(c>=43072&&c<=43123)||(c>=43136&&c<=43204)||(c>=43216&&c<=43225)||(c>=43232&&c<=43255)||c==43259||(c>=43264&&c<=43309)||(c>=43312&&c<=43347)||(c>=43360&&c<=43388)||(c>=43392&&c<=43456)||(c>=43471&&c<=43481)||(c>=43520&&c<=43574)||(c>=43584&&c<=43597)||(c>=43600&&c<=43609)||(c>=43616&&c<=43638)||(c>=43642&&c<=43643)||(c>=43648&&c<=43714)||(c>=43739&&c<=43741)||(c>=43744&&c<=43759)||(c>=43762&&c<=43766)||(c>=43777&&c<=43782)||(c>=43785&&c<=43790)||(c>=43793&&c<=43798)||(c>=43808&&c<=43814)||(c>=43816&&c<=43822)||(c>=43968&&c<=44010)||(c>=44012&&c<=44013)||(c>=44016&&c<=44025)||c==44032||c==55203||(c>=55216&&c<=55238)||(c>=55243&&c<=55291)||(c>=63744&&c<=64109)||(c>=64112&&c<=64217)||(c>=64256&&c<=64262)||(c>=64275&&c<=64279)||(c>=64285&&c<=64296)||(c>=64298&&c<=64310)||(c>=64312&&c<=64316)||c==64318||(c>=64320&&c<=64321)||(c>=64323&&c<=64324)||(c>=64326&&c<=64433)||(c>=64467&&c<=64829)||(c>=64848&&c<=64911)||(c>=64914&&c<=64967)||(c>=65008&&c<=65019)||(c>=65024&&c<=65039)||(c>=65056&&c<=65062)||(c>=65136&&c<=65140)||(c>=65142&&c<=65276)||(c>=65296&&c<=65305)||(c>=65313&&c<=65338)||(c>=65345&&c<=65370)||(c>=65382&&c<=65470)||(c>=65474&&c<=65479)||(c>=65482&&c<=65487)||(c>=65490&&c<=65495)||(c>=65498&&c<=65500)||(c>=65536&&c<=65547)||(c>=65549&&c<=65574)||(c>=65576&&c<=65594)||(c>=65596&&c<=65597)||(c>=65599&&c<=65613)||(c>=65616&&c<=65629)||(c>=65664&&c<=65786)||(c>=65799&&c<=65843)||(c>=65856&&c<=65912)||c==65930||c==66045||(c>=66176&&c<=66204)||(c>=66208&&c<=66256)||(c>=66304&&c<=66334)||(c>=66336&&c<=66339)||(c>=66352&&c<=66378)||(c>=66432&&c<=66461)||(c>=66464&&c<=66499)||(c>=66504&&c<=66511)||(c>=66513&&c<=66517)||(c>=66560&&c<=66717)||(c>=66720&&c<=66729)||(c>=67584&&c<=67589)||c==67592||(c>=67594&&c<=67637)||(c>=67639&&c<=67640)||c==67644||(c>=67647&&c<=67669)||(c>=67672&&c<=67679)||(c>=67840&&c<=67867)||(c>=67872&&c<=67897)||(c>=67968&&c<=68023)||(c>=68030&&c<=68031)||(c>=68096&&c<=68099)||(c>=68101&&c<=68102)||(c>=68108&&c<=68115)||(c>=68117&&c<=68119)||(c>=68121&&c<=68147)||(c>=68152&&c<=68154)||(c>=68159&&c<=68167)||(c>=68192&&c<=68222)||(c>=68352&&c<=68405)||(c>=68416&&c<=68437)||(c>=68440&&c<=68466)||(c>=68472&&c<=68479)||(c>=68608&&c<=68680)||(c>=69216&&c<=69246)||(c>=69632&&c<=69702)||(c>=69714&&c<=69743)||(c>=69760&&c<=69818)||(c>=69840&&c<=69864)||(c>=69872&&c<=69881)||(c>=69888&&c<=69940)||(c>=69942&&c<=69951)||(c>=70016&&c<=70084)||(c>=70096&&c<=70105)||(c>=71296&&c<=71351)||(c>=71360&&c<=71369)||(c>=73728&&c<=74606)||(c>=74752&&c<=74850)||(c>=77824&&c<=78894)||(c>=92160&&c<=92728)||(c>=93952&&c<=94020)||(c>=94032&&c<=94078)||(c>=94095&&c<=94111)||(c>=110592&&c<=110593)||(c>=119141&&c<=119145)||(c>=119149&&c<=119154)||(c>=119163&&c<=119170)||(c>=119173&&c<=119179)||(c>=119210&&c<=119213)||(c>=119362&&c<=119364)||(c>=119648&&c<=119665)||(c>=119808&&c<=119892)||(c>=119894&&c<=119964)||(c>=119966&&c<=119967)||c==119970||(c>=119973&&c<=119974)||(c>=119977&&c<=119980)||(c>=119982&&c<=119993)||c==119995||(c>=119997&&c<=120003)||(c>=120005&&c<=120069)||(c>=120071&&c<=120074)||(c>=120077&&c<=120084)||(c>=120086&&c<=120092)||(c>=120094&&c<=120121)||(c>=120123&&c<=120126)||(c>=120128&&c<=120132)||c==120134||(c>=120138&&c<=120144)||(c>=120146&&c<=120485)||(c>=120488&&c<=120512)||(c>=120514&&c<=120538)||(c>=120540&&c<=120570)||(c>=120572&&c<=120596)||(c>=120598&&c<=120628)||(c>=120630&&c<=120654)||(c>=120656&&c<=120686)||(c>=120688&&c<=120712)||(c>=120714&&c<=120744)||(c>=120746&&c<=120770)||(c>=120772&&c<=120779)||(c>=120782&&c<=120831)||(c>=126464&&c<=126467)||(c>=126469&&c<=126495)||(c>=126497&&c<=126498)||c==126500||c==126503||(c>=126505&&c<=126514)||(c>=126516&&c<=126519)||c==126521||c==126523||c==126530||c==126535||c==126537||c==126539||(c>=126541&&c<=126543)||(c>=126545&&c<=126546)||c==126548||c==126551||c==126553||c==126555||c==126557||c==126559||(c>=126561&&c<=126562)||c==126564||(c>=126567&&c<=126570)||(c>=126572&&c<=126578)||(c>=126580&&c<=126583)||(c>=126585&&c<=126588)||c==126590||(c>=126592&&c<=126601)||(c>=126603&&c<=126619)||(c>=126625&&c<=126627)||(c>=126629&&c<=126633)||(c>=126635&&c<=126651)||(c>=127232&&c<=127242)||c==131072||c==173782||c==173824||c==177972||c==177984||c==178205||(c>=194560&&c<=195101)||(c>=917760 && c<=917999);