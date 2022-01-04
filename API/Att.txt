extends Reference
class_name Att
#属性类

signal onChange(id,oldVal) #属性发生改变时（属性成员的id，改变前的值）

var hp = -1 setget set_hp	#生命值
var maxHp = 0 setget set_maxHp	#生命值
var atk = 0 setget set_atk	#攻击
var arm = 0 setget set_arm #护甲
var cry = 0 setget set_cry	#消耗水晶
var mgi = 0 setget set_mgi #法术增益
