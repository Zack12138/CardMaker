extends Tsk

var cardPool:RndPool = RndPool.new()

var cardLvPool:Array = []

var card:Card = null

func init():
	lv = 1
    type = TYPE.TSK
	camp = "m_meihaoshijie"
	name = "酿造"
	dec = "制作一瓶独特的药水。"
	aiTab = "we_hero_buff_n:1_p:1"
    isOtp = true
    poolInit()


func _opt():
    var arrs:Array = []
	optShow("1",self.cardLvPool)
	yield(self,"onOptSel")
	self.card = optSelArr[0]
    arrs = getRndPool(arrs)
	optShow("2",arrs)
    # 将已选择的药水保存
    self.card.addItem(optSelArr[0])

    arrs = getRndPool(arrs)
	optShow("2",arrs)
    # 将已选择的药水保存
    self.card.addItem(optSelArr[0])
	optEnd()

func _use(cell,card):
	getHero().hand.addCard(self.card)


func poolInit():
    for i in range(3):
        var lvCard:Card = sys.newCard("c_yaoshui")
        lvCard.lv = i + 1
        cardLvPool.append(lvCard)
    cardPool.addItem("c_baozhayaoshui")
    cardPool.addItem("c_shengmingyaoshui")
    cardPool.addItem("c_zhihuiyaoshui")


# param exclude 需要排除的内容
func getRndPool(exclude:Array):
    var arr:Array = []
    while (arr.size() < 3):
        var c = cardPool.rndItem();
        var flag = true
        for i in exclude:
            if i == c :
                flag = false 
        if flag :
            arr.append(c)
    return arr

