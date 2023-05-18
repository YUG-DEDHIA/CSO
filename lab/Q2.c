#include<stdio.h>
extern int parityCheck(int n);
int main()
{
    int n, answer;
    scanf("%d",&n);
    answer= parityCheck(n);
    printf("%d",answer);
}