extends Tsk

func init():
	att.cry = 2
	lv = 1
	camp = "m_meihaoshijie"
	name = "Explosion"
	dec = "遮蔽光明的漆黑啊，怀抱黑夜的爆炎啊，吾以红魔之名，宣言原初之崩坏，在终末王国之地，隐藏力量根源之人，于吾眼前集结吧。Explosion!"
	aiTab = "we_hero_buff_n:1_p:1"

func useSelIf(card,cell):
	if card != null && card == getHero():
		return true
	return false

func _use(card,cell):
	if card != null: 
		for i in getHero().lib.items:
			if i.type == TYPE.CREATURE :
				getHero().lib.eraseCard(i)
				getHero().hand.addCard(i)
				i.att.cry -= 2
				if i.att.cry < 0: 
					i.att.cry = 0
				break