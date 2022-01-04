extends Hero

func init():
	att.atk = 0
	att.arm = 5
	att.cry = 7
	lv = 4
	type = TYPE.HERO
	camp = "m_meihaoshijie"
	name = "慧慧"
	tab = "英雄 人类 大魔法师"
	tskId = "c_Zack_Explosion"
	dec = "红魔族第一的天才魔法师。生于穷困的家庭，因吃不饱饭而营养缺乏（萝莉平胸），甚至要靠抢“背负苍蓝雷电之人”（背负巨乳之人）悠悠的便当来解决吃饭问题，为了变成巨乳而希望成为大魔法师"
	isInit = true  #非初始英雄
	needUlock = false #需要外围解锁

func _use(card,cell):
	getHero().plusHp(15)