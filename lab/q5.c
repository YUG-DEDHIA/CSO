#include <stdio.h>
// long int factorial(long int N)
// {
//     if (N == 1)
//     {
//         return 1;
//     }

//     return N*factorial(N - 1);
// }


extern long int function(long int X);
// {
//     long int i = 1;
//     while (factorial(i) % X != 0)
//     {
//         ++i;
//     }

//     return i;
// }

int main()
{
    long int X;
    scanf("%ld", &X);

    printf("%ld", function(X));

    return 0;
}