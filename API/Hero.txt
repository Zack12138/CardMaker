extends Card
class_name Hero
#英雄类；

signal onCryChange(oldVal) #水晶值变化时
signal onMaxCryChange(oldVal) #最大水晶值变化时
signal onTskUse() #使用技能时

var cry = 0 setget setCry #当前水晶值
var maxCry = 0 setget setMaxCry #最大水晶值
var mostCry = 10 #能成长到的最终水晶值
var mostHandNum = 10 #手牌数上限
var isInit = true #是否初始英雄
var team = 0 #队伍编号

var hand := Deck.new("hand") #手牌 
var lib := Deck.new("lib")  #牌库
var gry := Deck.new("gry")  #墓地
var bt := Deck.new("bt") #战场
var he := Deck.new("he") #英雄
var mount := Deck.new("mount") #挂载  包含 奥秘 任务等

var tskNum = 0 #英雄技能本回合施放过的次数
var tskMaxNum = 1 #英雄技能一回合可以施放的次数
var tsk = Tsk.new() #英雄的技能
var tskId = "" setget setTskId #英雄技能的id

#替换指定id的技能
func setIdTsk(tskId):
#创建指定id的卡牌，并指定所有者为本英雄
func newCard(id):
#设置当前水晶值
func setCry(val):
#设置最大水晶值
func setMaxCry(val):
#刷新水晶值 当前水晶值=最大水晶值
func upCry():
#从牌库顶抽一张牌（）
func drawCard():
#创建指定id的卡牌，并放入战场指定位置（卡牌id，位置：Vector 默认空）
func newCardInBattle(id,cell = null):
#返回我方战场的一个空位,没有则返回null
func getNullCell():
#返回己方战场的中心位置->Vector2
func getBattlePos()->Vector2:
#返回对手英雄
func getOppHero()->Hero:

#将手牌指定卡牌放入战场 也就是使用卡牌（牌，目标格子）
func handInBattle(card,cell):
#调动格子上单位的位置 无视卡牌的canMove （a位置，b位置,是否 ）
func moveBtCard(cellA,cellB):
#玩家操作ab两个格子上的单位在战场上对调移动 会检查卡牌的canMove属性 （a位置，b位置）
func opMoveBtCard(cellA,cellB):
#英雄技能使用的条件，默认根据技能卡自身条件以及满足使用次数，有特殊的条件，可重写该函数
func tskIf():
	if tsk.useIf() && tskNum < tskMaxNum:
		return true	
	return false
#使英雄使用技能（目标卡牌，目标位置）
func tskUse(card,cell):
#夺取目标卡，能夺取战场,手牌，牌库，墓地
func seizeCard(card:Card):
