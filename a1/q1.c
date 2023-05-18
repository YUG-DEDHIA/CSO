#include<stdio.h>
#include<string.h>
//quotient and remainder for m and n
int q,r;
extern long long division(long long m,long long n);
extern long long remain(long long m,long long n);
//main function
int main()
{
    int m,n;
    printf("enter the value of m and n");
    scanf("%d%d",&m,&n);
    q = division(m,n);
    r = remain(m,n);
    printf("quotient is %d and remainder is %d",q,r);
    return 0;
}