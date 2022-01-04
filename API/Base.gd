extends Reference
class_name Base
#基础类
#卡牌，技能，玩家  的基类
#一些通用的成员，枚举，常量等定义

signal onSetName() #名称改变时
signal onSetDec() #描述改变时
signal onSetTab() #标签改变时
signal onTrigger() #效果被触发时，用来给某些卡牌，异能 做主动触发所用，比如用来触发卡牌中间的闪电动画

#类型 ： 生物，法术，英雄
enum TYPE {CREATURE=1,MAGIC=2,HERO=3,TSK=4}

var att:= Att.new() #属性
var id = "" #唯一id 与文件名相同
var dir = "" # 所处的目录路径
var modId = "" #Mod的id

var name = "" setget setName  #名称
var dec = "" setget setDec  #描述
var tab = "" setget setTab  #类别，多个类别用 ， 隔开
var aiTab = ""  #ai识别卡牌所用的标签
var isUsable = true #是否会出现在游戏各个卡池中

var needUlock = false #是否需要在外围解锁，才会出现在卡池中
var isUlock = false #是否已解锁

var isHalo = false  #为真 打开光环回调

#设置名称
func setName(val):
#设置描述
func setDec(val):
#设置标签	
func setTab(val):
#被附着的牌  异能或者强化所附着的牌
var card = null
#初始化都在这里重写
func init():
#一些基本信号放在这里绑定
func _connect():
#移除所有信号绑定
func delConnect():
#移除所有的光环，事件 等

func del():
#移除函数所调用的回调，在移除时有需要特殊处理的可以重写该函数
func _del():
#主动触发 onTrigger 信号
func trigger():
#光环的过滤器，返回真的卡才能获得光环效果
func _haloFiter(card):
	return false
#光环回调，当本卡带有光环效果时，重写该函数为单位附加光环效果，光环只对战场生物和手牌有效
func _halo(card):
#光环析构（卸载）回调，光环消失时，需要还原被影响单位的效果
func _haloDest(card):
#是否包含所有标签 tabs 可以是多个标签如“xxx xxx”
func hasTab(tabs):
#是否包含其中一个 tabs 可以是多个标签如“xxx xxx”
func hasOrTab(tabs):
#添加标签
func addTab(val):
