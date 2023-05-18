#include <stdio.h>

// long int factorial(long int N)
// {
//     if (N == 1)
//     {
//         return 1;
//     }

//     return N*factorial(N - 1);
// }

extern long int function(long int N);
// {
//     long int sum = 0, digit, M = N;
//     while ( M > 0)
//     {
//         digit = M % 10;
//         M/=10;
//         sum += factorial(digit);
//     }

//     if( sum == N)
//     {
//         return 1;
//     }
//     else
//     {
//         return 0;
//     }
// }

int main()
{
    long int N;
    scanf("%ld", &N);

    int res = function(N);

    if(res == 1)
    {
        printf("TRUE");
    }
    else
    {
        printf("FALSE");
    }
    return 0;
}