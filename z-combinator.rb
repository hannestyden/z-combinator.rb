puts ->() {

  ->(improver) {
    improver.(improver)
  }.(
    ->(improver) {
      ->(n) { n.zero? ? 1 : n * improver.(improver).(n - 1) }
    }
  ).(1800) # Jim could go to 2000 without hitting the bottom of the stack.

}.()

# >> 6126156018556025725373448432062150190617685463641516717347336001183978770950590188216099274271419702089146039222905588132788316090145639419565359465751120933368204250165971186541228642399548678113301285329466889539669585298842202030038266377942634348172422128845899523524007060708436075867824914370584818135572542901990981381748854765376956713812082527141187780748098001088805135997714494601436123324060825507122888663228675426578208137356299271034548221806482870362505644553555468602541119639117508242446333481096777087215454946174598007055558014802095738009938046907540683177911845459342450768444665783267847423231847287939282731876245722941667384021689692005943913656214738629097715481516947023509520345699411966681930114836104202361702232958095256660316065446689672551246729067566728432516286515548645068362804621399643794426839257412879629256654647515369857161563735818954023349641945202917802778318268365779067484245759040889135029989238675110231742350204030559273999084699749364978921005229225164171765235389013433168691746406007987841598116717417614891349501161316244831357905067389849981873381127444023722075072185665120395233762456306187659652140297884264914763709339538650270816983046998560824282577170463091451081574728564523452730122601258779328796631335495434152361201569502211069209715529448748920163310732980205845966631593497272152851080707650172169024834845042099204289730111523918784414578609754039654452453944929145859476544976247666820934521733269599074356385035690813464498597851786423748133653867674916830211463512637419547359646821778223555168713534823486433638568771759856094887229018606729309695003271527450454439673435107235657355587078052187431535283595350504971211677139598667129254957241689636566560293649521901056022504328593707850045374756214899020162914360447945139256758176529307903304443203792303350230911219655390229134279979916776182477048915235139943248726684342538800669594676317945204219409066824728745337833837100328833801359690332231471528972696661903949583992812943862756955445495454276189722354417817060626082346156081731622741041101911226477780959682385866416985984090652727327075846914442739640592402358713768400054003046568900676521883640716787857620075210004386718469542846459837120275269932423847475238996963088282176495811652032637407307695412956306922661746468154038454271787505711895265772048567892258096236137669078788576029385411883178944339587755998712763000695922169728381909392951932566228932884107795017869231461719547410776067671471765969515208434345952589540599601366531640037652369610366692168888205856881138112514710162712376584825144542605984300552345519568747219384206733638187540807034468256970556233201097466042765940754849682064223064800646178100490699436734138451777213113264563062725280659626780695629890812277047692945100324587780276148196334355016546976083159879957658687105741562479929005837061361618619046626680986303492511178022787902890093231418519174284563829948274191158544527401586377304125588352813490698171519834750018417998741611568242921341930124230470937452785765717160704574608540003007145095793941220402112055876109137102213837609292644535917903451279929064044437163824247673774705205411370828306717336761877828146213486665970609891121902860021410414232193152961784057606996640632402860973136679620188493301953558568101922019366371057578573496045863335963354002514479749796524471415680776266629861510901184061900461053088087991527617718843682156658843212447852118758384162184878967282302383003565146903694420710315358621828549018207193088859711702547295808718727137145013284334713431153305628228331800781756029639443976438232371418906933451338712686870132856882347282658034785264044834150109824695957455014916844985079587533747018033817334495589657316563066061532446492895825304378143086928796050468587490486726442113015314127679090947709561995754256280221716630361507302950859660522898518953133985822039182826223780563300125302439936809382048761483749370848806813996259032389078241659470920992214680170933933688739681827715285971018823101931060932352079874631236305185580150690418581208221912289707699756516107530205646821901636851293344118280372178804253044790823040781902341135521317185559655832398676757954070220427470293960969701264110543346951303994509346592392087686528882343019776824885932928075364809751019612901931578742096975522005098667285838322527486716813964711688757778498091818121178080327514251605319261920996156708821190545483963909088856853704247864679149214970966039390852039224577945379655884055137362917443641881998273918396268916228828861190691692919051782425415569972205524038808615101994287621186222696120648621076995112960000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
