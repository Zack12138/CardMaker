extends Tsk

var id1 = ""

var  cardPool = []

func init():
	lv = 1
    type = TYPE.TSK
	camp = "m_meihaoshijie"
	name = "酿造"
	dec = "制作一瓶独特的药水。"
	aiTab = "we_hero_buff_n:1_p:1"
    isOtp = true


func _opt():
	var arrs = []
	for i in range(3):
		var card = sys.game.cardRndPool.rndItem(self,"rnd1")
		if card != null:
			arrs.append(getHero().newCard(card.id))
	optShow("1",arrs)
	yield(self,"onOptSel")
	id1 = optSelArr[0]
	arrs.clear()
	for i in range(3):
		var card = sys.game.cardRndPool.rndItem(self,"rnd2")
		if card != null:
			arrs.append(getHero().newCard(card.id))
	optShow("2",arrs)
	optEnd()

func _use(cell,card):
	getHero().hand.addCard(id1)
	getHero().hand.addCard(optSelArr[0])

func rnd1(card:Card):
	if card.type == Card.TYPE.CREATURE :
		return true
	return false

func rnd2(card:Card):
	if card.type == Card.TYPE.MAGIC :
		return true
	return false
