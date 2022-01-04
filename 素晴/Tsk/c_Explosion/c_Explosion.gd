extends Tsk

func init():
	att.cry = 9
	lv = 1
	camp = "m_meihaoshijie"
	name = "爆裂魔法"
	dec = "先对敌方后排随从造成9点伤害，再对敌方所有随从造成6点伤害，最后对敌方英雄造成9点伤害。损失三点法力水晶。"
	aiTab = "we_hero_buff_n:1_p:1"

func _use(card,cell):
	var cardArr:Array = sys.scene.getAllCard(getHero(),1,false)
	# 先对后排随从打6
	for i in cardArr:
		if i.getIsFront() == false:
			hurtCard(i,9,true)
	
	# 再对全场随从打3
	for i in cardArr:
		hurtCard(i,6,true)
	
	# 对敌方英雄造成9点伤害
	var hero:Hero = getHero()
	hurtCard(hero.getOppHero(),9,true)
	
	#法力水晶-3
	hero.maxCry -= 3
