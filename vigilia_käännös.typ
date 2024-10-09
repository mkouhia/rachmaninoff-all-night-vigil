#set page(
  margin: (x: 15mm, top: 10mm, bottom: 16mm),
)

#let partnum = counter("partnum")
#partnum.step()

#let osio(label) = {
  set align(center)
  set text(14pt, weight: "regular")
  block(above: 2.4em, smallcaps(label))
}

#set text(
  font: "Gentium Plus",
  size: 8pt,
)



#let part(title, titleFin: (), chu, tra, fin) = {
  v(2.4em, weak:true)
  box[
    #align(center)[
      #text(12pt, weight: "regular")[
        #block(context partnum.display() + ". " + [#title] + ".")
        #if titleFin != () {
          text(10pt, weight: "regular")[
            #block(above: 0.8em, [#titleFin])
          ]
        }
      ]
      #v(1.6em, weak:true)
    ]
    #partnum.step()

    #set par(
      first-line-indent: 0em,
      justify: false,
    )
    #show par: set block(spacing: 1.2em)

    #grid(
      columns: (1fr, 1fr, 1fr),
      [#chu],
      [#tra],
      [#fin],
    )
  ]
}

#align(center)[
  #grid(
    columns: (auto, auto),
    gutter: 2%,
    align(right)[
      #text(16pt)[Всенощное бдение]\
      #text(12pt)[Сергей Рахманинов]
    ],
    align(left)[
      #text(16pt)[Kokoöinen vigilia] \
      #text(12pt)[Sergei Rahmaninov]
    ]
  )
  #text(12pt)[Op. 37]
  #v(3em, weak:true)
]


#osio("Ehtoopalvelus")


#part(
  "Приидите, поклонимся",
//  titleFin: "Alkurukoukset",
  [
    Аминь.  \
    Приидите, поклонимся Цареви нашему Богу.  \
    Приидите, поклонимся и припадем  \
    #h(1em) Христу Цареви нашему Богу.  \
    \
    Приидите, поклонимся и припадем  \
    #h(1em) самому Христу Цареви и Богу нашему.  \
    \
    Приидите, поклонимся и припадем Ему. \
  ],
  [
    aˈmʲinʲ  \
    prʲiiˈdʲitʲɛ pokloˈnʲimsʲa tsaˈrʲevʲi ˈnɑʃɛmu ˈbogu \
    prʲiiˈdʲitʲɛ pokloˈnʲimsʲa i prʲipaˈdʲɛm  \
    #h(1em) xrʲiˈstu tsaˈrʲevʲi ˈnɑʃɛmu ˈbogu  \
    \
    prʲiiˈdʲitʲɛ pokloˈnʲimsʲa i prʲipaˈdʲɛm  \
    #h(1em) ˈsɑmomu xrʲiˈstu tsaˈrʲevʲi i ˈbogu ˈnɑʃɛmu  \
    \
    prʲiiˈdʲitʲɛ pokloˈnʲimsʲa i prʲipaˈdʲɛm jɛˈmu \
  ],
  [
    Aamen.  \
    Tulkaa, kumartukaamme Jumalamme, eteen.  \
    Tulkaa, kumartukaamme ja langetkaamme  \
    #h(1em) Kristuksen, meidän Kuninkaamme  \
    #h(1em) ja Jumalamme, eteen.  \
    Tulkaa, kumartukaamme ja langetkaamme  \
    #h(1em) itse Kristuksen, meidän Kuninkaamme  \
    #h(1em) ja Jumalamme, eteen.  \
    Tulkaa, kumartukaamme ja langetkaamme  \
    #h(1em) Hänen eteensä.
  ]
)

#part(
  "Благослови, душе моя, Господа",
//  titleFin: "Alkupsalmi, psalmi 103",
  [
    Благослови, душе моя, Господа.  \
    Благословен еси, Господи.  \
    Господи Боже мой, \
    возвеличился еси зело.  \
    Благословен еси, Господи.  \
    Во исповедание и в велелепоту облеклся еси.  \
    Благословен еси, Господи.  \
    На горах станут воды.  \
    Дивна дела Твоя, Господи.  \
    Посреде гор пройдут воды.  \
    Дивна дела Твоя, Господи.  \
    Вся премудростию сотворил еси.  \
    Слава ти, Господи, \
    сотворившему вся.
  ],
  [
    blagosloˈvʲi duˈʃɛ moˈja ˈgospoda  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    ˈgospodʲi ˈboʒɛ moj \
    vozvʲeˈlʲitʃilsʲa jeˈsʲi zʲɛˈlo  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    vo ispoˈvʲɛdanʲijɛ i v‿vʲelʲeˈlʲɛpotu obˈlʲɛklsʲa jeˈsʲi  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    nɑ goˈrɑx ˈstɑnut ˈvodɨ  \
    ˈdʲivna dʲɛˈlɑ tvoˈja ˈgospodʲi  \
    posrʲeˈdʲɛ ˈgor ˈprojdut ˈvodɨ  \
    ˈdʲivna dʲɛˈlɑ tvoˈja ˈgospodʲi  \
    fsʲa prʲɛˈmudrostʲiju sotvoˈrʲil jeˈsʲi  \
    ˈslɑva tʲi ˈgospodʲi \
    sotvoˈrʲifʃɛmu fsʲa
  ],
  [
    Kiitä, sieluni, Herraa!  \
    Kiitetty olet sinä, Herra.  \
    Herra, minun Jumalani, \
    sinä olet ihmeellisesti suuri.  \
    Kiitetty olet sinä, Herra.  \
    Kunniaan ja suureen kauneuteen olet Sinä puettu.  \
    Kiitetty olet sinä, Herra.  \
    Vedet lepäävät vuorten yllä.  \
    Herra, ihmeelliset ovat tekosi  \
    Vuorten keskellä vedet virtaavat.  \
    Herra, ihmeelliset ovat tekosi!  \
    Sinä olet kaikki taitavasti luonut.  \
    Kunnia olkoon sinulle, Herra, \
    joka kaikki olet luonut!
  ]
)

