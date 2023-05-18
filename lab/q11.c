#include <stdio.h>


extern long int partition(long int arr[], long int size);
// {
//     long int i = 0, j = size - 1, pivot = arr[0];

//     while (i < j)
//     {
//         while (arr[i] <= pivot)
//         {
//             ++i;
//         }
//         while (arr[j] > pivot)
//         {
//             --j;
//         }

// if (i < j)
// {       long int temp = arr[i];
//         arr[i] = arr[j];
//         arr[j] = temp;}
//     }

//     arr[0] = arr[j];
//     arr[j] = pivot;

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
partition(array, N);
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