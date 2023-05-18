#include<stdio.h>
extern int fact(int x);
int main()
{
    int x;
    scanf("%d",&x);
    printf ("%d",fact(x));
}