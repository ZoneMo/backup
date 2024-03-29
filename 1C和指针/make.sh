开发工具：
make
    make命令和makefile文件：
        makefile的语法：
            makefile文件 由一组 依赖关系和和规则构成
                每一个依赖关系 有一个目标文件和一组该目标文件所依赖的文件
        make命令的选项和参数
            -k
                发现错误的时候仍然执行
            -n
                让make 输出将要执行的步骤 不执行
            -f  
                告诉makefile的名字是什么 默认是Makefile

            1 依赖关系
                myapp: main.o 2.o 3.o 
                main.o: main.c a.h
                2.o: 2.c a.h b.h
                3.o: 3.c b.h c.h
            2 规则：
                make命令内置很多默认规则
                可以定义一些外部规则
                注意：空格和tab是有区别的
                    规则所在行 必须以tab开头  行尾不能有空格
                例：

                myapp: main.o 2.o 3.o 
                    gcc -o myapp main.o 2.o 3.o
                main.o: main.c a.h
                    gcc -c main.c
                2.o: 2.c a.h b.h
                    gcc -c 2.c
                3.o: 3.c b.h c.h
                    gcc -c 3.c
            makefile文件中的注释：
                #
            makefile文件中的宏
                定义宏： MACRONAME=value 
                引用：    ${MACRONAME} or $(MACRONAME)
                其他宏：
                    $?  列出当前目标所 依赖的文件列表中比单签目标文件
                        还要 新的文件
                    $@  当前目标的名字
                    $<  当前依赖文件的名字
                    $*  步包括后缀名的当前依赖的文件名字
            特殊字符：
                -   告诉make忽略所有错误
                @   打印到输出窗口内容

        多个目标：
            在makefile中增加clean来删除不需要的文件爱你
            增加 install来将程序到另一个目录
                #where to insall
                INSTDIR = /usr/local/bin
                install: myapp
                   @if [ -d ${INSTDIR} ] ;\
                   then \
                    cp myapp ${INSTDIR} ;\
                else \
                    echo "Sorry "
               fi

                clean:
                    -rm main.o 2.o 3.o
        内置规则：
            该变内置规则：
                make CC=gcc CFLAGS="-Wall -g"   foo
                ......
                .SUFFIXES:  .cpp
                .cpp.o:
                $(cc) -xc++ $(CFLAGS) -I$(INCLUDE) -c $<
        用make命令管理函数库：
                
        makefile文件和子目录
        。。。。


        makefile中使用变量:
            In some other versions of make, variables are called macros
            声明：
                    objects = main.o kbd.o command.o display.o /
                    insert.o search.o files.o utils.o
            调用：
                    $(objects)

                Simply expanded variables are defined by lines using 
                        ‘:=’ or ‘::=’

                variable is a recursively expanded variable:
                    For example,
                            foo = $(bar)
                            bar = $(ugh)
                            ugh = Huh?
                            all:;echo $(foo)
                        will echo ‘Huh?’
        让make自动推导:
            只要make看到一个[.o]文件，它就会自动的把[.c]文件加在依赖关系中


        The call Function:
            You can write a complex expression as the value of a variable, 
                    then use call to expand it with different values.
            syntax:
                    $(call variable,param,param,…)

                    This macro simply reverses its arguments:

                    reverse = $(2) $(1)           #$(1) 代表a $(2) 代表b
                    
                    foo = $(call reverse,a,b)       
        The shell function:
            contents := $(shell cat foo)
                sets contents to the contents of the file foo, with a space 
                (rather than a newline) separating each line. 

        Makefile  $@, $^, $<
            $@  表示目标文件
            $^  表示所有的依赖文件  注意依赖
            $<  表示第一个依赖文件   依赖
            $?  表示比目标还要新的依赖文件列表  依赖
                
                
    gdb 调试：
        启动gdb
             cc -g -o debug1 debug2.c
                -g

            启动
             gdb debug1

        运行一个程序：
             run
        栈跟踪；
             backtrace
        检查变量：
            print j
        

    使用help

















                
