从低速互联网到高速互联网: 
    接入网:
            拨号上网    33.kb
            ADSL        33k.b
            以太网      2M    

    主干网:
            数字数据网    2.048M
            异步传输模式: 155-622M
            同步数组体系: 2.5G

    统一网络:   数据 视频 声音....


网络交换:
        电路交换:
            信道: 传输信号的传输通道
            建立信道方法: 
                1 两两直接连接      不能实现  
                2 通过设备连接起来  交换机 路由器

数据通信基础:
        这些都是..... 信号与系统 编码方面的知识了

以太网:
        总线以太网:
            半双工网络: 只有一个终端才能发送
            一个总线    其他终端都连接到总线上
            传播距离长的话: 需要 中继器 放大信号
            发送端:
                数据封装格式:mac地址
                    mac 6个字节 全球是唯一的
                    mac地址分为:单播地址    组播地址 广播地址
                    mac地址 最后一位0 表示单播 给某一个终端发送数据
                                    1      组播 某一组电脑
                            全部为 1        广播 总线上所有的电脑发送
                    MAC帧格式:
                        目的地址 源地址 数据类型 数据   FCS(检错码)
                        其中数据: 才是我们需要发送的数据 大小46-1500字节之间
                        1500原因: 接收端的缓冲空间是有限的 每次不能太长
                                  发送太大 失败 损失太大
                        帧对界:  
                            MAC帧前面加入 先导码  帧开始分解符
                            先导码: 7字节10101010组成的一组编码
                                    为了 让接收端 可以位同步
                            帧开始分解符: 1字节 10101011
                                    告诉接收端 后面是mac
            CSMA/CD工作算法:
                    让 同一时间 智能有一个终端发送数据
                    1 先听 后讲  先监听是否有载波 如果有的话 继续监听
                            如果没有 再监听一段时间:
                                为了 留出时间让接收端 腾出缓冲区
                                     避免一个终端连续发出多个MAC帧
                                     让终端正确检测到先导码和分解符
                    2 边听边讲 
                            发送数据  一边再检查是否有冲突
                            有冲突  退后再讲
                    3 退后再讲
                            每个终端 都通过后退算法延迟一段时间在发送
                    存在捕获效应   : 可能某个终端一直 发送不了数据
                    冲突域直径:
                        
                        
                    要求 数据大于64字节
                            


                    








