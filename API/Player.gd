extends Base
class_name Player
#牌手类，在当局前存储套牌信息，进入对局后，创建英雄类实例作战
#所有Boss继承该类

signal onChangeGold()  #金币变化时
signal onChangeHp()  #生命值变化时

var cardIds:Array = []  #牌组id列表
var hallDeck :Deck = Deck.new("hall")
var gold = 0 setget setGold  #拥有金币
var lvs:Array = [] #会出现在第几关，在列表内的都可能出现
var hp = 0 setget setHp #生命值
var camp:String = "" #阵营id

#设置金币
func setGold(val):
#设置生命值
func setHp(val):
#消费金币 足够消费成功返回真
func subGold(val):