#include <stdio.h>
#include <stdlib.h>

extern int height(int *inp, int *result, int n); // function prototype
int main()
{
    int n;

    scanf("%d", &n);       // input number of elements
    int inp[n], result[n]; // array to store input and output
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &inp[i]); // input elements
    }
    height(inp,result,n); // calling function

    for (int i = 0; i < n; i++)
    {
        printf("%d ", result[i]); // printing output
    }
}