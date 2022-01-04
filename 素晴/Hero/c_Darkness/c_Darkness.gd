extends Hero

func init():
	att.atk = 0
	att.arm = 5
	att.cry = 7
	lv = 4
	type = TYPE.HERO
	camp = "m_meihaoshijie"
	name = "达克妮斯"
	tab = "英雄,人类,抖M"
	tskId = "c_douM"
	dec = "被攻击后获得等额的护盾"
	isInit = true
	needUlock = false


func _use(card,cell):
	pass


func _connect():
    connect("onHurtEnd",self,"m")


func m(atk:AtkInfo):
	att.arm += atk.atkVal
	
