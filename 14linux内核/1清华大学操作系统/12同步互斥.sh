独立进程:
        不和其他进程共享资源和状态
        确定性: 输入状态确定结果
        可重现: 能够重现起始条件
并发进程:
        在多个进程有资源共享 

原子操作:
        一次不存在任何中断或失败的操作

进程的交互关系:

        相互不感知          独立        一个进程的操作与其他无关

        间接感知         通过共享协作   一个进的结果依赖与共享状态

        直接感知        通过通信协作    一个进程的结果依赖于通信

        以上三种方法 出现三种结果:
            互斥 :
                一个进程占有了资源  其他进程就占用不了资源了
                必须等待 其他进程释放
            死锁:
                进程各自 占有一部分资源
            饥饿 :
                其他进程 轮流使用   一个进程得不到资源

        
        临界区:
            任何时刻 只允许一个进程执行的代码
        临界区实现方法:
            禁用中断:   
                    需要硬件支持
                    进程无法被停止  
                        整个系统都为此定了下来
                        可能导致其他进程处于饥饿状态
                    临界区可能很长
                    重要中断也无法使用啊 
            软件方法:
                共享变量 方法进行同步
                peterson算法:
                    共享变量:
                    满足线程Ti和Tj之间互斥的经典方法:
                        int turn;//表示该谁进入临界区
                        boolean flag[]; //表示进程是否准备号进入

                        进入取代码:
                        flag[i] = true;
                        turn = j;
                        while(flag[j] && turn == j)

                    线程Ti的代码:
                        do{
                            flag[i] = ture;
                            turn = j;
                            while (flag[j] && turn == j);
                                执行指令
                            flag[i] = false;
                                退出区代码 flag[i]= false;
                        }while(true);
                n个进程之间的同步方法:
                    
            更高级的抽象方法:
                    锁  lock
                    一个二进制变量 锁定和解锁
                    Lock::Acquire()
                    Lock::Release()
                使用lock来控制临界区访问:   
                    lock_next_pid->Acquire()
                    new_pid = next_pid ++;
                    lock_next_pid-Release();
                内部实现 基于
                    原子操作指令:
                        测试和置位指令:
                            从内存单元中读取值
                            测试该值是否为1
                            内存单元值设置为1
                        交换指令:
                            交换内存中的两个值
                    基于原子操作的等待队列:
                            设置一个内存单元
                        
                    






