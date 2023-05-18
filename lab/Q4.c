#include<stdio.h>
extern int prime(int m,int n);
int main()
{
    int m, n;
    int ans;
    scanf("%d%d",&m,&n);
    ans=prime(m,n);
    printf("%d",ans);
}