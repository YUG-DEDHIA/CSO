#include <stdio.h>

extern int func(int n, int d);

int main(){
    int n, count;
    scanf("%d", &n);

    count = func(n, 0);

    printf("%d\n", count%13);

}