#part(
  "Блажен муж",
  [
    Блажен муж, \
    иже не иде на совет нечестивых.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    Яко весть Господь путь праведных,  \
    и путь нечестивых погибнет.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    Работайте Господеви со страхом,  \
    и радуйтеся Ему с трепетом.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    Блажени вси надеющиися нань.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \

    Воскресни, Господи, спаси мя, Боже мой.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    Господне есть спасение  \
    и на людех Твоих благословение Твое.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    Слава Отцу, и Сыну, и Святому Духу,  \
    и ныне и присно и во веки веков, Aминь.  \
    #h(2em) Аллилуйиа, Аллилуйиа, Аллилуйиа.  \
    #h(2em) Слава Тебе боже.
  ],
  [
    blaˈʒɛn muʒ \
    ˈiʒɛ nʲɛ ˈidʲɛ nɑ soˈvʲɛt nʲetʃɛsˈtʲivɨx  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    ˈjako ˈvʲesʲtʲ gosˈpodʲ putʲ ˈprɑvʲɛdnɨx  \
    i ˈputʲ nʲetʃɛsˈtʲivɨx poˈgʲibnʲɛt  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    raˈbotajtʲɛ ˈgospodʲevʲi so ˈstrɑxom  \
    i ˈrɑdujtʲesʲa jɛˈmu s‿ˈtrʲepʲɛtom  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    blaˈʒenʲi fsʲi naˈdʲejuʃʲːiisʲa nanʲ  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \

    vosˈkrʲɛsnʲi ˈgospodʲi spaˈsʲi mʲa ˈboʒɛ ˈmoj  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    goˈspodnʲe jesʲtʲ spaˈsʲenʲijɛ  \
    i nɑ lʲuˈdʲɛx tvoˈix blagosloˈvʲenʲijɛ tvoˈjɛ  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    ˈslɑva otˈtsu i ˈsɨnu i svʲaˈtomu ˈduxu  \
    i ˈnɨnɛ i ˈprʲisno i vo ˈvʲekʲi vʲɛˈkof aˈmʲinʲ  \
    #h(2em) alʲiˈluija alʲiˈluija alʲiˈluija  \
    #h(2em) ˈslɑva tʲeˈbʲɛ ˈboʒɛ
  ],
  [
    Autuas se mies, \
    joka ei vaella ju­ma­lattomain neuvossa.  \
    #h(2em) Halleluja, hal­leluja, halleluja!  \
    Sillä Herra tuntee van­hurskasten tien,  \
    mutta jumalattomain tie hukkuu.  \
    #h(2em) Hal­leluja, halleluja, halleluja!  \
    Pal­velkaa Her­raa pelolla  \
    ja iloitkaa hänen edessänsä vavistuksella.  \
    #h(2em) Halleluja, halleluja, halleluja!  \
    Autuaat ovat kaikki, jotka häneen turvaavat.  \
    #h(2em) Halleluja, halleluja, halleluja!  \

    Nouse, Herra! Pelasta minut, minun Ju­ma­lani!  \
    #h(2em) Halleluja, halleluja, halleluja!  \
    Her­rassa on pelastus.  \
    Sinun siunauksesi tulkoon sinun kansallesi.  \
    #h(2em) Halleluja, halleluja, hal­leluja!  \
    Kunnia olkoon Isälle ja Pojalle ja Py­häl­le Hengelle  \
    nyt, aina ja iankaikkisesti. Aamen.  \
    #h(2em) Halleluja, halleluja, hal­leluja!  \
    #h(2em) Kunnia olkoon sinulle, Jumala!
  ]
)

#part(
  "Свете тихий",
  titleFin: "Ehtooveisu",
  [
    Свете тихий святыя славы безсмертнаго  \
    #h(1em) Отца Небеснаго, Святаго, блаженнаго,  \
    #h(1em) Иисусе Христе!  \
    Пришедше на запад солнца,  \
    видевше свет вечерний  \
    Поем Отца, Сына и Святаго Духа, Бога.  \
    \
    Достоин еси во вся времена  \
    #h(1em) пет быти гласы преподобными,  \
    #h(1em) Сыне Божий, живот даяй;  \
    темже мир Тя славит.
  ],
  [
    ˈsvʲetʲe ˈtʲixʲij svʲaˈtɨja ˈslɑvɨ bʲɛzˈsmʲɛrtnago  \
    #h(1em) otˈtsɑ nʲeˈbʲɛsnago svʲaˈtɑgo blaˈʒɛnnago  \
    #h(1em) iiˈsusʲɛ xrʲiˈstʲɛ!  \
    prʲiˈʃɛdʃɛ nɑ ˈzɑpad ˈsontsa  \
    ˈvʲidʲɛfʃɛ ˈsvʲɛt vʲeˈtʃɛrnʲij  \
    poˈjɛm  otˈtsɑ ˈsɨna i svʲaˈtɑgo ˈduxa ˈboga  \
    \
    dosˈtoin jeˈsʲi vo fsʲa vrʲemʲɛˈnɑ  \
    #h(1em) pʲɛt ˈbɨtʲi ˈglɑsɨ prʲɛpoˈdobnɨmʲi  \
    #h(1em) ˈsɨnʲɛ ˈboʒɨj ʒɨˈvot daˈjaj  \
    ˈtʲɛmʒe mʲir tʲa ˈslɑvʲit
  ],
  [
    Oi Jeesus Kristus, sinä pyhän kunnian,  \
    #h(1em) iankaikkisen taivaallisen Isän, pyhän autuaan,  \
    #h(1em) ihana Valkeus.  \
    Elettyämme auringon laskuun,  \
    nähtyämme illan koiton  \
    me veisaten ylistämme Jumalaa,  \
    #h(1em) Isää, Poikaa ja Pyhää Henkeä.  \
    Jumalan Poika, Elämänantaja,  \
    #h(1em) kohtuullista on, että sinulle kaikkina aikoina  \
    #h(1em) hartain äänin ylistystä veisataan.  \
    Sen tähden maailma sinua ylistää.
  ]
)

#part(
  "Ныне отпущаеши",
  titleFin: "Vanhurskaan Simeonin rukous",
  [
    Ныне отпущаеши раба Твоего, Владыко,  \
    #h(1em) поглаголу Твоему, с миром,  \
    яко видеста очи мои спасение Твое,  \
    еже еси уготовал пред лицем всех людей,  \
    свет во откровение языков  \
    и славу людей Твоих Израиля.
  ],
  [
    ˈnɨnʲɛ otpuˈʃʲːɑjɛʃɨ raˈbɑ tvojɛˈgo vlaˈdɨko  \
    #h(1em) po glaˈgolu tvojɛˈmu s‿ˈmʲirom  \
    ˈjako ˈvʲidʲɛsta ˈotʃi moˈi spaˈsʲenʲijɛ tvoˈjɛ  \
    ˈjɛʒɛ jeˈsʲi ugoˈtoval prʲɛd lʲiˈtsɛm fsʲɛx lʲuˈdʲej  \
    svʲɛt vo otkroˈvʲenʲijɛ jaˈzɨkof  \
    i ˈslɑvu lʲuˈdʲej tvoˈix izˈrɑilʲa
  ],
  [
    Herra, nyt sinä annat palvelijasi rauhassa lähteä,  \
    #h(1em) niin kuin olet luvannut.  \
    Minun silmäni ovat nähneet sinun pelastuksesi,  \
    jonka olet kaikille kansoille valmistanut:  \
    valon, joka koittaa pakanakansoille,  \
    kirkkauden, joka lois­taa kansallesi Israelille.
  ]
)

#part(
  "Богородице Дево, радуйся",
  [
    Богородице Дево, радуйся,  \
    Благодатная Марие, Господь с Тобою.  \
    Благословенна Ты в женах,  \
    и  благословен  Плод чрева  Твоего,  \
    Яко Спаса родила еси душ наших.
  ],
  [
    bogoˈrodʲitse ˈdʲevo ˈrɑdujsʲa  \
    blagoˈdɑtnaja maˈrʲijɛ gosˈpodʲ s‿toˈboju  \
    blagosloˈvʲɛnna tɨ v‿ʒɛˈnɑx  \
    i blagosloˈvʲɛn plod ˈtʃrʲɛva tvojɛˈgo  \
    ˈjako ˈspɑsa rodʲiˈlɑ jeˈsʲi duʃ ˈnɑʃɨx
  ],
  [
    Iloitse, Jumalan Äiti, Neitsyt,  \
    armoitettu Maria!  Herra on sinun kanssasi.  \
    Siunattu olet sinä naisten joukossa,  \
    ja siunattu on sinun kohtusi hedelmä,  \
    sillä sinä olet synnyttänyt sielujemme pelastajan.
  ]
)


#osio("Aamupalvelus")

