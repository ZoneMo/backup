算法考虑角度：
    1 暴力遍历。。。
        使用循环遍历 每一个 点  进行操作
    2 分治法
        将问题分为几个小问题    递归的解决
    3 动态规划

    4 回溯法


    最基本的考虑方式：      算法基于的基本操作
        递归 向左走 向右走。。。。


解决一个问题的方法：
    数据结构　＋　算法

    解决一个问题　数据结构和算法　一起考虑
    使用数据结构的时候　
        可以先使用ＡＤＴ　然后考虑怎么实现就行了

由已知求未知
    ....
设未知求未知 设X
    看X满足的条件   交给CPU去运算 的值




比如说，简单的冒泡算法，它是不是只是“多次扫描一个数组，交换遇到的每一对相邻的、顺序反了的数字；当不再发生交换时，数组已完成排序”甚至”好不容易才死记硬背下来的一段代码“？

如果你只学会了这个，那么，你真就完全白学了。

作为一个表现一般的排序算法，冒泡排序本身出场率就不高；何况还有各种提供了泛化的sort算法的库：如果仅仅记下了这个，那么你一辈子都不会遇到”必须重写冒泡算法“的场合。



但，如果你把冒泡算法记成：
就好象水中的气泡一样，每次只执行“相邻的元素比较密度（或其它特征），密度小的上浮，密度大的下沉”这个局部物理过程；多次进行后，局部有序就会变成（相关特征上的）整体有序。

甚至：
模仿各种会导致整体有序现象的局部过程去处理数据，可以使得数据整体上满足类似的排布。

甚至：
考察任何自然规律，看它会产生什么有趣的后果；那么当需要达到类似的效果时，不妨尝试用程序模拟出这个规律，很可能就已经得到了想要的效果。

那，你这一生，可就受用不尽了。



比如说，”高大上“的”神经网络“”遗传算法“”蚁群算法“等等等等，其实骨子里不都是这个”冒泡思路“吗？



类似的，各种树都是链表的”钩挂“思想+数组的”索引“思想的结合体；”模拟退火算法“又是冒泡思路结出来的另一颗果子；音频滤波算法就是简谐振动计算公式；面向对象的”继承“不过是常见的”归一化“手法的另一个表述方式……


可以说，如果能像对冒泡算法的真正理解一样，彻底弄明白各种算法的设计思路并加以借鉴，那么你对这个世界的各种规律了解的有多透彻，你的程序就可以写的有多灵动。


一旦掌握这个，从此，你再不必像那些菜鸟一样，绞尽脑汁敲出无数代码去”凑“需求；而是只需用代码编织出需要的规律，然后丢给CPU执行，你真正想要的东西就会自然”涌现“：现在，你只要找出”结果已经出现“的识别方法，用它来结束你的逻辑就行了。
（当然，达成一个目的往往可以有多个不同的途径，不同途径利用不同的规律；那么哪个途径最优呢？算法课教过你：这就是所谓的“算法复杂度”）

——冒泡算法可不就是用代码编织了一个”数值大者靠前（或靠后）“的规律，然后丢给CPU一跑，一大片数据就有序了？
——遗传算法呢，不正是”抄袭“了自然界的自然选择规律吗？把这个规律丢给CPU一跑，居然连AI都弄出来了！

这些只是一些特别经典、特别著名的案例而已。
实际工作中，也是时刻都可能遇到一些新鲜的需求/场景；要完成工作，除了出苦力一行行码代码外，一样可以通过观察找到其中的规律，然后用代码编织规律，再让这些规律去替你完成需求：后者往往会比前者简洁的多得多，执行速度一般也会快得多得多。
这类随时随地“发明”的算法实在不值一提，不能让你像那些著名案例一样一举成名；但它们却实实在在可以提高你的工作效率，让其他人望尘莫及。

——经常有高手骄傲的宣称，别人几万、几十万行代码都解决不了的问题，他数百行代码就清楚漂亮的解决了，执行效率还高出许多倍：他们就是这样做到的。
