#include <stdio.h>

extern void bubbleSort(long int N, long int arr[]);
// {
//     for (int i = 0; i < N - 1; ++i)
//     {
//         for (int j = 0; j < N - i - 1; ++j)
//         {
//             if (arr[j] > arr[j + 1])
//             {
//                 long int temp = arr[j];
//                 arr[j] = arr[j + 1];
//                 arr[j + 1] = temp;
//             }
//         }
//     }
// }
int main()
{
    long int N;
    scanf("%ld", &N);

    long int array[N];

    for (int i = 0; i < N; ++i)
    {
    scanf("%ld", &array[i]);

    }
bubbleSort(N, array);
     for (int i = 0; i < N; ++i)
    {
    printf("%ld ", array[i]);

    }
    return 0;
}
/*
test cases:
5
4 1 3 9 7
*/
