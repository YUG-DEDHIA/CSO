#include<stdio.h>
extern int sum(int m, int n, int* arr);
int main()
{
    int m,n;
    scanf("%d%d",&m,&n);
    
    int arr[m][n];
    for(int i=0;i<m;i++)
    {
        for(int j=0;j<n;j++)
        {
            scanf("%d",&arr[i][j]);
        }
    }
    printf("%d",sum(m,n,arr));
}