extends Card

func init():
	att.cry = 5
	type = TYPE.MAGIC
	camp = "m_meihaoshijie_yanshengwu"
	name = "生命药水"
	dec = "对所有友方随从恢复%d点生命" % (self.lv * 5)
	aiTab = "we_reap_p:1"
    isUsable = false # 默认该卡不会出现在卡池内


func _use():
    var cardArr = sys.scene.getAllCard(getHero(),2,false);
    for i in cardArr:
        i.plusHp(self.lv * 5)