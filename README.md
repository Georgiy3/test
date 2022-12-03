# Test log

## More info in Github.Actions: [![statusbadge](../../actions/workflows/buildtest.yml/badge.svg?branch=main&event=pull_request)](../../actions/workflows/buildtest.yml)

### Install dependencies           
Done
            
### Compile complited (build log, can be empty):


### Log:
Test mem:<br/>addr = xxxxxxxxxxxxxx, data = zzzz, ctrl = z, time = 0<br/>time = 1<br/>addr = 00000000000000, data = 1234, ctrl = 3, time = 1<br/>addr = 00000000000000, data = 0000, ctrl = 3, time = 3<br/>addr = 00000000000000, data = aa66, ctrl = 3, time = 5<br/>addr = 00000000000000, data = ffff, ctrl = 3, time = 7<br/>addr = 00000000000000, data = 1111, ctrl = 3, time = 9<br/>addr = 00000000000000, data = 2222, ctrl = 3, time = 11<br/>addr = 00000000000000, data = 3333, ctrl = 3, time = 13<br/>addr = 00000000000000, data = 4444, ctrl = 3, time = 15<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 17<br/>addr = 00000000000000, data = zzzz, ctrl = 1, time = 202<br/>time = 203<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 204<br/>time = 205<br/>addr = 00000000000000, data = zzzz, ctrl = 2, time = 205<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 207<br/>addr = 00000000000000, data = 1234, ctrl = 1, time = 406<br/>addr = 00000000000000, data = 0000, ctrl = 1, time = 408<br/>addr = 00000000000000, data = aa66, ctrl = 1, time = 410<br/>addr = 00000000000000, data = ffff, ctrl = 1, time = 412<br/>addr = 00000000000000, data = 1111, ctrl = 1, time = 414<br/>addr = 00000000000000, data = 2222, ctrl = 1, time = 416<br/>addr = 00000000000000, data = 3333, ctrl = 1, time = 418<br/>addr = 00000000000000, data = 4444, ctrl = 1, time = 420<br/>time = 421, allData = 4444333322221111ffffaa6600001234<br/>==================================<br/>Test cache:<br/>addr = xxxxxxxxxxxxxx, data = zzzz, ctrl = z, time = 421<br/>time = 422<br/>C1_WRITE8<br/>time = 422<br/>addr = 00000000000000, data = aa11, ctrl = 5, time = 422<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 426<br/>addr = 00000000000000, data = zzzz, ctrl = 7, time = 647<br/>time = 648<br/><br/>C1_WRITE16<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 649<br/>time = 650<br/>addr = 00000000000000, data = 2222, ctrl = 6, time = 650<br/>addr = 00000000000001, data = 2222, ctrl = 6, time = 652<br/>addr = 00000000000001, data = zzzz, ctrl = z, time = 654<br/>addr = 00000000000001, data = zzzz, ctrl = 7, time = 663<br/>time = 664<br/><br/>C1_WRITE32<br/>addr = 00000000000001, data = zzzz, ctrl = z, time = 665<br/>time = 666<br/>addr = 00000000000000, data = 3333, ctrl = 7, time = 666<br/>addr = 00000000000011, data = 3333, ctrl = 7, time = 668<br/>addr = 00000000000011, data = zzzz, ctrl = z, time = 670<br/>addr = 00000000000011, data = zzzz, ctrl = 7, time = 679<br/>time = 680<br/><br/>C1_READ8<br/>addr = 00000000000011, data = zzzz, ctrl = z, time = 681<br/>time = 682<br/>addr = 00000000000000, data = zzzz, ctrl = 1, time = 682<br/>addr = 00000000000110, data = zzzz, ctrl = 1, time = 684<br/>addr = 00000000000110, data = zzzz, ctrl = z, time = 686<br/>addr = 00000000000110, data = xx33, ctrl = 7, time = 695<br/>time = 696<br/><br/>C1_READ16<br/>addr = 00000000000110, data = zzzz, ctrl = z, time = 697<br/>time = 698<br/>addr = 00000000000000, data = zzzz, ctrl = 2, time = 698<br/>addr = 00000000000100, data = zzzz, ctrl = 2, time = 700<br/>addr = 00000000000100, data = zzzz, ctrl = z, time = 702<br/>addr = 00000000000100, data = 3333, ctrl = 7, time = 711<br/>time = 712<br/><br/>C1_READ32<br/>addr = 00000000000100, data = zzzz, ctrl = z, time = 713<br/>time = 714<br/>addr = 00000000000000, data = zzzz, ctrl = 3, time = 714<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 718<br/>addr = 00000000000000, data = 2211, ctrl = 7, time = 727<br/>addr = 00000000000000, data = 3322, ctrl = 7, time = 729<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 731<br/>time = 732, allData = xxxxxxxxxxxxxxxxxx33333333222211<br/>addr = 00000001000000, data = 4444, ctrl = 6, time = 732<br/>addr = 00000000000000, data = 4444, ctrl = 6, time = 734<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 736<br/>addr = 00000000000000, data = zzzz, ctrl = 7, time = 957<br/>count appeal = 7, count cache hit = 5<br/>Set1:<br/>110 00000000 e674fede28c2f483b033333333222211<br/>111 00000001 f3c805fa761ddcbb4ba459d2f0974444<br/>Set2:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set3:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set4:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set5:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set6:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set7:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set8:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set9:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set10:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set11:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set12:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set13:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set14:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set15:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set16:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set17:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set18:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set19:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set20:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set21:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set22:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set23:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set24:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set25:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set26:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set27:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set28:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set29:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set30:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set31:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set32:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set33:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set34:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set35:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set36:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set37:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set38:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set39:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set40:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set41:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set42:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set43:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set44:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set45:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set46:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set47:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set48:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set49:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set50:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set51:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set52:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set53:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set54:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set55:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set56:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set57:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set58:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set59:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set60:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set61:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set62:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set63:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set64:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 959<br/>time = 960<br/>addr = 00000010000000, data = 5555, ctrl = 6, time = 960<br/>addr = 00000000000000, data = 5555, ctrl = 6, time = 962<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 964<br/>addr = 00000000000000, data = zzzz, ctrl = 7, time = 1389<br/>time = 1390<br/>count appeal = 8, count cache hit = 5<br/>Set1:<br/>111 00000010 c0dccdd5843783b3a7000bc2e5b15555<br/>110 00000001 f3c805fa761ddcbb4ba459d2f0974444<br/>Set2:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set3:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set4:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set5:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set6:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set7:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set8:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set9:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set10:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set11:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set12:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set13:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set14:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set15:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set16:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set17:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set18:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set19:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set20:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set21:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set22:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set23:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set24:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set25:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set26:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set27:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set28:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set29:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set30:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set31:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set32:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set33:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set34:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set35:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set36:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set37:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set38:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set39:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set40:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set41:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set42:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set43:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set44:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set45:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set46:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set47:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set48:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set49:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set50:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set51:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set52:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set53:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set54:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set55:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set56:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set57:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set58:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set59:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set60:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set61:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set62:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set63:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>Set64:<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>000 xxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 1391<br/>addr = 00000000000000, data = zzzz, ctrl = 1, time = 1392<br/>addr = 00000000000110, data = zzzz, ctrl = 1, time = 1394<br/>addr = 00000000000110, data = zzzz, ctrl = z, time = 1396<br/>addr = 00000000000110, data = 3333, ctrl = 7, time = 1821<br/>addr = 00000000000110, data = zzzz, ctrl = z, time = 1823<br/>addr = 00000000000000, data = zzzz, ctrl = 2, time = 1824<br/>addr = 00000000000100, data = zzzz, ctrl = 2, time = 1826<br/>addr = 00000000000100, data = zzzz, ctrl = z, time = 1828<br/>addr = 00000000000100, data = 3333, ctrl = 7, time = 1837<br/>addr = 00000000000100, data = zzzz, ctrl = z, time = 1839<br/>addr = 00000000000000, data = zzzz, ctrl = 3, time = 1840<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 1844<br/>addr = 00000000000000, data = 2211, ctrl = 7, time = 1853<br/>addr = 00000000000000, data = 3322, ctrl = 7, time = 1855<br/>addr = 00000000000000, data = zzzz, ctrl = z, time = 1857<br/>time = 1858, allData = xxxxxxxxxxxxxxxxxx33333333222211<br/>==================================<br/>Test CPU:<br/>dataC[0] = 6<br/>dataC[1] = -5<br/>dataC[2] = 4<br/>dataC[3] = 9<br/>dataC[4] = -9<br/>dataC[5] = 3<br/>dataC[6] = -3<br/>dataC[7] = 1<br/>dataC[8] = -5<br/>==================================<br/>Task:<br/>time = 10504558<br/>count appeal = 249600, count cache hit = 230698<br/>Set1:<br/>101 00000101 a698a5e82e05f81a3995a2124282bf49<br/>100 00000011 4cb055715211ea6ac21d7d72998cac81<br/>Set2:<br/>101 00000101 98e20fbfeef7d51c649585ec4d1f08a9<br/>100 00000011 597c49fa8c64b1fec85eaabdde4c9e33<br/>Set3:<br/>100 00000011 c8cdb75b427ae9feef5cec66b6bf35cd<br/>101 00000101 6e3173eeab2ba40a32d1fda26bf07472<br/>Set4:<br/>101 00000011 ae017bdbd8423fc1ec97bdd124f4bac8<br/>100 00000100 9492b4ecf089c71e40d0c156019ba591<br/>Set5:<br/>101 00000100 7647e3f98bc1ef33d72578346b9110ba<br/>100 00000010 05e73bca17d4084b4934fbdc2aa324b9<br/>Set6:<br/>101 00000100 f59e1eb4cc8889b9a9b3b6a371660030<br/>100 00000010 9dc00036d2fe8d63f50483bd6a9bbe82<br/>Set7:<br/>100 00000010 a55a6b575665ef034f4dcb560941e8cf<br/>101 00000100 63367fa2560e8247a93a344a566b00ac<br/>Set8:<br/>101 00000010 2f13577305fbda83098f500f0aa6ee18<br/>100 00000101 c53a46f8ee0577ad6a2f1e73c7513208<br/>Set9:<br/>101 00000101 bdaec04bf5a43789f2856a08d6d1de49<br/>100 00000011 33d6c064e9c078694b1c95f7fdeb1b11<br/>Set10:<br/>101 00000101 de80f1a76ecf5571c050680aceac7cf4<br/>100 00000011 6e2a7b72db4d81e3f329dd6c2ee8620d<br/>Set11:<br/>100 00000011 a4fa89906215538255eb12750b11a6ab<br/>101 00000101 7a4ef493fbb5bdfec850d321f03396c0<br/>Set12:<br/>101 00000100 662fd54d10c679b110138b378b9474e2<br/>100 00000010 2bdd737c72077947f870947c5f14ae9f<br/>Set13:<br/>101 00000100 3f555388ac9febd5121be6e5292f3c7e<br/>100 00000010 9d05fbe808c3547d533ab91db851a10d<br/>Set14:<br/>101 00000100 4c14b5a705802721e6559e5d7b22e11f<br/>100 00000010 c446e7badb067a5c02b7bc074467f000<br/>Set15:<br/>100 00000010 f23f51778fffd67bf6a457e148a32730<br/>101 00000100 e00b1532c098182f80817045c5bdef7d<br/>Set16:<br/>101 00000101 985f8c96b811b7840c095d1eca29de2c<br/>100 00000011 4595d20c825adfe2dbee0eac07b241b2<br/>Set17:<br/>100 00000011 2e5b059ee35eb2be879a28e46459d418<br/>101 00000101 e723b5f51f32204e5df3ad646d2e48c0<br/>Set18:<br/>100 00000011 57f748f14ee5bbe091334b414254311f<br/>101 00000101 f63d6e96105740dd8e4a864f1108fb76<br/>Set19:<br/>100 00000100 36c9e365690794f3dfc38c990d1b52e2<br/>101 00000011 1307b58b651ee7ddee79346be3f3e380<br/>Set20:<br/>101 00000100 8c6c1036d33117dbd31510be57dbceea<br/>100 00000010 202afef5058367018b826994fc6c5837<br/>Set21:<br/>101 00000100 1bc19e5d306c92ceff91cefde9dcb3b8<br/>100 00000010 4981964e5ca04b0611c0f1c5480f68d7<br/>Set22:<br/>101 00000100 76a8e7a162272fa19637c23e48adce44<br/>100 00000010 beea6a4408bdd36c81a82f77e1022cb6<br/>Set23:<br/>101 00000010 d303935eac09e8cad0f9de5309943189<br/>100 00000101 1fbd613f5cf5f31f08cdacb1adc30444<br/>Set24:<br/>101 00000101 bf23edba254ce2f2a0a3587110501508<br/>100 00000011 3c6983c0bfa55ae04098598f1ce9c81d<br/>Set25:<br/>101 00000101 24f786e6adafb46b7ce06b28079bfdae<br/>100 00000011 3b3f261f41ea966b76973637ced6d996<br/>Set26:<br/>100 00000011 12e3b076e42b61f3a37cf53e188f0c68<br/>101 00000101 e219868cd68e9561cf83dfbc1732852f<br/>Set27:<br/>101 00000100 d0ad426067f7abdd434881ae8004b266<br/>100 00000010 1af9f6fdeff76102f083e0a2bb83e2f1<br/>Set28:<br/>101 00000100 044867a63acc9f9c89d550ec6672b2a8<br/>100 00000010 6816a5f43c2d3f531152f952db128d86<br/>Set29:<br/>101 00000100 098dc47a1629e41ea085317cad99756a<br/>100 00000010 085d0cfa126cede681c4a4d4dcdb7a19<br/>Set30:<br/>100 00000010 8bad87d55723969274d8de0f416c74a2<br/>101 00000100 735bb5a3e17da238b9572146d808c5a1<br/>Set31:<br/>100 00000011 8d1ce27a94dd165972ccbdeedc313a0e<br/>101 00000101 5b488695a4d5386ddd09b6b239abe1bb<br/>Set32:<br/>101 00000101 3986696535b6f8f628fb0d6b98c6d89a<br/>100 00000011 85dc4ffb9f1fc07597005e18756fda3f<br/>Set33:<br/>100 00000011 5b8221e70166256e1813bff23b62298b<br/>101 00000101 742a311e9d1bf4de4e4ca352a517fc13<br/>Set34:<br/>101 00000011 a1eeb3039c21721d2704d961b299f1e8<br/>100 00000100 c0a196664d6a04ac751f46f8e902a5a4<br/>Set35:<br/>101 00000100 fd70fc224857ed9fd9cc70ab767cdce1<br/>100 00000010 17cc004ea066f3535717202f810a5dfc<br/>Set36:<br/>101 00000100 cfc2d89c439513f432554bc1b857221e<br/>100 00000010 03a0677b1506033b8ae244b7fd084d8b<br/>Set37:<br/>100 00000010 d9975dee2c273a1da448d34a73b6d7d2<br/>101 00000100 0bb7c5dd60d4e0c5f3f9106274648392<br/>Set38:<br/>100 00000101 6f1d2cea80487f91298ed4682f97698c<br/>101 00000010 2b903f6ec938c4d0da48c8ce64a5c7c5<br/>Set39:<br/>101 00000101 29b305b3ce24a892e544bb9a48228929<br/>100 00000011 2b97b2278e3cd50e4b171265bbb8320d<br/>Set40:<br/>101 00000101 06880097e84ef992a2127e0b648b25e3<br/>100 00000011 22ee36be22c811a0e2271f4911447818<br/>Set41:<br/>101 00000101 d7bcb89df075dea8d33757e445a247ef<br/>100 00000011 8e24f8f624d160c96d0ec213abfcc4f7<br/>Set42:<br/>110 00010100 ff5f7db6016bde9701123f04001e1275<br/>101 00000100 bac20b324187d8a605de3d7a5e53ed12<br/>Set43:<br/>101 00000100 bc1112aa0c255a37a34f5b8eef82d253<br/>100 00000010 a77d66673445b07bf0aa5aa2c921a2fe<br/>Set44:<br/>100 00000010 f2ca4389910fb1baf6314ac3624c9848<br/>101 00000100 eddc651aef8d71e3ce94003d4d8c1d4b<br/>Set45:<br/>100 00000010 be318928a9d232ab7b4b7c270ca17f01<br/>101 00000100 1f41a1870d6e88c3f9eb69af3d3edb32<br/>Set46:<br/>111 00010100 ffb5bc6dfffece33ffcf10e200864b19<br/>100 00000101 aa0607315d74200eca2581f55d07ce0e<br/>Set47:<br/>100 00000101 8afce097dce2428d207ebb68db28fc8f<br/>111 00010100 ffeddb4a01168693009429b0ff9475f4<br/>Set48:<br/>100 00000101 2529b2503e16e5c510e8a953739ffde3<br/>111 00010100 ff965e81ff7b2952008f6a5e0020d79c<br/>Set49:<br/>100 00000100 b18901f7c8957c42e034845c231163ae<br/>101 00000011 d425a94caa2b457a7488419c1fa6a9da<br/>Set50:<br/>101 00000100 86031c05585217b607dc7024957340b8<br/>100 00000010 a77db61f56a05278ca85f5d6867f3722<br/>Set51:<br/>100 00000010 ca0e2647ab92987abd3c90fc95c6b3f7<br/>101 00000100 0f9282fab363f2a6a0d14158ea1892bc<br/>Set52:<br/>101 00000100 5e940d1e3fb5bb6a5d917160260fa32e<br/>100 00000010 33923b1db1464bd0553e0b760ae06ebc<br/>Set53:<br/>100 00000011 1e4994b173d1f8f47cb50f07f9819898<br/>101 00000010 b52990aa896bd59004cca06ba99a73a8<br/>Set54:<br/>101 00000011 c010c0e2c3a5902c892b95a4a65b5df9<br/>100 00000100 5c2fbfd1309a7e87d3339f471af0ee00<br/>Set55:<br/>101 00000011 212862d72c47d5fc94abad0a037383ee<br/>100 00000100 f0465cac1ccb8f4eb1d151b499b87e0d<br/>Set56:<br/>101 00000011 54ef56d711a774bc50b2d19f11db53f0<br/>100 00000100 16cc0b53447ab8c500b8d0118b8e7ae5<br/>Set57:<br/>100 00000010 78e9c6c51e5106c3ec9ce153383c8867<br/>101 00000100 a2e166ccca56650333255584b142ecc0<br/>Set58:<br/>100 00000010 16edb2895f2b4c3010d2b236517ee58f<br/>101 00000100 2663c8de91cdc0dd7c19ddf490629f95<br/>Set59:<br/>101 00000100 f5f24d113d0fb6eccf52210a693c1e1b<br/>100 00000010 807e41ed054fab51bdcdc03de4fb8ee7<br/>Set60:<br/>100 00000010 c7fa4d3973adcf7da70b86d0f6c2cee6<br/>101 00000100 23eccfaa310bf087df4e9d2a41e2b4c9<br/>Set61:<br/>100 00000100 8271eab18f70d9c31f4e8c7ed9206cd6<br/>101 00000011 c1994eb2cdd19ee850ad86eab1012f6d<br/>Set62:<br/>100 00000100 a55ff8ee3bac9d7ac24fe9ebb6861238<br/>101 00000011 714821c7b63f5767e05008102a792979<br/>Set63:<br/>101 00000001 eb53dffeff3a3462daf63ab24e6e7465<br/>100 00000011 783f43d9d0f3163605f3f3376ba8dcd1<br/>Set64:<br/>101 00000001 7775b40526868d6b235c53b39385d4d3<br/>100 00000011 eade8e2e7cdd86ad7317c2c5769d92ee