#part(
  "Шестопсалмие",
  titleFin: "Heksapsalmit",
  [
    Слава в вышних Богу,  \
    и на земли мир,  \
    в человецех благоволение.  \
    Господи, устне мои отверзеши,  \
    и уста моя возвестят хвалу Твою.
  ],
  [
    ˈslɑva v‿ˈvɨʃnʲix ˈbogu  \
    i nɑ zʲɛmˈlʲi mʲir  \
    f‿tʃɛloˈvʲɛtsɛx blagovoˈlʲenʲijɛ  \
    ˈgospodʲi ustˈnʲɛ moˈi otˈvʲɛrzʲɛʃɨ  \
    i usˈtɑ moˈja vozvʲɛsˈtʲat xvaˈlu tvoˈju
  ],
  [
    Kunnia olkoon Jumalalle korkeuksissa  \
    ja maassa rauha  \
    ja ihmisillä hyvä tahto.  \
    Herra, avaa minun huuleni,  \
    niin suuni julistaa sinun kunniaasi.
  ]
)

#part(
  "Хвалите имя Господне",
  [
    Хвалите имя Господне. Аллилуиа.  \
    Хвалите, раби, Господа. Аллилуиа.  \
    Благословен Господь от Сиона,  \
    живый во Иерусалиме. Аллилуиа.  \
    Исповедайтеся Господеви, яко Благ. Аллилуиа.  \
    Яко в век милость Его. Аллилуиа.  \
    \
    Исповедайтеся Богу Небесному. Аллилуиа.  \
    Яко в век милость Его. Аллилуиа. \
  ],
  [
    ˈxvɑlʲitʲɛ ˈimʲa ˈgospodnʲɛ alʲiˈluija  \
    ˈxvɑlʲitʲɛ raˈbʲi ˈgospoda alʲiˈluija  \
    blagosloˈvʲɛn gosˈpodʲ ot sʲiˈona  \
    ʒɨˈvɨj vo iɛrusaˈlʲimʲɛ alʲiˈluija  \
    ispoˈvʲɛdajtʲesʲa ˈgospodʲevʲi ˈjako blɑkʰ alʲiˈluija  \
    ˈjako v‿ˈvʲɛk ˈmʲilostʲ jɛˈgo alʲiˈluija  \
    \
    ispoˈvʲɛdajtʲesʲa ˈbogu nʲeˈbʲɛsnomu alʲiˈluija  \
    ˈjako v‿ˈvʲɛk ˈmʲilostʲ jɛˈgo alʲiˈluija \
  ],
  [
    Kiittäkää Herran nimeä,  \
    kiittäkää, Herran palvelijat! Halleluja! \
    Kiitetty on Herra Siionista,  \
    joka Jeru­­sa­lemissa asuu. Halleluja!  \
    Ylistäkää Herraa, sillä hän on hyvä,  \
    sillä hänen laupeutensa pysyy iankaikkisesti.  \
    #h(1em) Halleluja!  \
    Ylistäkää taivasten Ju­ma­laa,  \
    sillä hänen laupeutensa pysyy iankaik­kisesti.  \
    #h(1em) Halleluja!
  ]
)

#part(
  "Благословен еси, Господи",
