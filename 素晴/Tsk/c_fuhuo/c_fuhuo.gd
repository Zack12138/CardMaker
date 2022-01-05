extends Tsk

func init():
	att.cry = 3
	lv = 1
	camp = "m_meihaoshijie"
	name = "复活"
	dec = "复活一个墓地的随从。"
	aiTab = "we_hero_buff_n:1_p:1"


func _use(card,cell):
    var cs = []
    for i in getHero().gry.items:
        if i.type == Card.TYPE.CREATURE:
            cs.append(i)
    if cs.size() > 0 :
        var cell1 = getHero().getNullCell()
        if cell1 != null:
            var inx = sys.rndRan(0,cs.size()-1)
            var c = cs[inx]
            getHero().gry.eraseCard(c)
            getHero().cardInBattle(c,cell1,true)


func useIf():
    return true
