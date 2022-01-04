extends Tsk

func init():
	att.cry = 3
	lv = 1
	camp = "m_meihaoshijie"
	name = "盗窃"
	dec = "随机获取对方英雄的一张手牌。"
	aiTab = "we_hero_buff_n:1_p:1"


func _use(card,cell):
	getHero().seizeCard(sys.rndListItem(getHero().getOppHero().hand.items))
