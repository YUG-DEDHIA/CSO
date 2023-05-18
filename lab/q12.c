#include <stdio.h>

extern long int _sum(long int N, long int K);
// {
//     long int res;
//     if (N == 1)
//     {
//         res = 1;
//     }
//     else
//     {
//         res = N + _sum(N-1, K);
//     }

//     return res % K;
// }

int main()
{
    long int N, K;
    scanf("%ld %ld", &N, &K);
    printf("%ld", _sum(N, K));

    return 0;
}