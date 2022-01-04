class_name Deck
#牌堆 类 ； 
#手牌，牌库，墓地 的基类，所有通用的牌堆操作

signal onAddCard(card) #获得一张卡牌时（卡牌）
signal onChangeNum(num) #牌数发生变化时（当前牌数）
signal onDelCard(card) #有卡牌被移除时
signal onDelCardStart(card) #将要删牌时，牌库为空也会触发，可以实现炉石疲劳

var items:Array = []  #卡牌列表

#返回牌堆卡牌的数量
func getCardNum():
#洗牌
func shuffle():
#返回是否包括目标卡牌（目标牌）：
func has(card):	
#返回是否包含目标id的卡(id):
func hasId(id):
#抽出一张牌（牌顶 = 真） 返回 抽到的牌，无则返回空 |默认牌顶，假为 牌底；
func drawCard(isTop = true):
#随机抽出一张牌（）
func rndDarw():
#加入一张牌（牌，牌顶 = 真） 默认牌顶，假为 牌底
func addCard(card,isTop = true):
#加入一张牌() 随机插入其中	  比如用于 将一张牌洗入牌库
func addCardRnd(card):
#移除指定卡牌（牌） 返回 指定牌 否则 返回假
func eraseCard(card):
