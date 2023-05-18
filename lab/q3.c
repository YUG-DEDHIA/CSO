#include <stdio.h>

extern long int sum(long int m, long int n, long int array[][n]);
// {
//     long int sum = 0, val;

//     for(long int i = 0; i < m; ++i)
//     {
//         for (long int j = 0; j < n; ++j)
//         {
//             val = *(*(array + i) + j);
//             if (val % 2 == 0)
//             {
//                 sum += val;
//             }
//         }
//     }

//     return sum;
// }

long int main()
{

    long int m, n;
    scanf("%ld %ld", &m, &n);

    long int array[m][n];

       for(long int i = 0; i < m; ++i)
    {
        for (long int j = 0; j < n; ++j)
        {
            if (array[i][j] % 2 == 0)
            {
                scanf("%ld", &array[i][j]);
            }
        }
    }
    printf("%ld", sum(m, n, array));
    return 0;
}