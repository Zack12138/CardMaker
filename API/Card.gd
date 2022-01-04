extends Base
class_name Card
#卡牌类

signal onPlusHp(val) #恢复hp（恢复值）
signal onHurtStart(atkInfo) #受到伤害前(伤害信息)
signal onHurtEnd(atkInfo) #受到伤害后（伤害信息）
signal onCauseHurtStart(atkInfo) #造成伤害前（伤害信息）
signal onCauseHurtEnd(atkInfo) #造成伤害后（伤害信息）
signal onAtk(card)  #发动进攻时（被攻击的单位）
signal onAtkStart(card) #将要进攻时(被攻击的单位)
signal onAtkEnd(card) #进攻完毕时
signal onDef(card)  #防守时（攻击的单位）
signal onDefStart(card) #将要防守时（攻击的单位）
signal onDef(card)  #防守时（攻击的单位）
signal onAtkRoundStart() #开始进攻回合(被攻击的单位)
signal onAtkRoundEnd() #结束进攻回合(被攻击的单位)

signal onUse()	#卡牌被使用时
signal onUseEnd()	#卡牌被使用后
signal onPlay() #卡牌被打出时
signal onPlayEnd() #卡牌被打出后
signal onInBattle() #进入战场时
signal onInGry() #将要进入墓地时
signal onInLib() #进入牌库时
signal onInHand() #进入手牌时
signal onInDeck(deck) #进入任意牌堆时
signal onExitDeck(deck) #从任意牌堆删除时
signal onDeathStart(atkInfo) #即将死亡时（伤害信息）
signal onDeath(atkInfo) #死亡时（伤害信息）
signal onKill(atkInfo) #杀死卡牌时(伤害信息)
signal onExile()  #放逐时

signal onChangeIsSleep() #是否睡眠 被改变
signal onCellChange(oldCell) #在战场的位置改变时（之前的位置）
signal onAddSkill(skill)
signal onDelSkill(skill)
signal onChangeBuffIds() #buffsIds改变
signal onChangeTrig()
signal onMountTrig() #奥秘或任务触发时
signal onMountEnd() #奥秘或任务完成时
signal onMountTxt(txt) #设置任务进度文本
signal onOptShow(id,arr) 
signal onOptSel(id,card)
signal onOptEnd()
signal onLoadImg()
signal onPressed() #挂载的图标被点击时

var type = TYPE.CREATURE #类型 ： 生物，法术,英雄
#颜色阵营 ： 白，黑，蓝，红，绿，无  white,black,blue,red,green,null
var camp = "m_white"  
var lv = 1 #品级 共4级：白，蓝，紫，金
var bdec = ""  #卡牌背景描述

var isTrig = false setget setIsTrig #是否有触发类型的效果 有则卡牌在战场时下方会显示一个闪电
var isBattle = false #是否在战场
var isDeath = false  #是否战斗死亡
var isDeathInGry = true #是否死亡后进入墓地
var isSleep = true setget setIsSleep #是否睡眠  出场时第一回合便是睡眠，本回合无法主动攻击，下一回合恢复
var isMount = false #是否挂载类牌，挂载牌打出会先被挂载在挂载区，奥秘，任务 由此实现
var isLipTop = false #是否优先置于牌库顶  可实现某些任务牌起手就能抓到
var canSel = true #可以成为魔法卡施放的目标，假 则为魔免
var canAtk = true #默认可以发动进攻，假 则 无法发动进攻
var canDef = true #默认可以防御进攻，假 则 敌方进攻会跳过本牌
var canMove = true #默认 可以在自己回合被玩家操作移动  假 则不能
var playStop #当触发play时 可以置为true 使use不会执行，实现反制法术等效果

var isOtp = false  #卡牌打出是否有选择项  可实现 抉择，发现 等
var optSelArr:Array = [] #所选择的卡牌们，是一个卡牌数组

var attBack:= Att.new() #备份属性  也就是被沉默后的白板属性
var cell = Vector2() setget setCell #在战场的位置
var skills = []

var scene = null #本次对局的主场景,可以理解为桌游的牌桌
var deck:Deck #所处的牌堆

var buffIds = [] setget setBuffIds  #将要添加的强化 id列表
var buffs = [] #已添加的强化列表
var buffMaxLv = 3 #能够被强化的次数上限

var atkMark = "" #可以设置字符代替的原本攻击力数值的显示
var hpMark = "" #可以设置字符代替的原本生命值数值的显示
var canGet = true #为false 则无法从sys.scene.getAllCard 获取
var soul = 100 #卡片外围解锁所需的魂值
var card.bdec = “” #可以为卡牌添加背景描述
var price #卡牌在商店中的价格

#取所属的英雄
func getHero():
#基本信息的初始化
func init():
#设置卡牌图片的文件路径	
func setImgFile(val):		
#取队伍编号		
func getTeam():
#是否是正常套牌中的卡牌
func isNormal():
#重新设置最大生命值和当前生命值
func rsetHp(val):
#设置睡眠状态（是否睡眠：Bool）
func setIsSleep(val):
#取所在的像素位置
func getPos():

#卡牌进场被使用时要绑定的信号 放这里
func _connect():
	pass
#在单局开始时就绑定的信号 放这里
func _gConnect():
#单位进入墓地后所绑定的信号都会清空，如需要排除清空，请使用该函数，将信号所绑定的函数名称加入排除字典
func addGcon(method_name):
#卡牌摸入手牌时要绑定的信号放这里
func _handConnect():	pass

#触发卡牌的使用效果 不需要满足使用条件
func use(card,cell):
#播放卡牌使用时动画
func magicEff():
#卡牌被使用时 所调用的回调
func _use(card,cell):
#触发卡牌的使用效果 需要满足使用条件
func useStart(card,cell):
#卡牌使用的条件，默认水晶值满足就可以，有特殊的条件，可重写该函数
func useIf():
	if att.cry <= getHero().cry:
		return true	
	return false
#卡使用时，如果需要选择施放目标，则应该重写该函数，填写判断条件（目标牌，格子）
#目标牌:当目标单纯为格子时 牌会为空 需要判断
#默认无指定目标
func useSelIf(card,cell):
	return true

#触发奥秘或任务 的 进度
func mountTrig():
#结束奥秘或任务
func mountEnd():
#设置任务的进度描述
func mountTxt(txt):
