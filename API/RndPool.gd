extends Reference
class_name RndPool
#随机池

#添加元素（元素，该元素权重值：数值型）
func addItem(item,weight=1):

#按权重获得一个元素(筛选函数所在对象：Object，函数名:String)
func rndItem(obj = null,funcName = null):
		
#从池中删除目标物品
func delItem(item):

#获取目标元素权重值（目标元素）
func getItemW(item):

#设置目标元素的权重值（目标元素，权重）
func setItemW(item,w):

#清空池
func clear():
