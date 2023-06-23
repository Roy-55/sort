#include "sort.h"
using namespace std;

void sort6::maopao(std::vector<int> &nums){
    for (int i = 0; i < nums.size(); i++)
    {
        bool flag=true;
        for (int j = i+1; j < nums.size(); j++)
        {
            if (nums[i]>nums[j])
            {
                swap(nums[i],nums[j]);
                flag=false;
            }
        }
        if (flag)
        {
            break;
        } 
    }
    return;
}

void sort6::charu(std::vector<int> &nums){
    for(int i=1;i<nums.size();i++){
        int n=nums[i];
        int j;
        for (j = i; j >= 1; j--)
        {
            if (nums[j-1]>n)
            {
                nums[j]=nums[j-1];
            }
            else{
                break;
            }
        }
        nums[j]=n;
    }
    return;
}

void sort6::shell(std::vector<int> &nums){
    int len=nums.size();
    int k=log(len+1)/log(2);
    
    for( int D = pow(2,k)-1; D >0 && k>0; k--,D = pow(2,k)-1)
    {
        for (int i = D; i < len; i=i+D)
        {
            int j,n=nums[i];
            for ( j = i; j > 0 && nums[j-D]>n; j=j-D)
            {
                nums[j]=nums[j-D];
            }
            nums[j]=n;
        }
    }
    return;
}

void sort6::heap_sort(std::vector<int> &nums){
    // C++有封装好的制造堆的函数，make_heap，可自行上网搜索更替
    // 此处所用的到堆的建立和堆顶元素的弹出并维护是我自己写的函数。
    my_heap mp(nums,nums.size());
    for (int i = nums.size()-1; i >= 0 ; i--)
    {
        nums[i]=mp.get_delete_heap_top();
    }
    return;
}

void sort6::guibing(std::vector<int> &nums){
    // 非递归更安全，递归的更简单，网上有代码
    vector<int> temp=nums;
    int g=1,size=nums.size();
    while (g<nums.size())
    {
        for (int i = 0; i < size; i=i+2*g)
        {
            int l=i,r=l+g,l_end=r-1,r_end=l+2*g-1,index=l;
            if (r > size)
            {
                break;
            }
            if(r_end > size) r_end=size-1;
            while (l<=l_end && r<=r_end)
            {
                nums[l]<nums[r]?temp[index++]=nums[l++]:temp[index++]=nums[r++];
            }
            while (l<=l_end)
            {
                temp[index++]=nums[l++];
            }
            while (r<=r_end)
            {
                temp[index++]=nums[r++];
            }           
        }
        nums=temp;
        g*=2;
    }   
}

void sort6::kuaisu(std::vector<int> &nums){
    // 为了给用户统一接口
    kuaisu_help(nums,0,nums.size()-1);
}

void sort6::kuaisu_help(std::vector<int> &nums, int begin, int end){
    // 这个手法比较稚嫩，不太熟悉
    if (begin >= end) return;
    int l=begin,r=end,n=nums[begin],index=begin;
    while (l<r)
    {
        while (nums[r]>=n)
        {
            r--;
            if(l==r) break;
        }
        if (r>l)
        {
            nums[index]=nums[r];
            index=r;   
        }       
        while (nums[l]<=n)
        {
            l++;
            if(l==r) break;
        }
        if (r>l)
        {
            nums[index]=nums[l];
            index=l;   
        } 
    }
    nums[index]=n;
    kuaisu_help(nums,begin,index-1);
    kuaisu_help(nums,index+1,end);
}