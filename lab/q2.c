#include <stdio.h>

extern long int parityCheck(long int N);
// {
//     int count = 0;
//     int bit;
//     while (N != 0)
//     {
//         bit = N % 2;
//         N /= 2;

//         if (bit == 1)
//         {
//             ++count;
//         }
//     }

//     if (count % 2 == 1)
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
    if (parityCheck(N) == 1)
        printf("TRUE");
    else
        printf("FALSE");

    return 0;
}