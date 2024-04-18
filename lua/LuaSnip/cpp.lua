local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
  s("cpcp", {
    t({ "#include <bits/stdc++.h>", "" }),
    t({ "using namespace std;", "" }),
    t(""),
    t(""),
    t({ "", "#define ll long long", "" }),
    t(""),
    t({ "", "const int MOD = 1e9 + 7;", "" }),
    t(""),
    t({ "", "void solve() {" }),
    t({ "", "\t" }),
    i(1),
    t({ "", "}" }),
    t({ "", "int main() {" }),
    t({ "", "\tios::sync_with_stdio(false);" }),
    t({ "", "\tcin.tie(0);" }),
    t(""),
    t({ "", "\t" }),
    t({ "", "\tint tc;" }),
    t({ "", "\t" }),
    t({ "cin >> tc;" }),
    t({ "", "\t" }),
    t({ "", "\twhile (tc--) {" }),
    t({ "", "\t\tsolve();" }),
    t({ "", "\t\tcout << endl;" }),
    t({ "", "\t}" }),
    t({ "", "\t" }),
    t({ "return 0;" }),
    t({ "", "}" }),
  }),
})
