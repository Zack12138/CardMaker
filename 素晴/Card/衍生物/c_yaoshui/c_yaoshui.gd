extends Card

var cardArr:Array = []

var lvArr = ["药水","次级药水","强效药水","超级药水"]

func init():
    lv = 0 # 约定1为次级药水 2为强效药水 3为超级药水
	type = TYPE.MAGIC
	camp = "m_meihaoshijie_yanshengwu"
	name = "药水"
	dec = ""
	aiTab = "we_reap_p:1"
    isUsable = false # 默认该卡不会出现在卡池内

func setCardArr(cardArr:Array):
    self.cardArr = cardArr


func _use(card,cell):
    for i in cardArr:
        i.use(card,cell)


func addItem(item):
    cardArr.append(item)

func updateName():
    name = lvArr[self.lv]
    att.cry = self.lv * self.lv
	dec = '制作一瓶消耗为(%d)的法术' % att.cry

func updateDec():
    dec = "{card1}\n{card2}"
    dec.format({"card1":cardArr[0].dec,"card2":cardArr[1].dec})



