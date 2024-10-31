#include <iostream>
using namespace std;

int main()
{
    int n;
    cin >> n;
    for (int i = 1; i <= n; ++i)
        for (int j = i; j <= n; ++j)
            for (int k = j; k <= n; ++k)
                if (i + j + k == n)
                    printf("%d = %d + %d + %d\n", n, i, j, k);
    return 0;
}