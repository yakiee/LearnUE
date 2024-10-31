#include <iostream>
#include <vector>
#include <stack>

using namespace std;

vector<vector<int>> adj;
vector<bool> vis;

void dfs(int s)
{
    stack<int> st;
    st.push(s);
    vis[s] = true;

    while (!st.empty())
    {
        int u = st.top();
        st.pop();
        cout << u << " "; // 打印访问的节点

        for (int v : adj[u])
        {
            if (!vis[v])
            {
                vis[v] = true;
                st.push(v);
            }
        }
    }
}

int main()
{
    int n, m; // n: 节点数量, m: 边数量
    cin >> n >> m;

    adj.resize(n + 1); // 假设节点编号从 1 开始
    vis.resize(n + 1, false);

    for (int i = 0; i < m; ++i)
    {
        int u, v;
        cin >> u >> v;
        adj[u].push_back(v); // 有向图
        // 如果是无向图，添加这行：
        // adj[v].push_back(u);
    }

    int startNode;
    cin >> startNode; // 输入起始节点
    dfs(startNode);   // 从起始节点进行 DFS

    return 0;
}
