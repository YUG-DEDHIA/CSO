#include <stdio.h>

// long long int exp(long long int a, long long int b)
// {
//     if(b == 0)
//     {
//         return 1;
//     }
//     return a*exp(a, b-1);
// }

extern long long int function(long long int M, long long int N, long long int S);
// {
//     long long int res;
//     switch(S)
//     {
//         case 1:
//         res = M + N;
//         break;

//         case 2:
//         res = M -N;
//         break;

//         case 3:
//             res = M / N;
//             break;

//         case 4:
//             res = exp(M, N);
//             break;
//         case 5:
//             res = M % N;
//             break;

//     }
//     return res;
// }

int main()
{
    long long int M, N, S;
    scanf("%lld %lld %lld", &M, &N, &S);
    printf("%lld", function(M, N, S));

    return 0;
}