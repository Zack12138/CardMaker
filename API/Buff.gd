extends Base
class_name Buff
#强化类

var cardIfTab = "随从" #限定条件的描述
var price = 200  #强化的售价
var lv = 1  #强度 等级 

#限定条件，重写该函数实现不同的限定条件
func cardIf(card):
	if card.type == TYPE.CREATURE :return true
	return false
