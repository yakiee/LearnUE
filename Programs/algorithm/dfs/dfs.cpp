#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <map>
using namespace std;

int n;
int m, arr[103]; // arr 用于记录方案

void dfs(int n, int i, int a)
{
    if (n == 0)
    {
        if (i - 1 >= m)
        {
            for (int j = 1; j <= i - 1; ++j)
            {
                printf("%d \n", arr[j]);
            }
            printf("\n");
        }
    }
    if (i <= m)
    {
        for (int j = a; j <= n; ++j)
        {
            arr[i] = j;
            printf("QAQ2: %d %d %d %d\n", i, j, n - j, i + 1);
            dfs(n - j, i + 1, j); // 请仔细思考该行含义。
        }
    }
}

int main()
{
    cin >> n >> m;
    dfs(n, 1, 1);
    return 0;
}