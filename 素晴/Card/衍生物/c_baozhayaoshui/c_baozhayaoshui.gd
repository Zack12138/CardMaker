extends Card

func init():
	att.cry = 5
	type = TYPE.MAGIC
	camp = "m_meihaoshijie_yanshengwu"
	name = "爆炸药水"
	dec = "对所有敌方随从造成%d点伤害" % (self.lv * 5)
	aiTab = "we_reap_p:1"
    isUsable = false # 默认该卡不会出现在卡池内


func _use():
    var cardArr = sys.scene.getAllCard(getHero(),1,false);
    for i in cardArr:
        hurtCard(i,self.lv * 5,true)