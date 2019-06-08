---
title: 70.爬楼梯
date: 2019-06-07 18:50:48
tags: [leetcode] 
description: leetcode NO.70
toc: true #开启目录
---

假设你正在爬楼梯。需要n阶你才能到达楼顶。
每次你可以爬1或2个台阶。你有多少种不同的方法可以爬到楼顶呢？
注意：给定的n是一个正整数。
<!-- more -->

### 思路
很经典的题目，第二级台阶后，每一级台阶的可能走法，一定为f(n)=f(n-1)+f(n-2),而f(1)=1,f(2)=2,因此可使用递归计算得出答案
尴尬的是，第一次直接使用递归解题，输入为44的时候直接timeout了，改为使用缓存顺序计算后顺利ac
题目本身不难，注意边界情况即可

### code
执行用时 : 0 ms, 在Climbing Stairs的Java提交中击败了100.00% 的用户
内存消耗 : 32.7 MB, 在Climbing Stairs的Java提交中击败了76.40% 的用户

```java
class Solution {
    public int climbStairs(int n) {
        if(n<2){
            return n==1 ? 1:2;
        }
        int[] f=new int[n];
        f[0]=1;
        f[1]=2;
        int i=2;
        while(i<n){
            f[i]=f[i-1]+f[i-2];
            i++;
        }
        return f[n-1];
    }
}
```