//  titleFin: "Ylösnousemustropari",
  [
    Благословен еси, Господи,  \
    научи мя оправданием Твоим.  \

    Ангельский собор удивися,  \
    зря Тебе \
    #h(1em) в мертвых вменившася.  \
    #h(1em) смертную же, Спасе, крепость разоривша.  \
    и с собою Адама воздвигша,  \
    и от ада вся свобождша.  \

    Благословен еси, Господи,  \
    научи мя оправданием Твоим.  \

    Почто мира с милостивными слезами,  \
    о ученицы, растворяете?  \
    Блистаяйся во гробе Ангел  \
    #h(1em) мироносицам вещаше:  \
    „Видите вы гроб и уразумейте:  \
    Спас бо воскресе от гроба.“  \

    Благословен еси, Господи,  \
    научи мя оправданием Твоим.  \

    Зело рано мироносицы течаху  \
    ко гробу Твоему рыдающия,  \
    Но предста к ним Ангел и рече:  \
    „Рыдания время преста,  \
    не плачите,  \
    воскресение же апостолом рцыте.“  \

    Благословен еси, Господи,  \
    научи мя оправданием Твоим.  \

    Мироносицы жены, с миры пришедшия  \
    #h(1em) ко гробу Твоему, Спасе, рыдаху.  \
    Ангел же к ним рече, глаголя:  \
    „…Что с мертвыми живаго помышляете?  \
    Яко Бог бо вокресе от гроба.“  \

    Слава Отцу и Сыну и святому Духу.  \
    Поклонимся Отцу  \
    и Его Сынови, и Святому Духу,  \
    Святей Троице во едином существе,  \
    с серафимы зовуще:  \
    „свят, свят, свят еси, Господи.“  \
    И ныне и присно и во веки веков, аминь.  \

    Жизнодавца рождши, греха, Дево,  \
    #h(1em) Адама избавила еси.  \
    Радость же Еве в печали место подала еси;  \
    падшия же от жизни к сей направи,  \
    #h(1em) из Тебе воплотивыйся Бог и человек.  \
    \

    Аллилуиа, Аллилуиа, Аллилуиа.  \
    слава Тебе, Боже.  \
  ],
  [
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    nauˈtʃi mʲa opraˈvdɑnʲijɛm tvoˈim  \

    ˈɑngelʲskij soˈbor udʲiˈvʲisʲa  \
    zrʲa tʲeˈbʲɛ \
    #h(1em) v‿ˈmʲɛrtvɨx vmʲeˈnʲifʃasʲa  \
    #h(1em) ˈsmʲɛrtnuju ʒɛ ˈspɑsʲɛ ˈkrʲɛpostʲ razoˈrʲifʃa  \
    i s‿soˈboju aˈdɑma vozʲˈdvʲigʃa  \
    i ot ˈɑda fsʲa svoˈboʒdʃa  \

    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \

    poˈtʃto ˈmʲira s‿mʲiˈlostʲivnɨmʲi slʲɛˈzɑmʲi  \
    o utʃeˈnʲitsɨ rastvoˈrʲaetʲɛ?  \
    blʲisˈtɑjajsʲa vo ˈgrobʲɛ ˈɑngɛl  \
    #h(1em) mʲiroˈnosʲitsam vʲɛˈʃʲːɑʃɛ  \
    ˈvʲidʲitʲɛ vɨ ˈgrob i urazuˈmʲejtʲɛ  \
    ˈspɑs bo voˈskrʲesʲɛ ot ˈgroba  \

    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \

    ˈzʲɛlo ˈrɑno mʲironosʲitsɨ tʲɛˈtʃɑxu  \
    ko ˈgrobu tvojɛˈmu rɨˈdɑjuʃʲːija  \
    no prʲɛˈdstɑ k‿nʲim ˈɑngɛl i ˈrʲɛtʃɛ  \
    rɨˈdɑnʲija ˈvrʲemʲa prʲɛˈstɑ  \
    nʲɛ ˈplɑtʃitʲɛ  \
    voskrʲeˈsʲenʲijɛ ʒɛ aˈpostolom ˈrtsɨtʲɛ  \

    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \

    mʲiroˈnosʲitsɨ ˈʒɛnɨ s‿mʲirɨ prʲiˈʃɛdʃɨja  \
    #h(1em) ko ˈgrobu tvojɛˈmu ˈspɑsʲɛ rɨˈdɑxu  \
    ˈɑngɛl ʒɛ k‿nʲim ˈrʲɛtʃɛ ˈglɑgolʲa  \
    tʃto s‿ˈmʲɛrtvɨmʲi ʒɨˈvɑgo pomɨʃˈlʲajetʲɛ?  \
    ˈjako box bo ˈvoskrʲesʲɛ ot ˈgroba  \

    ˈslɑva otˈtsu i ˈsɨnu i svʲaˈtomu ˈduxu  \
    pokloˈnʲimsʲa otˈtsu  \
    i jɛˈgo ˈsɨnovʲi i svʲaˈtomu ˈduxu  \
    ˈsvʲatʲej ˈtroitsɛ vo jeˈdʲinom suʃʲːɛstvʲɛ  \
    s‿sʲɛraˈfʲimɨ zoˈvuʃʲːɛ  \
    svʲat svʲat svʲat jeˈsʲi ˈgospodʲi  \
    i ˈnɨnʲɛ i ˈprʲisno i vo ˈvʲekʲi vʲɛˈkof aˈmʲinʲ  \

    ʒɨznoˈdɑftsa ˈroʒdʃɨ grʲɛˈxɑ ˈdʲevo  \
    #h(1em) aˈdɑma izˈbɑvʲila jeˈsʲi  \
    ˈrɑdostʲ ʒɛ ˈjevʲɛ v‿pʲɛˈtʃɑlʲi ˈmʲɛsto podaˈlɑ jeˈsʲi  \
    ˈpɑdʃɨja ʒɛ ot ˈʒɨznʲi k‿sʲej naˈprɑvʲi  \
    #h(1em) iz tʲeˈbʲɛ voploˈtʲivɨjsʲa box i tʃɛloˈvʲɛk  \
    \

    alʲiˈluija alʲiˈluija alʲiˈluija  \
    ˈslɑva tʲeˈbʲɛ ˈboʒɛ!
  ],
  [
    Kiitetty olet sinä, Herra.  \
    Opeta minulle käskysi.  \

    Enkelein joukko ihmetellen katseli,  \
    kuinka sinä, oi Vapahtaja, \
    #h(1em) jouduit kuol­leitten joukkoon  \
    #h(1em) ja kuoleman voiman kui­ten­kin kukistit  \
    sekä kanssasi Aadamin ylös­ he­rätit,  \
    ja helvetistä kaikki ihmiset vapahdit.  \

    Kiitetty olet sinä, Herra.  \
    Opeta minulle käskysi.  \

    Miksi te naiset, te Kris­tuk­sen ope­tuslapset,  \
    mirhavoiteeseen valitus­kyy­ne­lei­tänne sekoitatte?  \
    Säteilevä enkeli ilmoit­ti haudasta  \
    #h(1em) mirhantuojille:  \
    ”Katsokaa hautaa ja ymmärtäkää,  \
    että Vapahtaja on noussut ylös haudasta.”  \

    Kiitetty olet sinä, Herra.  \
    Opeta minulle käskysi.  \

    Mirhantuojat, naiset itkien juoksivat  \
    sangen varhain sinun haudallesi,  \
    mutta enkeli ilmestyi heille ja sanoi:  \
    ”Ohi on mennyt itkun aika.  \
    Älkää itkekö  \
    vaan viekää apostoleille ylösnousemisen sanoma.”  \

    Kiitetty olet sinä, Herra,  \
    opeta minulle käskysi.  \

    Mirhantuojat kantaen mirhavoiteita  \
    tulivat sinun haudallesi, oi Vapahtaja, ja itkivät,  \
    mutta enkeli sanoi heille:  \
    ”Miksi te elävää kuolleitten joukosta haette,  \
    sillä hän, ollen Jumala, nousi ylös haudasta?”  \

    Kunnia olkoon Isälle ja Pojalle ja Pyhäl­le Hengelle.  \
    Kumartakaamme Isää  \
    ja hä­nen Poikaansa ja Pyhää Henkeä,  \
    Pyhää Kol­minaisuutta yhdessä olennossa,  \
    huutaen se­ra­fien kanssa:  \
    ”Pyhä, pyhä, pyhä olet si­nä, Her­ra.”  \
    Nyt, aina ja iankaikkisesti. Aamen.  \

    Oi Neitsyt!  Sinä Elämänantajan synnyttämisen \
    #h(1em) kautta päästit Aadamin vapaaksi synnistä  \
    ja Eevan murheen iloksi käänsit,  \
    mutta sinusta lihaksi tullut Jumalihminen  \
    #h(1em) saattoi elämään ne, jotka olivat elämästä  \
    #h(1em) langenneet pois.  \

    Halleluja, halleluja, halleluja!  \
    Kunnia ol­koon sinulle, Jumala!
  ]
)

#part(
  "Воскресение Христово видевше",
//  titleFin: "Ylösnousemusveisu",
  [
    Воскресение Христово видевше, \
    поклонимся Святому Господу Иису, \
    Единому безгрешному. \
    Кресту Твоему покланяемся, Христе, \
    и святое воскресение Твое \
    поем и славим: \
    Ты бо еси Бог наш,  \
    разве Тебе иного не знаем,  \
    Имя Твое именуем. \

    Приидите, вси вернии, \
    Поклонимся Святому \
    Христову воскресению:  \
    се бо приде крестом \
    радость всему миру,  \
    всегда благословяще Господа. \
    поем воскресение Его:  \
    распятие бо претерпев, \
    смертию смерть pазpуши.
  ],
  [
    voskrʲeˈsʲenʲijɛ xrʲiˈstovo ˈvʲidʲɛfʃɛ  \
    pokloˈnʲimsʲa svʲaˈtomu ˈgospodu iiˈsusu  \
    jeˈdʲinomu bʲɛzˈgrʲɛʃnomu  \
    krʲɛˈstu tvojɛˈmu poklaˈnʲajemsʲa xrʲiˈstʲɛ  \
    i svʲaˈtojɛ voskrʲeˈsʲenʲijɛ tvoˈjɛ \
    poˈjɛm  i ˈslɑvʲim  \
    tɨ bo jeˈsʲi ˈbox nɑʃ  \
    ˈrɑzvʲɛ tʲeˈbʲɛ iˈnogo nʲɛ ˈznɑjɛm  \
    ˈimʲa tvoˈjɛ imʲɛˈnujɛm  \

    prʲiiˈdʲitʲɛ fsʲi ˈvʲɛrnʲii  \
    pokloˈnʲimsʲa svʲaˈtomu \
    xrʲisˈtovu voskrʲeˈsʲenʲiju  \
    sʲɛ bo prʲiˈidʲɛ krʲɛˈstom \
    ˈrɑdostʲ fsʲɛˈmu ˈmʲiru  \
    fsʲɛgˈdɑ blagosloˈvʲaʃʲːɛ ˈgospoda  \
    poˈjɛm  voskrʲeˈsʲenʲijɛ jɛˈgo  \
    raˈspʲatʲijɛ bo prʲetʲɛrˈpʲɛf  \
    ˈsmʲɛrtʲiju ˈsmʲɛrtʲ razˈruʃɨ
  ],
  [
    Nähtyämme Kristuksen ylösnouse­mi­sen  \
    kumartakaamme pyhää Her­raa Jeesusta,  \
    ainoaa synnitöntä.  \
    Sinun ris­til­le­si me kumarramme, oi Kristus,  \
    ja sinun py­hää ylösnousemistasi \
    veisuilla ylistämme.  \
    Sillä sinä olet meidän Jumalamme.  \
    Paitsi sinua emme toista tunne,  \
    Sinun nimeäsi avuk­si huudamme.  \

    Tulkaa, kaikki uskovaiset,  \
    kumartaen kunnioittakaamme \
    Kristuksen py­hää ylösnousemista,  \
    sillä katso, ristin kaut­ta tuli \
    ilo kaikkeen maailmaan.  \
    Kiittäen ai­na Herraa  \
    me veisuilla ylistämme hänen ylösnousemistansa,  \
    sillä kärsittyänsä meidän edes­tämme ristin vaivat  \
    hän kuolemallansa kuoleman kukisti.
  ]
)

