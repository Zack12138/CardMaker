extends Hero

func init():
	att.atk = 0
	att.arm = 5
	att.cry = 7
	lv = 4
	type = TYPE.HERO
	camp = "m_meihaoshijie"
	name = "佐藤和真"
	tab = "英雄 人类 人渣"
	tskId = "c_Theft"
	dec = "偷取敌方一张手牌"
	isInit = true
	needUlock = false

func _use(card,cell):
	getHero().plusHp(15)