extends Node
#系统单例  sys：可调用一些系统通用函数

var scene:Scene = null  #当前牌桌实例 外围时为null
var game:Game = null  #单局游戏实例

var isTest =  OS.has_feature("editor")  #是否Mod测试用

#百分比随机5
func rndPer(var val):

#范围随机	
func rndRan(mmin,mmax):
#随机	
func rnd(val):
#从列表中随机一个元素
func rndListItem(list):

#创建卡牌实例
func newCard(id):
#创建异能实例
func newSkill(id):
#创建强化实例
func newBuff(id):
#创建玩家实例
func newPlayer(id):
#创建设施实例
func newFaci(id):
	
#创建公共对话框（文本）
func newAcpDlg(info):

func playSeMp3(文件路径) #音效播放接口
func playBgmMp3(文件绝对路径)  #BGM播放接口