#part(
  "Величит Душа Mоя Господа",
  titleFin: "Jumalansynnyttäjän kiitosvirsi",
  [
    Bеличит Душа Моя Господа,  \
    и возрадовася дух Мой \
    о Бозе Спасе Моем.

    #h(2em) Честнейшую Херувим \
    #h(3em) и славнейшую без сравнения Серафим,  \
    #h(3em) без истления Бога Слова рождшую,  \
    #h(3em) сущую Богородицу, \
    #h(3em) Тя величаем.  \

    Яко призре \
    на смирение рабы Своея,  \
    Се бо от ныне \
    ублажат Мя вси роди.

    #h(2em) #text(style: "italic")[Честнейшую Херувим ...]

    Яко сотвори Мне величие Сильный,  \
    и свято имя Его,  \
    и милость Его в роды родов  \
    боящимся Его.

    #h(2em) #text(style: "italic")[Честнейшую Херувим ...]

    Низложи сильныя со престол  \
    и вознесе смиренныя;  \
    алчущия исполни благ  \
    и богатящияся отпусти тщи.

    #h(2em) #text(style: "italic")[Честнейшую Херувим ...]

    Восприят Израиля отрока Своего,  \
    помянути милости,  \
    якоже глагола ко отцем нашим, \
    #h(1em) Аврааму и семени его, \
    #h(1em) даже до века.

    #h(2em) #text(style: "italic")[Честнейшую Херувим ...]
  ],
  [
    vʲeˈlʲitʃit duˈʃɑ moˈja ˈgospoda  \
    i vozˈrɑdovasʲa dux moj \
    o ˈbozʲɛ ˈspɑsʲɛ moˈjɛm  \

    #h(2em) tʃɛstˈnʲejʃuju xɛruˈvʲim  \
    #h(3em) i slavˈnʲejʃuju bʲɛz sravˈnʲenʲija sʲɛraˈfʲim  \
    #h(3em) bʲɛz isˈtlʲenʲija ˈboga ˈslova ˈroʒdʃuju  \
    #h(3em) ˈsuʃʲːuju bogoˈrodʲitsu \
    #h(3em) tʲa vʲelʲiˈtʃɑjɛm  \

    ˈjako prʲiˈzrʲɛ \
    nɑ smʲiˈrʲenʲijɛ raˈbɨ svojeˈja  \
    sʲɛ bo ot ˈnɨnʲɛ \
    ublaˈʒɑt mʲa fsʲi ˈrodʲi

    #h(2em) #text(style: "italic")[ tʃɛstˈnʲejʃuju xɛruˈvʲim ...]

    ˈjako sotvoˈrʲi mnʲɛ vʲeˈlʲitʃijɛ ˈsʲilʲnɨj  \
    i ˈsvʲato ˈimʲa jɛˈgo  \
    i ˈmʲilostʲ jɛˈgo v‿ˈrodɨ roˈdof  \
    boˈjaʃʲːimsʲa jɛˈgo  \

    #h(2em) #text(style: "italic")[ tʃɛstˈnʲejʃuju xɛruˈvʲim ...]

    nʲizloˈʒɨ ˈsʲilʲnɨja so prʲɛˈstol  \
    i voznʲeˈsʲɛ smʲiˈrʲɛnnɨja  \
    ˈɑltʃuʃʲːija isˈpolnʲi blɑkʰ  \
    i bogaˈtʲaʃʲːijasʲa otpusˈtʲi tʃʲːi  \

    #h(2em) #text(style: "italic")[ tʃɛstˈnʲejʃuju xɛruˈvʲim ...]

    vosprʲiˈjat izˈrɑilʲa ˈotroka svojɛˈgo  \
    pomʲaˈnutʲi ˈmʲilostʲi  \
    ˈjakoʒɛ glaˈgola ko otˈtsem ˈnɑʃɨm  \
    #h(1em) avraˈɑmu i ˈsʲemʲenʲi jɛˈgo \
    #h(1em) ˈdɑʒɛ do ˈvʲɛka

    #h(2em) #text(style: "italic")[ tʃɛstˈnʲejʃuju xɛruˈvʲim ...]
  ],
  [
    Minun sieluni suuresti ylistää Herraa,  \
    ja minun henkeni riemuitsee \
    Juma­lasta, Vapahtajastani.

    #h(2em) Me ylistämme sinua, \
    #h(3em) joka olet kerubeja kunnioitettavampi  \
    #h(3em) ja serafeja ver­rattomasti jalompi,  \
    #h(3em) sinua, puhdas Neit­syt, Sanan synnyttäjä,  \
    #h(3em) sinua, totinen Juma­lan­synnyttäjä.  \

    Sillä hän on katsonut \
    palvelijattarensa alhaisuuteen.  \
    Katso, tästedes kaikki suku­polvet \
    ylistävät minua autuaaksi.  \

    #h(2em) #text(style: "italic")[Me ylistämme sinua, ...]

    Sillä Voimallinen on tehnyt minulle suuria,  \
    ja hänen nimensä on pyhä,  \
    ja hänen lau­peu­tensa pysyy polvesta polveen  \
    niille, jotka häntä pelkäävät.  \

    #h(2em) #text(style: "italic")[Me ylistämme sinua, ...]

    Hän on kukistanut valtiaat valtaistuimilta  \
    ja korottanut alhaiset.  \
    Nälkäiset hän on täyttänyt hyvyyksillä,  \
    ja rikkaat hän on lähet­tä­nyt tyhjinä pois.  \

    #h(2em) #text(style: "italic")[Me ylistämme sinua, ...]

    Hän on ottanut huomaansa palvelijansa Is­raelin  \
    muistaaksensa laupeuttaan  \
    Abra­hamia ja hänen siementänsä kohtaan \
    #h(1em) iankaik­kisesti, \
    #h(1em) niin kuin hän on meidän isillemme puhunut.

    #h(2em) #text(style: "italic")[Me ylistämme sinua, ...]
  ]
)

