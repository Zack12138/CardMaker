extends Tsk

func init():
	att.cry = 9
	lv = 1
	camp = "m_meihaoshijie"
	name = "Explosion"
	dec = "Explosion：先对敌方后排随从造成6点伤害，再对敌方所有随从造成3点伤害。损失三点法力水晶。"
	aiTab = "we_hero_buff_n:1_p:1"

func _use(card,cell):
	if card != null: 
		
		# 先对后排随从打6
		for i in Scene.getAllCard(getHero(),1,false):
			hurtCard(i,6,true)
		
		# 再对全场随从打3
		for i in Scene.getAllCard(getHero(),1,false):
			hurtCard(i,3,true)
		
		var hero:Hero = getHero()
		hero.setCry(hero.getCry()-3)
		



