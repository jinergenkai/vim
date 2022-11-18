#include <bits/stdc++.h>
using namespace std;

#define fi first
#define se second
#define endl '\n'
#define pb push_back
#define int long long
#define all(x) x.begin(),x.end()

const int inf = 1e9 + 7; const int N = 1000111;
typedef pair<int, int> pii; typedef vector<int> vi; typedef long long ll;

int32_t main(int32_t argc, char *argv[]) { ios_base::sync_with_stdio(false); cin.tie(0); cout.tie(0);
    if (fopen("test.txt","r")) {
        freopen("test.txt","r",stdin);
    }
    int n; cin >> n;
    vector<int> a(n + 1, 0);
    for (int i = 1; i <=n ; i++)
        cin >> a[i];
    int tmp = 0;
    for (int i = 1; i <=n; i++) {
        a[i] += tmp;
        if (i == n) break;
        int k = a[i]/(n-i);
        tmp += k;
        a[i] -= k*(n-i);
        cout << a[i] << " ";
    }
    cout << a[n];
}
