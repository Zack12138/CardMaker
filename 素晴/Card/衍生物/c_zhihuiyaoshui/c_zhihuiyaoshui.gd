extends Card

func init():
	att.cry = 5
	type = TYPE.MAGIC
	camp = "m_meihaoshijie_yanshengwu"
	name = "智慧药水"
	dec = "摸%d张牌" % self.lv
	aiTab = "we_reap_p:1"
    isUsable = false # 默认该卡不会出现在卡池内


func _use():
    for i in range(self.lv)
        getHero().drawCard()