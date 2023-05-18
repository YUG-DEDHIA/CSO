#include <stdio.h>
#include <string.h>
extern long long gcd(long long m, long long n);
int main()
{
    int m, n;
    int ans;
    printf("enter the value of m and n");
    scanf("%d%d", &m, &n);
    ans = gcd(m, n);
    printf("gcd is %d", ans);
    return 0;
}