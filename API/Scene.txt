extends Control
class_name Scene
#牌桌类

signal onCardPlusHp(card,val) #当有单位恢复hp时
signal onCardUse(card) #当有卡牌被使用时  无论他从哪里被使用
signal onCardUseEnd(card) #当有卡牌被使用后  无论他从哪里被使用
signal onCardPlay(card) #当有卡牌被打出时  只有他从手牌打出时
signal onCardPlayEnd(card) #当有卡牌被打出后  只有他从手牌打出时
signal onCardInDeck(card,deck) #当有卡牌进入某个牌堆时（卡牌，所进入的牌堆）
signal onCardExitDeck(card,deck) #当有卡牌从某个牌堆删除时（卡牌，牌堆）
signal onCardDeathStart(atkInfo) #当有单位将要触发死亡时
signal onCardDeath(atkInfo) #当有单位触发死亡时
signal onCardExile(card) #当有卡牌被放逐时
signal onCardMountEnd(card) #当奥秘或者任务触发时
signal onCardAddSkill(card,skill) #当有单位获得异能时
signal onCardDelSkill(card,skill) #当有单位失去异能时
signal onCardSkillTrig(card,skill) #当有单位触发异能时（触发卡，触发异能）
signal onRoundStart() #回合开始
signal onRoundEnd() #回合结束
signal onEnd(isWin) #游戏结束
signal onBattleStart() #战斗开始
signal onQueueEnd() #队列函数结束时

signal onCardHurtStart(atkInfo) #当有单位受到伤害前(伤害信息)
signal onCardHurtEnd(atkInfo) #当有单位受到伤害后（伤害信息）
signal onCardCauseHurtStart(atkInfo) #当有单位造成伤害前（伤害信息）
signal onCardCauseHurtEnd(atkInfo) #当有单位造成伤害后（伤害信息）
signal onCardAtk(cardAtk,cardDef)  #当有单位发动进攻时（攻击的单位,被攻击的单位）
signal onCardAtkStart(cardAtk,cardDef) #当有单位将要进攻时(攻击的单位,被攻击的单位)
signal onCardAtkEnd(cardAtk,cardDef) #当有单位进攻完毕时（攻击的单位,被攻击的单位）
signal onCardDef(cardAtk,cardDef)  #当有单位防守时（攻击的单位,被攻击的单位）
signal onCardDefStart(cardAtk,cardDef) #当有单位将要防守时（攻击的单位,被攻击的单位）
signal onCardDefEnd(cardAtk,cardDef) #当有单位防御完毕时（攻击的单位,被攻击的单位）
signal onCardAtkRoundStart(card) #当有单位开始进攻回合(行动单位)
signal onCardAtkRoundEnd(card) #当有单位结束进攻回合(行动单位)

var heros = [] #战场英雄列表，总2个英雄  元素0和1
var hero = null #玩家可控的英雄
var roundhero #当前回合行动的英雄

var isBattle = false #是否战斗中
var isEnd = false #是否游戏结束
var isWin = false #是否玩家胜利

#取战场目标格子的卡牌，无则返回null
func matCard(cell):
#设置目标格子的卡牌（格子，卡）
func setMatCard(cell,card = null):

#在函数队列中插入将来要执行的函数（对象，函数名称：String，持续时间，参数列表：Array）
func queueFunc(obj,funcName,time = 0.0,argArray = null):

#获取所有战场的卡牌(玩家，mTeam:0 = 所有，1 = 敌军，2 = 友军,是否包括英雄 = false)  
func getAllCard(hero,mTeam = 1,isAndHero = false):
	
#在函数队列中插入将来要播放的动画（动画id，位置，持续时间）
func newQueueEff(id,pos,time = 1.0):
	queueFunc(self,"_newQueueEffRun",time,[id,pos])

#进入战斗
func queueBattle():

#下个回合
func queueNextRound():

#结束游戏（是否胜利）
func end(win = true）