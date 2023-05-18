#include <stdio.h>

// int search(int list[], int X, int low, int high)
// {
//     if(low > high)
//     {
//         return -1;
//     }

//     int mid = (low + high) / 2;

//     if( X == list[mid])
//     {
//         return mid;
//     }
//     else if (X > list[mid])
//     {
//         return search(list, X, mid + 1, high);
//     }
//     else
//     {
//         return search(list, X, low, mid - 1);
//     }
// }

extern long int binarySearch(long int list[], long int size, long int element);
// {
//     return search(list, element, 0, size - 1);
// }
int main()
{
    long int N;
    scanf("%ld", &N);
    long int list[N];
    for (int i = 0; i < N; ++i)
    {
        scanf("%ld", list + i);
    }

    long int element;
    scanf("%ld", &element);

    printf("%ld", binarySearch(list, N, element));
    return 0;
}