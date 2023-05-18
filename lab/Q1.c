#include<stdio.h>
extern int func(int m,int n, int s);
int main()
{
    int m,n;
    int answer,s;
    scanf("%d%d%d",&m,&n,&s);
    answer=func(m,n,s);
    printf("%d",answer);
}