#part(
  "Славословие великое",
  titleFin: "Suuri ylistysveisu",
  [
    Слава в вышних Богу,  \
    и на земли мир,  \
    в человецех благоволение.  \
    Хвалим Тя, благословим Тя,  \
    кланяем Ти ся, славословим Тя,  \
    благодарим Тя, великия ради славы Твоея.  \
    \

    Господи Царю Небесный,  \
    Боже Отче Вседержителю,  \
    Господи, Сыне Единородный, Иисусе Христе,  \
    и Святый Душе.  \
    Господи Боже, Агнче Божий, Сыне Отечь,  \
    вземляй грех мира, помилуй нас;  \
    вземляй грехи мира,  \
    прийми молитву нашу,  \
    Седяй одесную Отца,  \
    помилуй нас.  \
    Яко Ты еси един Свят,  \
    Ты еси един Господ, Иисус Христос,  \
    в славу Бога Отца. Аминь.  \

    На всяк день благословлю Тя  \
    и восхвалю имя Твое  \
    во веки и в век века.  \
    Сподоби, Господи, в день сей  \
    без греха сохранитися нам.  \
    Благословен еси, Господи, Боже Отец наших \
    и хвально и прославлено имя Твое  \
    во веки, Аминь.  \

    Буди, Господи, милость, Твоя на нас,  \
    якоже уповахом на Тя.  \
    Благословен еси, Господи,  \
    #h(1em) научи мя оправданием Твоим.  \
    Благословен еси, Господи,  \
    #h(1em) научи мя оправданием Твоим.  \
    Благословен еси, Господи,  \
    #h(1em) научи мя оправданием Твоим.  \

    Господи, прибежище был еси нам в род и род.  \
    Аз рех: Господи, помилуй мя,  \
    исцели душу мою,  \
    яко согреших Тебе.  \
    Господи, к Тебе прибегох.  \
    научи мя творити волю Твою,  \
    яко Ты еси Бог мой:  \
    яко у Тебе источник живота,  \
    во свете Твоем узрим свет.  \
    Пробави милость Твою ведущим Тя.  \

    Святый Боже, Святый Крепкий,  \
    #h(1em) Святый Безсмертный, помилуй нас. \
    Святый Боже, Святый Крепкий,  \
    #h(1em) Святый Безсмертный, помилуй нас. \
    Святый Боже, Святый Крепкий,  \
    #h(1em) Святый Безсмертный, помилуй нас.

    Слава Отцу и Сыну и Святому Духу,  \
    и ныне и присно и во веки веков, Аминь.  \

    Святый Безсмертный, помилуй нас.  \
    Святый Боже, Святый Крепкий,  \
    #h(1em) Святый Безсмертный, помилуй нас.
  ],
  [
    ˈslɑva v‿ˈvɨʃnʲix ˈbogu  \
    i nɑ zʲɛmˈlʲi mir  \
    f‿tʃɛloˈvʲɛtsɛx blagovoˈlʲenʲijɛ  \
    xvaˈlʲim tʲa blagosloˈvʲim tʲa  \
    ˈklɑnʲajɛm tʲi sʲa slavoˈslovʲim tʲa  \
    blagodaˈrʲim tʲa vʲeˈlʲikʲija ˈrɑdʲi ˈslɑvɨ tvojeˈja  \
    \

    ˈgospodʲi tsarˈju nʲeˈbʲɛsnɨj  \
    ˈboʒɛ otˈtʃɛ fsʲedʲɛrˈʒɨtʲelʲu  \
    ˈgospodʲi ˈsɨnʲɛ jedʲinoˈrodnɨj iiˈsusʲɛ xrʲisˈtʲɛ  \
    i svʲaˈtɨj duˈʃɛ  \
    ˈgospodʲi ˈboʒɛ ˈɑgntʃɛ ˈboʒɨj ˈsɨnʲɛ oˈtʲɛtʃ  \
    ˈvzʲɛmlʲaj grʲɛx ˈmʲira poˈmʲiluj nɑs  \
    ˈvzʲɛmlʲaj grʲeˈxʲi ˈmʲira  \
    prʲijˈmʲi moˈlʲitvu ˈnɑʃu  \
    sʲeˈdjaj odʲɛsˈnuju otˈtsɑ  \
    poˈmʲiluj nɑs  \
    ˈjako tɨ jeˈsʲi jeˈdʲin svʲat  \
    tɨ jeˈsʲi jeˈdʲin gosˈpodʲ iiˈsus xrʲisˈtos  \
    f ˈslɑvu ˈboga otˈtsɑ aˈmʲinʲ  \

    nɑ fsʲak dʲenʲ blagoslovˈlʲu tʲa  \
    i vosxvaˈlʲu ˈimʲa tvoˈjɛ  \
    vo ˈvʲekʲi i v‿vʲɛk ˈvʲɛka  \
    spoˈdobʲi ˈgospodʲi v‿dʲenʲ sʲej  \
    bʲɛz grʲeˈxa soxraˈnʲitʲisʲa nɑm  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi ˈboʒɛ oˈtʲɛts ˈnɑʃɨx  \
    i ˈxvɑlʲno i proˈslɑvlʲɛno ˈimʲa tvoˈjɛ  \
    vo ˈvʲekʲi aˈmʲinʲ  \

    ˈbudʲi ˈgospodʲi ˈmʲilostʲ tvoˈja nɑ nɑs  \
    ˈjakoʒɛ upoˈvɑxom nɑ tʲa  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    #h(1em) nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    #h(1em) nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \
    blagosloˈvʲɛn jeˈsʲi ˈgospodʲi  \
    #h(1em) nauˈtʃi mʲa opravˈdɑnʲijɛm tvoˈim  \

    ˈgospodʲi prʲiˈbʲɛʒɨʃʲːɛ bɨl jeˈsʲi nɑm v‿rod i rod  \
    ɑz rʲɛx ˈgospodʲi poˈmʲiluj mʲa  \
    istseˈlʲi ˈduʃu moˈju  \
    ˈjako sogrʲɛˈʃɨx tʲeˈbʲɛ  \
    ˈgospodʲi k‿tʲeˈbʲɛ prʲibʲɛˈgox  \
    nauˈtʃi mʲa tvoˈrʲitʲi ˈvolʲu tvoˈju  \
    ˈjako tɨ jeˈsʲi box moj  \
    ˈjako u tʲeˈbʲɛ isˈtotʃnʲik ʒɨvoˈtɑ  \
    vo ˈsvʲetʲɛ tvoˈjɛm ˈuzrʲim svʲɛt  \
    proˈbɑvʲi ˈmʲilostʲ tvoˈju ˈvʲɛduʃʲːim tʲa  \

    svʲaˈtɨj ˈboʒɛ svʲaˈtɨj ˈkrʲɛpkʲij  \
    #h(1em) svʲaˈtɨj bʲɛzˈsmʲɛrtnɨj poˈmʲiluj nɑs \
    svʲaˈtɨj ˈboʒɛ svʲaˈtɨj ˈkrʲɛpkʲij  \
    #h(1em) svʲaˈtɨj bʲɛzˈsmʲɛrtnɨj poˈmʲiluj nɑs \
    svʲaˈtɨj ˈboʒɛ svʲaˈtɨj ˈkrʲɛpkʲij  \
    #h(1em) svʲaˈtɨj bʲɛzˈsmʲɛrtnɨj poˈmʲiluj nɑs

    ˈslɑva otˈtsu i ˈsɨnu i svʲaˈtomu ˈduxu  \
    #h(1em) i ˈnɨnʲɛ i ˈprʲisno i vo ˈvʲekʲi vʲɛˈkof aˈmʲinʲ  \

    svʲaˈtɨj bʲɛzˈsmʲɛrtnɨj poˈmʲiluj nɑs  \
    svʲaˈtɨj ˈboʒɛ svʲaˈtɨj ˈkrʲɛpkʲij  \
    #h(1em) svʲaˈtɨj bʲɛzˈsmʲɛrtnɨj poˈmʲiluj nɑs
  ],
  [
    Kunnia olkoon Jumalalle korkeuksissa  \
    ja maassa rauha  \
    ja ihmisillä hyvä tahto.  \
    Me kiitämme sinua, me ylistämme sinua,  \
    kumarramme sinua, kunnioitamme sinua,  \
    kiitosta kannamme sinulle sinun suu­ren  \
    #h(1em) kunniasi tähden.  \

    Herra, Kuningas, taivaallinen Jumala,  \
    Isä, Kaikkivaltias.  \
    Herra, ainokainen Poika Jeesus Kristus  \
    ja Pyhä Henki.  \
    Herra, Jumala, Jumalan Karitsa, Isän Poika,  \
    joka otat pois maailman synnin, armahda meitä.  \
    Sinä, joka maail­man synnit otat pois,  \
    ota vastaan meidän ru­kouksemme!  \
    Sinä, joka Isän oikealla puolella istut,  \
    armahda meitä!  \
    Sillä sinä olet ainoa pyhä,  \
    sinä olet ainoa Herra, Jeesus Kristus,  \
    Isän Jumalan kunniaksi. Aamen.  \

    Joka päivä minä ylistän sinua  \
    ja kiitän sinun nimeäsi  \
    iäti ja iankaikkisesti.  \
    Suo, Her­ra, että me tämän päivän  \
    syntiä tekemättä viet­täisimme!  \
    Kiitetty olet sinä, Herra, meidän isäimme Jumala,  \
    sekä kiitetty ja ylistetty on sinun nimesi  \
    iankaikkisesti. Aamen.  \

    Olkoon sinun laupeutesi, Herra, meidän päällämme,  \
    niin kuin me sinuun uskallamme.  \
    Kiitetty olet sinä, Herra,  \
    #h(1em) opeta minua käs­kyjäsi tuntemaan. \
    Kiitetty olet sinä, Herra,  \
    #h(1em) opeta minua käs­kyjäsi tuntemaan. \
    Kiitetty olet sinä, Herra,  \
    #h(1em) opeta minua käs­kyjäsi tuntemaan. \

    Herra, sinä olet meidän turvamme suvusta sukuun!  \
    Minä sanoin: Herra, armahda minua,  \
    pa­ranna minun sieluni,  \
    sillä minä olen syntiä teh­nyt sinua vastaan.  \
    Herra, sinun puoleesi minä käännyn,  \
    opeta minua sinun tahtoasi täyttämään,  \
    sillä sinä olet minun Jumalani,  \
    sillä sinussa on elämän lähde;  \
    sinun val­keu­dessasi me valkeuden näemme.  \
    Jatka lau­peuttasi niille, jotka sinut tuntevat!  \

    Pyhä Jumala, pyhä Väkevä,  \
    #h(1em) pyhä Kuolematon, armahda meitä! \
    Pyhä Jumala, pyhä Väkevä,  \
    #h(1em) pyhä Kuolematon, armahda meitä! \
    Pyhä Jumala, pyhä Väkevä,  \
    #h(1em) pyhä Kuolematon, armahda meitä!

    Kunnia olkoon Isälle ja Pojalle ja Pyhäl­le Hengelle  \
    #h(1em) nyt, aina ja iankaikkisesti. Aamen.  \

    Pyhä Kuolematon, armahda meitä!  \
    Pyhä Ju­mala, pyhä Väkevä,  \
    #h(1em) pyhä Kuolematon, ar­mah­­da meitä!
  ]
)


