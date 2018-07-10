//
// Created by zenko on 18-6-26.
//
// Programmer:句柄的设计与实现
// 以int作为基本类型设计句柄


#include "iostream"
//定义original handler 类用于保存最初的数据
template <class _class>
class original_handler
        {
    friend  class<_class> handler;
private:

    _class * pointer;//定义整形指针用于保存基地址
    int  count;  //定义计数器用于记录指向这个指针的对象个数
    //不带参数的初始化函数
    original_handler(){
        pointer= nullptr; //初始化handler类，创建地址空加
                 count=0;
    };
    //带参数的初始化函数
    original_handler(_class c){
        pointer=new _class(c);
        count=1;
    };

            //获取指针
            int * getPointer(){
                return pointer;
            }


            //获得计数数目
            int getCount(){
                return count;
            }

            ~original_handler(){};
};

//开始定义handler类
template <class _class>
class handler{

private:
    original_handler<_class> * ptr;  //包含一个指向底层对象的指针
    //将不带函数的初始化函数定为私有函数禁止操作

public:

    handler(){
        ptr=nullptr;
    };
    //带有参数的handler初始化函数
    handler(_class c){
        ptr =new original_handler<_class>(c);
    }

    //重载等于操作符
    handler& operator=(handler& _b_handler){
        //如果ahandler的count数等于1的话表示他是最后一个连接这个original_hanlder的句柄, 我们需要从底层开始逐成释放空间
        if(ptr->count==1){
            delete ptr->pointer;  // 删除底层的对象
            delete ptr;           //删除ptr对象
        } else{
            //如果
            ptr->count--;
            ptr=_b_handler.ptr;
           ptr->count++;

        }
        return *this;
    }

    //实现写时复制技术
    handler& operator=(_class c){
        //如果连接同一个对象的数量只有一个的话就不用进行复制了，直接进行更改
        if(ptr->count==1){
            *(ptr->pointer)=c;
        }
        else{
            //将底层对象的连接数先减一
            ptr->count--;
            //复制并创建新的handler变量
            ptr=new handler<_class>(*(ptr->pointer));
        }
        return *this;
    }

    //显示连接到当前底层节点的句柄个数
    void getCout(){
        std::cout<<ptr->getCount()<<std::endl;
    }

    void getData(){
        std::cout<<*(ptr->getPointer())<<std::endl;
    }

    ~handler(){
        if(ptr->count==1){
            delete ptr->pointer;
            delete ptr;
        }
        else{
            ptr->count--;
            std::cout<<"还有"<<ptr->count<<"连接到对象上"<<std::endl;
            delete ptr;
        }
    }
};