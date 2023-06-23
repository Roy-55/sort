#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;

class my_heap{
public:
    my_heap(vector<int> n,int s){
        nums=n;
        size=s;
        if (s==0)
        {
            cout<<"heap is empty!"<<endl;
            return;
        }
        
        // 单独处理最后一个节点
        nums.insert(nums.begin(),0);
        bool r;
        if (s%2==1)
        {
            r=true;
        }
        else{
            if (nums[s]>nums[s/2]){
                swap(nums[s],nums[s/2]);
            }
            r=false;
        }
        
        int i;
        for (r ? i = s : i = s-1; i > 1; i = i-2)
        {
            int j = i/2;// j是根节点的位置
            bool flag=false;
            while (!flag && j <= s/2)
            {
                flag=true;
                int bigest=max(nums[j],max(nums[j*2+1],nums[j*2]));
                if (nums[j*2]==bigest)
                {
                    swap(nums[j*2],nums[j]);
                    j=j*2;
                    flag=false;
                }
                if (nums[j*2+1]==bigest)
                {
                    swap(nums[j*2+1],nums[j]);
                    j=j*2+1;
                    flag=false;
                }  
            }
        }
    };
    
    int get_delete_heap_top(){
        int ans=nums[1];
        nums[1]=nums[size--];
        bool flag=false;
        int j=1;
        while (!flag && j <= size/2)
        {
            flag=true;
            int bigest=max(nums[j],max(nums[j*2+1],nums[j*2]));
            if (nums[j*2]==bigest)
            {
                swap(nums[j*2],nums[j]);
                j=j*2;
                flag=false;
            }
            if (nums[j*2+1]==bigest)
            {
                swap(nums[j*2+1],nums[j]);
                j=j*2+1;
                flag=false;
            }  
        }
        return ans;        
    }

    void out_put(){
        for (int i = 1; i <= size; i++)
        {
            cout<<nums[i]<<" ";
        }
        cout<<endl;
    }

private:
    vector<int> nums;
    int size;
};