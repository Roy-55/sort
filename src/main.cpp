#include<iostream>
#include<vector>
#include<algorithm>
#include"sort.h"
using namespace std;

int main()
{
    // vector<int>nums{ 2, 5, 10, 3, 6, 8, 12, 7, 9, 1 };
    vector<int> nums(100,0);
    srand((int)time(0));
    for(auto it=nums.begin();it!=nums.end();it++){
        *it=rand()%2000;
    }
    sort6 s;
    s.kuaisu(nums);
    for(auto it=nums.begin();it!=nums.end();it++){
        cout<<*it<<" ";
    }    
    cout<<endl;
    system("pause");
    return 0;
}