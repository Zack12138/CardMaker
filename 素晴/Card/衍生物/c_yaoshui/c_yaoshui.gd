extends Card

var cardArr:Array = []

func init():
	att.cry = 5
	type = TYPE.MAGIC
	camp = "m_meihaoshijie_yanshengwu"
	name = "次级药水" if lv == 1 else ("强效药水" if lv == 2 else "超级药水")
	dec = '制作一瓶消耗为(%d)的法术' % self.lv * self.lv
	aiTab = "we_reap_p:1"
    isUsable = false # 默认该卡不会出现在卡池内

func setCardArr(cardArr:Array):
    self.cardArr = cardArr


func _use(card,cell):
    for i in cardArr:
        i.use(card,cell)