#part(
  "Тропарь. Днесь Спасение",
  titleFin: "Ylösnousemustropari I",
  [
    Днесь спасение миру бысть,  \
    поем Воскресшему из гроба  \
    #h(1em) и Начальнику жизни нашея:  \
    разрушив бо смертию смерть,  \
    победу даде нам и велию милость.
  ],
  [
    dnʲesʲ spaˈsʲenʲijɛ mʲiˈru bɨstʲ  \
    poˈjɛm  vosˈkrɛsʃɛmu iz ˈgroba  \
    #h(1em) i naˈtʃɑlʲnʲiku ˈʒɨznʲi ˈnɑʃɛja  \
    razruˈʃɨv bo ˈsmʲɛrtʲiju ˈsmʲɛrtʲ  \
    poˈbʲɛdu daˈdʲɛ nɑm i ˈvʲelʲiju ˈmʲilostʲ
  ],
  [
    Tänä päivänä on maailmalle pelastus tullut.  \
    Veisatkaamme ylistystä haudasta ylösnousseelle  \
    #h(1em) elämämme Päämiehelle,  \
    sillä Hän, kuolemallansa kukistettuaan kuoleman,  \
    antoi meille voiton ja suuren laupeuden.
  ]
)

#part(
  "Тропарь. Воскрес из гроба",
  titleFin: "Ylösnousemustropari II",
  [
    Воскрес из гроба и узы растерзал еси ада, \
    разрушил еси осуждение смерти, Господи, \
    вся от сетей врага избавивый; \
    явивый же Себе апостолом Твоим, \
    послал еси я на проповедь, \
    и теми мир Твой подал еси вселенней, \
    едине Многомилостиве.
  ],
  [
    vosˈkrʲɛs iz ˈgroba i ˈuzɨ rastʲɛrˈzɑl jeˈsʲi ˈɑda \
    razruˈʃɨl jeˈsʲi osuʒˈdʲenʲijɛ ˈsmʲɛrtʲi ˈgospodʲi \
    fsʲa ot sʲeˈtʲej vraˈgɑ izˈbɑvʲivɨj \
    jaˈvʲivɨj ʒɛ sʲeˈbʲɛ aˈpostolom tvoˈim \
    poˈslɑl jeˈsʲi ja nɑ ˈpropovʲedʲ \
    i ˈtʲemʲi mʲir tvoj poˈdɑl jeˈsʲi fsʲeˈlʲɛnnʲej \
    jeˈdʲinʲɛ mnogoˈmʲilostʲivʲɛ
  ],
  [
    Noustuasi haudasta ja katkaistuasi helvetin kahleet \
    Sinä, oi Herra, poistit kuoleman tuomion \
    ja päästit kaikki vihollisen verkoista. \
    Sinä ilmaisit itsesi apostoleillesi \
    ja lähetit heidät saarnaamaan \
    sekä heidän kauttansa annoit rauhan maailmalle, \
    oi ainoa, ylen armollinen.
  ]
)


#osio("Ensimmäinen hetki")

#part(
  "Взбранной воеводе",
  [
    Взбранной воеводе победительная, \
    #h(1em) яко избавльшеся от злых, \
    #h(1em) благодарственная восписуем Ти раби Твои, \
    #h(1em) Богородице; \
    но яко имущая державу непобедимую, \
    #h(1em) от всяких нас бед свободи, \
    да зовем Ти: \
    радуйся, невесто неневестная.
  ],
  [
    ˈvzbrannoj vojɛˈvodʲɛ pobʲeˈdʲitʲelʲnaja \
    #h(1em) ˈjako izˈbɑvlʲʃɛsʲa ot zlɨx \
    #h(1em) blagoˈdɑrstvʲɛnnaja vospʲiˈsujɛm tʲi raˈbʲi tvoˈi \
    #h(1em) bogoˈrodʲitsɛ \
    no ˈjako iˈmuʃʲːaja dʲɛrˈʒɑvu nʲɛpobʲeˈdʲimuju \
    #h(1em) ot ˈfsʲɑkʲix nɑs bʲɛd svoboˈdʲi \
    da zoˈvʲɛm tʲi \
    ˈrɑdujsʲa nʲeˈvʲɛsto nʲenʲeˈvʲɛstnaja
  ],
  [
    Sinulle, oi Jumalansynnyttäjä, \
    #h(1em) voitolliselle sotajoukkojen johtajalle, \
    #h(1em) me, Sinun palvelijasi vaaroista päästyämme \
    #h(1em) kiitokseksi veisaamme voittovirren. \
    Pelasta meidät kaikista vaaroista, \
    #h(1em) sillä Sinulla on valta voittamaton, \
    että huutaisimme Sinulle: \
    Iloitse, Morsian, aviota tuntematon
  ]
)

