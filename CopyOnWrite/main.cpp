#include <iostream>
#include "src/handler.cpp"
int main() {
    std::cout << "Hello, World!" << std::endl;
    handler<int>* a=new(handler(5));

    std::cout<<"a 的连接数：";
    a->getCout();
    std::cout<<std::endl;
    std::cout<<"a 的数据：";
    a->getData();
    std::cout<<std::endl;
    handler<int>* b;
    b=a;
    std::cout<<"b 的连接数：";
    b->getCout();
    std::cout<<std::endl;
    std::cout<<"b 的数据：";
    b->getData();
    std::cout<<std::endl;
    delete b;
    a->getCout();
    std::cout<<std::endl;
    std::cout<<"a 的数据：";
    a->getData();
    std::cout<<std::endl;

    return 0;
}