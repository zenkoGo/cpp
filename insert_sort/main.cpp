

#include <iostream>
#include "array"
    using namespace std;
    int main() {
        array<int,5> array1({1,3,7,2,5});
        for(int i=0;i<array1.size();i++)
        {
            cout<<array1[i]<<" ";
        }
        cout<<endl;


        for (int j = 1; j < array1.size(); ++j) {
            auto key=array1[j];
            for(int i=j-1;i>=0;--i){
                if(array1[i]>key){
                    array1[i+1]=array1[i];
                } else{
                    array1[i+1]=key;
                    break;
                }
            }

        }

        for(int i=0;i<array1.size();i++) {
            cout<<array1[i]<<" ";
        }
        cout<<endl;
    }