#v(1fr)
#text(style: "italic")[
  Suomenkieliset käännökset: Ortodoksinen hautauskirja (onl.fi) & Liturgiset tekstit (ortodoksi.net) & Pentekostarion (ecmr.fi) \
  Koonnut ja translitteroinut Mikko Kouhia, v1.2 2024-09-19.
]

/*
#set page(columns: 2)
#set par(
  first-line-indent: 1em,
  justify: true,
)
#show par: set block(spacing: 0.65em)
#show table.cell.where(y: 0): set text(style: "normal", weight: "bold")
#set text(lang: "fi")

= Kirkkoslaavin ääntämyksestä

== Konsonantit

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: none,
  row-gutter: -4pt,
  column-gutter: (-6pt, auto),
  table.header(
    [],
    [],
    [IPA],
    [Esimerkki],
  ),
  [Б], [б], [b] , [],
  [В], [в], [v] , [],
  [Г], [г], [ɡ] , [],
  [Д], [д], [d] , [],
  [Ж], [ж], [ʒ (tai ʐ)] , [],
  [З], [з], [z] , [],
  [Й], [й], [j (tai ĭ)] , [],
  [К], [к], [k] , [],
  [Л], [л], [l (tai ɫ)] , [],
  [М], [м], [m] , [],
  [Н], [н], [n] , [],
  [П], [п], [p] , [],
  [Р], [р], [r] , [],
  [С], [с], [s] , [],
  [Т], [т], [t] , [],
  [Ф], [ф], [f, fʲ] , [серафимы [sʲɛraˈfʲimɨ]],
  [Х], [х], [x, xʲ] , [Христу [xrʲiˈstu], тихий [ˈtʲixʲij]],
  [Ц], [ц], [ts (tai t͡s)] , [Цареви [tsaˈrʲevʲi]],
  [Ч], [ч], [tʃ (tai t͡ɕ)] , [человек [tʃɛloˈvʲɛk]],
  [Ш], [ш], [ʃ (tai ʂ)] , [нашему [ˈnɑʃɛmu]],
  [Щ], [щ], [ʃʲː (tai ɕː)] , [вещаше [vʲɛˈʃʲːɑʃɛ]],
)

Useimmilla konsonanteista on suomen kielessä esiintyvä vastinpari kuten yllä esitetty, josta poikkeuksena ovat erityisesti moninaiset s-kirjaimet:
- с [s] äännetään hieman suomalaista s:ää terävämpänä s-kirjaimena
- з [z] äännetään soinnillisena s-kirjaimena
- ц
- ч
- ш
- щ
- ж

Lisäksi erityisesti mainittakoon
- й
- х

Suurin osa konsonanteista voi ääntyä joko kovina tai liudentuneina, riippuen konsonanttia seuraavasta vokaalista: konsonantin jälkeen tulevat е [e], и [i], я [ja] ja ю [ju] liudentavat edeltävää konsonanttia, jolloin lausuttaessa kielen keskiosa kohoaa kohti kovaa kitalakea. Samoin pehmeä merkki ь liudentaa edeltävän konsonantin, mikä tapahtuu usein sanan lopussa. Translitteroidussa IPA-merkistössä liudentumista ilmaistaan konsonantin jälkeen tulevalla [ʲ]-merkillä.
Liudentumista ei tarvitse ääntäessä liioitella, vaan liudentuneet konsonantitkin ovat varsin lähellä niiden suomalaisia vastinpareja.

Konsonantit щ [ʃʲː] ja ч [tʃ] sekä "puolikonsonantti" й [j] ovat aina liudentuneita, samoin kuin konsonantit ж [ʒ], ш [ʃ] ja ц [ts] ovat aina liudentumattomia.

== Vokaalit

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: none,
  row-gutter: -4pt,
  column-gutter: (-6pt, auto),
  table.header[][][IPA][Esimerkki],
  [А], [а], [a (painoton)\ ɑ (painollinen)], [],
  [Е], [е], [je, e\ jɛ, ɛ], [
    еси [jeˈsʲi], веки [ˈvʲekʲi], \
    Ему [jɛˈmu], зело [zʲɛˈlo], Боже [ˈboʒɛ]
  ],
  [И], [и], [i, ɨ], [имя [ˈimʲa], мир [mʲir], наших [ˈnɑʃɨx]],
  [О], [о], [o], [],
  [У], [у], [u], [],
  [Ы], [ы], [ɨ], [Ты [tɨ]],
  [Ю], [ю], [ju,  ◌ʲu], [Твою [tvoˈju], волю [ˈvolʲu]],
  [Я], [я], [ja,  ◌ʲa], [яко [ˈjako], тя [tʲa]],
)

Vokaalit ovat pitkälti samoin ääntyviä kuin suomessa, erityistapauksina seuraavat:
- ы: taka-i [ɨ] ääntyy suomalaisten i:n ja y:n välimuotona: yksi tapa hahmottaa äänteen tuottaminen on asettaa suu samaan asentoon kuin i:tä ääntäessä ja lausua y siitä positiosta.
- ю
- я

Vokaaleista о (o) ja у (u) ääntyvät aina samalla tavalla, kun taas sanapaino muuttaa vokaalia а: painollinen а lausutaan takaisena suomalaisena [ɑ]:na ja painoton а kuten italian etinen [a]. Sanapainot on merkitty tässä translitteroituun tekstiin painotusta edeltävällä ˈ-merkillä.

Vokaali е on sananalkuisena, kovien konsonanttien välissä ja pehmeän konsonantin jälkeen keskivokaali [ɛ], mutta vokaalia е seuraava pehmeä konsonantti muuttaa ääntämyksen italialaiseksi [e]:ksi.
Vokaalit е [je, jɛ], я [ja] ja ю [ju] lausutaan useimmiten j-kirjaimen kanssa, kun taas pehmeää konsonanttia seuraavissa vokaaleissa е, я ja ю ei lausuta j-äännettä, vaan se korvautuu edeltävän konsonantin liudentumisella.

== Poikkeukset kirjoitusasusta

Kirkkoslaavia äännetään pitkälti siten kuin se on kirjoitettu.

Kovien konsonanttien ж (ʒ), ш (ʃ) ja ц (ts) jälkeen tuleva и lausutaan taka-i:nä ы [ɨ], ja näiden konsonanttien jäljessä е-vokaalissa ei lausuta j-kirjainta ollenkaan (esim. же [ʒɛ]).

Useilla konsonanteilla on soinnillinen ja soinniton vastinpari.
Sanan lopussa (ja soinnittomien s:ien edellä?)
вс -> [fs]
вш -> [fʃ]
вч -> [ftʃ]
вц -> [vts]


Erotuksena nykyvenäjästä,
ei vokaalien
*/
