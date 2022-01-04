extends Control
class_name Game
#单局游戏类

var player :Player = Player.new()  #玩家实例
var cardRndPool:RndPool = CardRndPool.new()  #本局卡池
var playerRndPool:RndPool = PlayerRndPool.new()  #本局Boss池
var buffRndPool:RndPool = BuffRndPool.new()  #本局强化池
