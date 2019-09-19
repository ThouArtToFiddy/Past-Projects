## Assessment for HW3 ngrams

Run on March 12, 19:56:06 PM.

This file contains assessment for `filter_chars`, `ngrams`, `n_grams`.

+ Pass: Change into directory "hw3".

## Feedback Tests (total possible value: 3)

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   ngrams 2 "hallo!"
   ```
   matches the pattern `["ha"; "al"; "ll"; "lo"; "o!"]`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   ngrams 3 "shirtballs"
   ```
   matches the pattern `["shi"; "hir"; "irt"; "rtb"; "tba"; "bal"; "all"; "lls"]`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   filter_chars "abc123"
   ```
   matches the pattern `"abc   "`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   filter_chars "SAD!!!!!!!"
   ```
   matches the pattern `"sad       "`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   n_grams "I continued to use almond milk in my coffee"
   ```
   matches the pattern `["cont"; "onti"; "ntin"; "tinu"; "inue"; "nued"; "almo"; "lmon"; "mond"; "milk"; "coff"; "offe"; "ffee"]`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   n_grams "DRESS BENCH!"
   ```
   matches the pattern `["dres"; "ress"; "benc"; "ench"]`.

   




#### Subtotal: _3.0_ / _3.0_

## Additional automated tests

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars ">OE~erit#6NMo]$_9XX$z{0s0FuC^t;:-6/s5y&.(&|u;{nPUgl[N;Y$]%=w-*H~YB7e!qaV(km}}$.EE/H")
   ```
   matches the pattern `" oe erit  nmo    xx z  s fuc t     s y     u  npugl n y    w  h yb e qav km    ee h"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "bBOE*-RXdAEXs/:^^OMdKvsE(R6oX`QcDP{z6rci4MBr:cMqQ%:mkf|vh7.Z25HutI91b!A$cF")
   ```
   matches the pattern `"bboe  rxdaexs    omdkvse r ox qcdp z rci mbr cmqq  mkf vh  z  huti  b a cf"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "[8_qZ)=DzoI%u^Lc!sleq*}[up;|fqP^|!UDo8S@5:js(`$1h?-oT0sc}m&[1AC)^#)zO[U_fXYEzy/4%AafCp(wEuh.^")
   ```
   matches the pattern `"   qz  dzoi u lc sleq   up  fqp   udo s   js    h  ot sc m   ac    zo u fxyezy   aafcp weuh  "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "ak:X}B{<Wv_.2&^h!OrNk8!aKh`Dv>zRD")
   ```
   matches the pattern `"ak x b  wv     h ornk  akh dv zrd"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "L[@;uQ~l&eaXsE5&jP>AO)tSSbd(~I]FQ3y[`9EWAb,|?j}2X)EVI|vKH%2NEs=Ulf8(%im#]Pa@h)~/g")
   ```
   matches the pattern `"l   uq l eaxse  jp ao tssbd  i fq y   ewab   j  x evi vkh  nes ulf   im  pa h   g"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "Iex{<m/.b4LNoG(yH?c>P?EedG)2Yf=)5H&`,7NpL.W=cqIF[$42;2|VUnaBpj7<>zQH8@P1qh-_z")
   ```
   matches the pattern `"iex  m  b lnog yh c p eedg  yf   h    npl w cqif       vunabpj   zqh  p qh  z"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "w~3[{,~o2m8iN_-L`x=jv}~Gd3jFo~dTtcY!{~L9MMXINi9s64^G81GjY+Zd80[LyO9lptQY:s")
   ```
   matches the pattern `"w      o m in  l x jv  gd jfo dttcy   l mmxini s   g  gjy zd   lyo lptqy s"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "I>MbAU0Ilzy5HM=G=uj~]<z,8dnuDVB>#{rh]8@31dU9rf~h01@G|<C(KG)2bdhdB;(y)g5J*Rb%mlWB#tuCQU[D;?")
   ```
   matches the pattern `"i mbau ilzy hm g uj   z  dnudvb   rh     du rf h   g  c kg  bdhdb  y g j rb mlwb tucqu d  "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "z8BL9].m&!;`ad@,F:s``e~!SCoG:mw7$$KAGL:|y{{M0c/U%6mP5^-E82")
   ```
   matches the pattern `"z bl   m    ad  f s  e  scog mw   kagl  y  m c u  mp   e  "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "J*M#O[X>qU1t(]&tao14>_cht10t,HXf?ygT*j&+EN(7do1%lpiC47.;<N+l)]q[P>v[T,!f]zX:>:iF*NMjSW")
   ```
   matches the pattern `"j m o x qu t   tao    cht  t hxf ygt j  en  do  lpic     n l  q p v t  f zx   if nmjsw"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "b->8]?<DR^F!K$GE/%Nu{~}&E:(gOLPd5BOEE_czg#-[%fkxX%OI1!PU}#8!Ir~_W{oE!mIF|LFj?E~cA3dPn)tl^mr6`f")
   ```
   matches the pattern `"b      dr f k ge  nu    e  golpd boee czg    fkxx oi  pu    ir  w oe mif lfj e ca dpn tl mr  f"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "Sk2VNE,J}f0IL;=g#*fQ+5aiyyT^$2m8Rk&n{NLlMHu8nN1Jost$_XsT_@YCwBB!yz")
   ```
   matches the pattern `"sk vne j f il  g  fq  aiyyt   m rk n nllmhu nn jost  xst  ycwbb yz"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "+Dc(0QNan|Jv`Ii*U`-HR;j@Gej__^}y")
   ```
   matches the pattern `" dc  qnan jv ii u  hr j gej    y"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "R;FexRjzOM-jfPLJ>(sYdPMst:?w;V-H0C_ss-UXj(]522F[=l3Jz{|=!1?kUC`MQz;W`:X=/muO8Q")
   ```
   matches the pattern `"r fexrjzom jfplj  sydpmst  w v h c ss uxj     f  l jz      kuc mqz w  x  muo q"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "5by*)B1l5XcJE0CP%FL4P1qgDD{47J_!#S~k]gZiBH4>u9CD$^I<E-4c^@!9/LVcX8-Oc4aj>Kz,M,3^}7qKuvfMeR2|")
   ```
   matches the pattern `" by  b l xcje cp fl p qgdd   j   s k gzibh  u cd  i e  c     lvcx  oc aj kz m     qkuvfmer  "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "UligHsM%j](%:#NN@?U7*!yJHq~TgZbQ9ZE`OW(!)KP?h=<{3IO?TG2iOvS/1nKi:JGv]*VPj!h60I")
   ```
   matches the pattern `"ulighsm j     nn  u   yjhq tgzbq ze ow   kp h    io tg iovs  nki jgv  vpj h  i"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "C03SiK=BLF2Wn+=BXy]C0pP5dJd_Du-Kb#6csLE.!A85ym!?pWr|~izRC6lVk}9-XT(Hc8H4Oai_a[.")
   ```
   matches the pattern `"c  sik blf wn  bxy c pp djd du kb  csle  a  ym  pwr  izrc lvk   xt hc h oai a  "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "_721|&_(:Hqn{p:4>749iSMsBV0?IUfgI6tykjk?")
   ```
   matches the pattern `"         hqn p      ismsbv  iufgi tykjk "`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "cM9c{NhYE^lz[79|1+w^}7ycnNO@?3no+<kx!P1#y")
   ```
   matches the pattern `"cm c nhye lz      w   ycnno   no  kx p  y"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (filter_chars "-W2[&xAKuL5NndGbRkzla5``f6~&|X%+jsuBOkHYx%V-o0.DK)-F.5&c")
   ```
   matches the pattern `" w   xakul nndgbrkzla   f    x  jsubokhyx v o  dk  f   c"`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 2 "q|]f/+cR-m3M,je*nSd7{K+h/z")
   ```
   matches the pattern `["q|"; "|]"; "]f"; "f/"; "/+"; "+c"; "cR"; "R-"; "-m"; "m3"; "3M"; "M,"; ",j"; "je"; "e*"; "*n"; "nS"; "Sd"; "d7"; "7{"; "{K"; "K+"; "+h"; "h/"; "/z"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 1 ",+6X[gB_1AGy>m_NmQyg}twqb(,|[gD=?MM.~X>&GlW%GEMGmz@-@,_EiQ^`AhOKtr^_!bj")
   ```
   matches the pattern `[","; "+"; "6"; "X"; "["; "g"; "B"; "_"; "1"; "A"; "G"; "y"; ">"; "m"; "_"; "N"; "m"; "Q"; "y"; "g"; "}"; "t"; "w"; "q"; "b"; "("; ","; "|"; "["; "g"; "D"; "="; "?"; "M"; "M"; "."; "~"; "X"; ">"; "&"; "G"; "l"; "W"; "%"; "G"; "E"; "M"; "G"; "m"; "z"; "@"; "-"; "@"; ","; "_"; "E"; "i"; "Q"; "^"; "`"; "A"; "h"; "O"; "K"; "t"; "r"; "^"; "_"; "!"; "b"; "j"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "5BBI/{Y4aR?oMjbF!C@RB_V@B=%+;7G>9X4@R<B8nXz%y$[tWAT*.hM4-P(tnR_*.32tgBu&In:D8cnGmJH]lxa&%cvG")
   ```
   matches the pattern `["5BBI"; "BBI/"; "BI/{"; "I/{Y"; "/{Y4"; "{Y4a"; "Y4aR"; "4aR?"; "aR?o"; "R?oM"; "?oMj"; "oMjb"; "MjbF"; "jbF!"; "bF!C"; "F!C@"; "!C@R"; "C@RB"; "@RB_"; "RB_V"; "B_V@"; "_V@B"; "V@B="; "@B=%"; "B=%+"; "=%+;"; "%+;7"; "+;7G"; ";7G>"; "7G>9"; "G>9X"; ">9X4"; "9X4@"; "X4@R"; "4@R<"; "@R<B"; "R<B8"; "<B8n"; "B8nX"; "8nXz"; "nXz%"; "Xz%y"; "z%y$"; "%y$["; "y$[t"; "$[tW"; "[tWA"; "tWAT"; "WAT*"; "AT*."; "T*.h"; "*.hM"; ".hM4"; "hM4-"; "M4-P"; "4-P("; "-P(t"; "P(tn"; "(tnR"; "tnR_"; "nR_*"; "R_*."; "_*.3"; "*.32"; ".32t"; "32tg"; "2tgB"; "tgBu"; "gBu&"; "Bu&I"; "u&In"; "&In:"; "In:D"; "n:D8"; ":D8c"; "D8cn"; "8cnG"; "cnGm"; "nGmJ"; "GmJH"; "mJH]"; "JH]l"; "H]lx"; "]lxa"; "lxa&"; "xa&%"; "a&%c"; "&%cv"; "%cvG"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "h&5g~?VYa[1N--gENR*/Y6]uhi31cL@ie^w9}rOS`Rr`>+@s/NoQ]-+eU5Lo{;!,SG9XU:&o``1E{:w")
   ```
   matches the pattern `["h&5g"; "&5g~"; "5g~?"; "g~?V"; "~?VY"; "?VYa"; "VYa["; "Ya[1"; "a[1N"; "[1N-"; "1N--"; "N--g"; "--gE"; "-gEN"; "gENR"; "ENR*"; "NR*/"; "R*/Y"; "*/Y6"; "/Y6]"; "Y6]u"; "6]uh"; "]uhi"; "uhi3"; "hi31"; "i31c"; "31cL"; "1cL@"; "cL@i"; "L@ie"; "@ie^"; "ie^w"; "e^w9"; "^w9}"; "w9}r"; "9}rO"; "}rOS"; "rOS`"; "OS`R"; "S`Rr"; "`Rr`"; "Rr`>"; "r`>+"; "`>+@"; ">+@s"; "+@s/"; "@s/N"; "s/No"; "/NoQ"; "NoQ]"; "oQ]-"; "Q]-+"; "]-+e"; "-+eU"; "+eU5"; "eU5L"; "U5Lo"; "5Lo{"; "Lo{;"; "o{;!"; "{;!,"; ";!,S"; "!,SG"; ",SG9"; "SG9X"; "G9XU"; "9XU:"; "XU:&"; "U:&o"; ":&o`"; "&o``"; "o``1"; "``1E"; "`1E{"; "1E{:"; "E{:w"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 1 "j6e>}4oPi|cQ]iH,KO!qWbTrx.]Qk~lW7(eq^Z*")
   ```
   matches the pattern `["j"; "6"; "e"; ">"; "}"; "4"; "o"; "P"; "i"; "|"; "c"; "Q"; "]"; "i"; "H"; ","; "K"; "O"; "!"; "q"; "W"; "b"; "T"; "r"; "x"; "."; "]"; "Q"; "k"; "~"; "l"; "W"; "7"; "("; "e"; "q"; "^"; "Z"; "*"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 1 "$,|lj>#-X_=)@I/od@F&z~}AH[B~_9I1GDzS/M%Bx?,awltOZ")
   ```
   matches the pattern `["$"; ","; "|"; "l"; "j"; ">"; "#"; "-"; "X"; "_"; "="; ")"; "@"; "I"; "/"; "o"; "d"; "@"; "F"; "&"; "z"; "~"; "}"; "A"; "H"; "["; "B"; "~"; "_"; "9"; "I"; "1"; "G"; "D"; "z"; "S"; "/"; "M"; "%"; "B"; "x"; "?"; ","; "a"; "w"; "l"; "t"; "O"; "Z"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "}ae9z|WT?A>t=zI$H?[#w_Np`:uDO(04{(&*5Au:*pi,9sGp4(qWB}Kp3w/Y7JIj!+gN")
   ```
   matches the pattern `["}ae9"; "ae9z"; "e9z|"; "9z|W"; "z|WT"; "|WT?"; "WT?A"; "T?A>"; "?A>t"; "A>t="; ">t=z"; "t=zI"; "=zI$"; "zI$H"; "I$H?"; "$H?["; "H?[#"; "?[#w"; "[#w_"; "#w_N"; "w_Np"; "_Np`"; "Np`:"; "p`:u"; "`:uD"; ":uDO"; "uDO("; "DO(0"; "O(04"; "(04{"; "04{("; "4{(&"; "{(&*"; "(&*5"; "&*5A"; "*5Au"; "5Au:"; "Au:*"; "u:*p"; ":*pi"; "*pi,"; "pi,9"; "i,9s"; ",9sG"; "9sGp"; "sGp4"; "Gp4("; "p4(q"; "4(qW"; "(qWB"; "qWB}"; "WB}K"; "B}Kp"; "}Kp3"; "Kp3w"; "p3w/"; "3w/Y"; "w/Y7"; "/Y7J"; "Y7JI"; "7JIj"; "JIj!"; "Ij!+"; "j!+g"; "!+gN"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "v[=*D+m:dizJM`F#dSYmJZ?s<OHYh0ml7=4BSCxpu`c?u/xIuy|i%pfO?N&ta2Y_")
   ```
   matches the pattern `["v[=*"; "[=*D"; "=*D+"; "*D+m"; "D+m:"; "+m:d"; "m:di"; ":diz"; "dizJ"; "izJM"; "zJM`"; "JM`F"; "M`F#"; "`F#d"; "F#dS"; "#dSY"; "dSYm"; "SYmJ"; "YmJZ"; "mJZ?"; "JZ?s"; "Z?s<"; "?s<O"; "s<OH"; "<OHY"; "OHYh"; "HYh0"; "Yh0m"; "h0ml"; "0ml7"; "ml7="; "l7=4"; "7=4B"; "=4BS"; "4BSC"; "BSCx"; "SCxp"; "Cxpu"; "xpu`"; "pu`c"; "u`c?"; "`c?u"; "c?u/"; "?u/x"; "u/xI"; "/xIu"; "xIuy"; "Iuy|"; "uy|i"; "y|i%"; "|i%p"; "i%pf"; "%pfO"; "pfO?"; "fO?N"; "O?N&"; "?N&t"; "N&ta"; "&ta2"; "ta2Y"; "a2Y_"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 ")Se*81^q#9Ptc$7ZGbR~NU^I5v#MvMNOdg>jB5B4&^{Qcdi,p)")
   ```
   matches the pattern `[")Se*"; "Se*8"; "e*81"; "*81^"; "81^q"; "1^q#"; "^q#9"; "q#9P"; "#9Pt"; "9Ptc"; "Ptc$"; "tc$7"; "c$7Z"; "$7ZG"; "7ZGb"; "ZGbR"; "GbR~"; "bR~N"; "R~NU"; "~NU^"; "NU^I"; "U^I5"; "^I5v"; "I5v#"; "5v#M"; "v#Mv"; "#MvM"; "MvMN"; "vMNO"; "MNOd"; "NOdg"; "Odg>"; "dg>j"; "g>jB"; ">jB5"; "jB5B"; "B5B4"; "5B4&"; "B4&^"; "4&^{"; "&^{Q"; "^{Qc"; "{Qcd"; "Qcdi"; "cdi,"; "di,p"; "i,p)"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 3 "jIw^dJdrVCG0DkZzx`ts+fu1)lT!m/Ece=2&6Xh4eh;0{x)p~w<aj>6!_pgQ3p@QBX;/+x2u")
   ```
   matches the pattern `["jIw"; "Iw^"; "w^d"; "^dJ"; "dJd"; "Jdr"; "drV"; "rVC"; "VCG"; "CG0"; "G0D"; "0Dk"; "DkZ"; "kZz"; "Zzx"; "zx`"; "x`t"; "`ts"; "ts+"; "s+f"; "+fu"; "fu1"; "u1)"; "1)l"; ")lT"; "lT!"; "T!m"; "!m/"; "m/E"; "/Ec"; "Ece"; "ce="; "e=2"; "=2&"; "2&6"; "&6X"; "6Xh"; "Xh4"; "h4e"; "4eh"; "eh;"; "h;0"; ";0{"; "0{x"; "{x)"; "x)p"; ")p~"; "p~w"; "~w<"; "w<a"; "<aj"; "aj>"; "j>6"; ">6!"; "6!_"; "!_p"; "_pg"; "pgQ"; "gQ3"; "Q3p"; "3p@"; "p@Q"; "@QB"; "QBX"; "BX;"; "X;/"; ";/+"; "/+x"; "+x2"; "x2u"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 1 "k]DX4.2x52bNz/M^,+x)s15v3=gOW^+c6lgoD%yB!!fiV~8Q>OBND.[FAJromgsKY<Z|Gf*tVZKJwE|FA#V")
   ```
   matches the pattern `["k"; "]"; "D"; "X"; "4"; "."; "2"; "x"; "5"; "2"; "b"; "N"; "z"; "/"; "M"; "^"; ","; "+"; "x"; ")"; "s"; "1"; "5"; "v"; "3"; "="; "g"; "O"; "W"; "^"; "+"; "c"; "6"; "l"; "g"; "o"; "D"; "%"; "y"; "B"; "!"; "!"; "f"; "i"; "V"; "~"; "8"; "Q"; ">"; "O"; "B"; "N"; "D"; "."; "["; "F"; "A"; "J"; "r"; "o"; "m"; "g"; "s"; "K"; "Y"; "<"; "Z"; "|"; "G"; "f"; "*"; "t"; "V"; "Z"; "K"; "J"; "w"; "E"; "|"; "F"; "A"; "#"; "V"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "IBVe^5v`=>}MZJ]+[v,%wf-Fd|~A@BIpg[vw!O{0b#|hVr4g}87-,0<K2CiU0I`Q&%+q-KZf:R)P.6r[~*FA31B_E0-o@")
   ```
   matches the pattern `["IBVe"; "BVe^"; "Ve^5"; "e^5v"; "^5v`"; "5v`="; "v`=>"; "`=>}"; "=>}M"; ">}MZ"; "}MZJ"; "MZJ]"; "ZJ]+"; "J]+["; "]+[v"; "+[v,"; "[v,%"; "v,%w"; ",%wf"; "%wf-"; "wf-F"; "f-Fd"; "-Fd|"; "Fd|~"; "d|~A"; "|~A@"; "~A@B"; "A@BI"; "@BIp"; "BIpg"; "Ipg["; "pg[v"; "g[vw"; "[vw!"; "vw!O"; "w!O{"; "!O{0"; "O{0b"; "{0b#"; "0b#|"; "b#|h"; "#|hV"; "|hVr"; "hVr4"; "Vr4g"; "r4g}"; "4g}8"; "g}87"; "}87-"; "87-,"; "7-,0"; "-,0<"; ",0<K"; "0<K2"; "<K2C"; "K2Ci"; "2CiU"; "CiU0"; "iU0I"; "U0I`"; "0I`Q"; "I`Q&"; "`Q&%"; "Q&%+"; "&%+q"; "%+q-"; "+q-K"; "q-KZ"; "-KZf"; "KZf:"; "Zf:R"; "f:R)"; ":R)P"; "R)P."; ")P.6"; "P.6r"; ".6r["; "6r[~"; "r[~*"; "[~*F"; "~*FA"; "*FA3"; "FA31"; "A31B"; "31B_"; "1B_E"; "B_E0"; "_E0-"; "E0-o"; "0-o@"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 2 "dDZql65#||]fqcK=BFHDjl,$i2@Q}")
   ```
   matches the pattern `["dD"; "DZ"; "Zq"; "ql"; "l6"; "65"; "5#"; "#|"; "||"; "|]"; "]f"; "fq"; "qc"; "cK"; "K="; "=B"; "BF"; "FH"; "HD"; "Dj"; "jl"; "l,"; ",$"; "$i"; "i2"; "2@"; "@Q"; "Q}"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 4 "JAO<@Puen6O^rlcw|&g7gj`C0[E?1,Z?hsrEacq]jst0&6>_VH<-!wLyE/e&6vy<V;gPQWU)#")
   ```
   matches the pattern `["JAO<"; "AO<@"; "O<@P"; "<@Pu"; "@Pue"; "Puen"; "uen6"; "en6O"; "n6O^"; "6O^r"; "O^rl"; "^rlc"; "rlcw"; "lcw|"; "cw|&"; "w|&g"; "|&g7"; "&g7g"; "g7gj"; "7gj`"; "gj`C"; "j`C0"; "`C0["; "C0[E"; "0[E?"; "[E?1"; "E?1,"; "?1,Z"; "1,Z?"; ",Z?h"; "Z?hs"; "?hsr"; "hsrE"; "srEa"; "rEac"; "Eacq"; "acq]"; "cq]j"; "q]js"; "]jst"; "jst0"; "st0&"; "t0&6"; "0&6>"; "&6>_"; "6>_V"; ">_VH"; "_VH<"; "VH<-"; "H<-!"; "<-!w"; "-!wL"; "!wLy"; "wLyE"; "LyE/"; "yE/e"; "E/e&"; "/e&6"; "e&6v"; "&6vy"; "6vy<"; "vy<V"; "y<V;"; "<V;g"; "V;gP"; ";gPQ"; "gPQW"; "PQWU"; "QWU)"; "WU)#"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 3 "kC;dwXRa8[NKN-Mo;/yx@6E8I")
   ```
   matches the pattern `["kC;"; "C;d"; ";dw"; "dwX"; "wXR"; "XRa"; "Ra8"; "a8["; "8[N"; "[NK"; "NKN"; "KN-"; "N-M"; "-Mo"; "Mo;"; "o;/"; ";/y"; "/yx"; "yx@"; "x@6"; "@6E"; "6E8"; "E8I"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 3 "VRug,i`VQG#/eK-v&/<BYWdgYIXU9o/5_sQ$T2V(j-qGUet4&bQ/dY$sfMz")
   ```
   matches the pattern `["VRu"; "Rug"; "ug,"; "g,i"; ",i`"; "i`V"; "`VQ"; "VQG"; "QG#"; "G#/"; "#/e"; "/eK"; "eK-"; "K-v"; "-v&"; "v&/"; "&/<"; "/<B"; "<BY"; "BYW"; "YWd"; "Wdg"; "dgY"; "gYI"; "YIX"; "IXU"; "XU9"; "U9o"; "9o/"; "o/5"; "/5_"; "5_s"; "_sQ"; "sQ$"; "Q$T"; "$T2"; "T2V"; "2V("; "V(j"; "(j-"; "j-q"; "-qG"; "qGU"; "GUe"; "Uet"; "et4"; "t4&"; "4&b"; "&bQ"; "bQ/"; "Q/d"; "/dY"; "dY$"; "Y$s"; "$sf"; "sfM"; "fMz"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 1 ",nQ$T8~sP1J;zexY{enZN4H#Ov@>@tY3r7X``a&m5Bl13/VG+{3boP((&Fpr=Oq)~IPDa!ImOOE|")
   ```
   matches the pattern `[","; "n"; "Q"; "$"; "T"; "8"; "~"; "s"; "P"; "1"; "J"; ";"; "z"; "e"; "x"; "Y"; "{"; "e"; "n"; "Z"; "N"; "4"; "H"; "#"; "O"; "v"; "@"; ">"; "@"; "t"; "Y"; "3"; "r"; "7"; "X"; "`"; "`"; "a"; "&"; "m"; "5"; "B"; "l"; "1"; "3"; "/"; "V"; "G"; "+"; "{"; "3"; "b"; "o"; "P"; "("; "("; "&"; "F"; "p"; "r"; "="; "O"; "q"; ")"; "~"; "I"; "P"; "D"; "a"; "!"; "I"; "m"; "O"; "O"; "E"; "|"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 3 "37upB#}Maq-bSohd~3,!S2L_b#OvB4:*+(TLIQ8JLXA.U|05=B!")
   ```
   matches the pattern `["37u"; "7up"; "upB"; "pB#"; "B#}"; "#}M"; "}Ma"; "Maq"; "aq-"; "q-b"; "-bS"; "bSo"; "Soh"; "ohd"; "hd~"; "d~3"; "~3,"; "3,!"; ",!S"; "!S2"; "S2L"; "2L_"; "L_b"; "_b#"; "b#O"; "#Ov"; "OvB"; "vB4"; "B4:"; "4:*"; ":*+"; "*+("; "+(T"; "(TL"; "TLI"; "LIQ"; "IQ8"; "Q8J"; "8JL"; "JLX"; "LXA"; "XA."; "A.U"; ".U|"; "U|0"; "|05"; "05="; "5=B"; "=B!"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 2 "2_VRspC8Jy=G5$h:pg3FX(-~EV]")
   ```
   matches the pattern `["2_"; "_V"; "VR"; "Rs"; "sp"; "pC"; "C8"; "8J"; "Jy"; "y="; "=G"; "G5"; "5$"; "$h"; "h:"; ":p"; "pg"; "g3"; "3F"; "FX"; "X("; "(-"; "-~"; "~E"; "EV"; "V]"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (ngrams 3 "Y`oW7-(9d`oSE-Uc/lgE=f?;#SYXV.;NL4>esC;YSz39[jvm-Vs|m0jy]&A/xD")
   ```
   matches the pattern `["Y`o"; "`oW"; "oW7"; "W7-"; "7-("; "-(9"; "(9d"; "9d`"; "d`o"; "`oS"; "oSE"; "SE-"; "E-U"; "-Uc"; "Uc/"; "c/l"; "/lg"; "lgE"; "gE="; "E=f"; "=f?"; "f?;"; "?;#"; ";#S"; "#SY"; "SYX"; "YXV"; "XV."; "V.;"; ".;N"; ";NL"; "NL4"; "L4>"; "4>e"; ">es"; "esC"; "sC;"; "C;Y"; ";YS"; "YSz"; "Sz3"; "z39"; "39["; "9[j"; "[jv"; "jvm"; "vm-"; "m-V"; "-Vs"; "Vs|"; "s|m"; "|m0"; "m0j"; "0jy"; "jy]"; "y]&"; "]&A"; "&A/"; "A/x"; "/xD"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "BfpojN|KT_<zp1Tr/$!K")
   ```
   matches the pattern `["bfpo"; "fpoj"; "pojn"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "B#xxZCN&7jvomn&md|yr(3[ca}@Yxt_v1HM)k4w[T9maa)dz?I_%kYU$")
   ```
   matches the pattern `["xxzc"; "xzcn"; "jvom"; "vomn"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "eb1#Tb}2Mo=|CsE(Gv8/8xK+,cm9j&6PvZt8,V4ZX{FNHl+Fk75$aA9^xcW<!8@IiYO?@O&&E/,SOnZRQ+Nhe)87-1%o/!?lwv")
   ```
   matches the pattern `["pvzt"; "fnhl"; "iiyo"; "sonz"; "onzr"; "nzrq"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "MHa*:*Bl#=^9PoF})1Z`N6ut*z<<{BWVz0rAaNE@M1}ANMbR+?Y4`/F$Lp3z2QAUy")
   ```
   matches the pattern `["bwvz"; "raan"; "aane"; "anmb"; "nmbr"; "qauy"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "JOSxrH~;nMJ^{T(uD`!.v")
   ```
   matches the pattern `["josx"; "osxr"; "sxrh"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams ":F9=BIAE8M-JQ#HzYEY89a,Vpw[+JG&w0#O6@bE>OB)eW4+azIP=U*[eBj2^l<zdD_dG$3")
   ```
   matches the pattern `["biae"; "hzye"; "zyey"; "azip"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "j4F<=h0^|?A1OBCMVS`lEBOuC{H%:dCG$%2L6o?1:>Tv9y:9Yn0eZ6yI-Ack9?~nxyeyjAr/nQIyY;`Q%CfYT;m%ckC>@6D{LiCx")
   ```
   matches the pattern `["obcm"; "bcmv"; "cmvs"; "lebo"; "ebou"; "bouc"; "nxye"; "xyey"; "yeyj"; "eyja"; "yjar"; "nqiy"; "qiyy"; "cfyt"; "licx"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams ")++(.@(/+Iew9#!Y]KNb8U5|hgRz[hvGK;=pGxTZ5l4j27gj6AaBJ")
   ```
   matches the pattern `["hgrz"; "hvgk"; "pgxt"; "gxtz"; "aabj"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "B@p*O_DoY+]48vsRuGxi`W#MXx7?Bce^wNUDa$i|S_yPTch$Y&=G|U1YA.nEFW3DGTHk#%2^QQ/mzMXQ@iL,n")
   ```
   matches the pattern `["vsru"; "srug"; "rugx"; "ugxi"; "wnud"; "nuda"; "yptc"; "ptch"; "nefw"; "dgth"; "gthk"; "mzmx"; "zmxq"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "*odkf5]Rq%RQ9}-`IEia?Rr;{,qcBK^N?4YG%&iviu{U")
   ```
   matches the pattern `["odkf"; "ieia"; "qcbk"; "iviu"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "jXTf4-/Z/v7pr$:cW8.~@QjJ;)Vt9g3IX(JZ/qN;s(oV{cCZ#%Yj/gIpSQv/DVlD,LuO+a${>t@.N]#k,lE5`[JWwJH")
   ```
   matches the pattern `["jxtf"; "gips"; "ipsq"; "psqv"; "dvld"; "jwwj"; "wwjh"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "<B{dK|aV8}hJ?v]FEF[L:P8jRfPD.~X?@Y,)d|QXL]")
   ```
   matches the pattern `["jrfp"; "rfpd"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "XUBDv6wJbw;NoX93vS*G4=Wfxs;K}(~iJsoE@n^ph,^AHOvZUZ:!{m5k^@E/&hRcu?/h1F<,AluBPJ]S+Dpi")
   ```
   matches the pattern `["xubd"; "ubdv"; "wjbw"; "wfxs"; "ijso"; "jsoe"; "ahov"; "hovz"; "ovzu"; "vzuz"; "hrcu"; "alub"; "lubp"; "ubpj"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "(_*`(s6[K{:<O}6$K~[UHf(@a~T*C|r.tV3_+eNm`Ie5bY^FKer5T<_WWfk99I[*wOyQV}PZLnN|dyE/Thj")
   ```
   matches the pattern `["fker"; "wwfk"; "woyq"; "oyqv"; "pzln"; "zlnn"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "sn+QNq{ag6c)H$(He?;K-cH&UP#F]Z)ew5POUqb0>}I/Y?jAH_Z6v8bD,")
   ```
   matches the pattern `["pouq"; "ouqb"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "b6FfHAEYqKn)T(jlUnj6)A`crbq6AP!(&&3s7s=d8!2~8sogiKs1c")
   ```
   matches the pattern `["ffha"; "fhae"; "haey"; "aeyq"; "eyqk"; "yqkn"; "jlun"; "lunj"; "crbq"; "sogi"; "ogik"; "giks"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "ny>J!Y1$GeUT(609nhC#y+mx?G$X4r/N?i,(s:-rbhyf")
   ```
   matches the pattern `["geut"; "rbhy"; "bhyf"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "N#Zj~%#1s.c!F^^M/*-X^=qDe3z4QcXnX+lZ*2g2);|w,o_SQ&ck/A=$h2>{i!APME<}i:Ym<IO2M>pX")
   ```
   matches the pattern `["qcxn"; "cxnx"; "apme"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "tcN|pI;_>2$mFwmnl1{**qw")
   ```
   matches the pattern `["mfwm"; "fwmn"; "wmnl"]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (n_grams "9Cv*wiv<HW9-2/Vr_3xVmd)W$UIFD9$b~fRwp0FKzy]z;uZUg9Jk[i:%Ap(HmE[Yeuo[1*BdV+ujb+L0+nH6R//`,f`&3W@2}L`")
   ```
   matches the pattern `["xvmd"; "uifd"; "frwp"; "fkzy"; "uzug"; "yeuo"]`.

   




#### Subtotal: _11.99999999999999_ / _11.99999999999999_

## Manual tests entered by TA: bjell046

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _10_ / _10_ : Pass: 
    Overall code quality for `filter_chars`
    
    
     Score (out of 3): 3
    Overall code quality for `ngrams`
    
    
     Score (out of 3): 3
    Overall code quality for `n_grams`
    
    
     Score (out of 4): 4


+ Pass: Other Stylistic Comments & Feedback

    `if a then false else true` is `not a`.

#### Subtotal: _10_ / _10_

