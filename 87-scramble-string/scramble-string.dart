class Solution {
  Map<String, bool> memo = {};

  bool isScramble(String s1, String s2) {
    if (s1 == s2) return true;

    String key = "$s1#$s2";

    if (memo.containsKey(key)) {
      return memo[key]!;
    }

    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s1.length; i++) {
      count[s1.codeUnitAt(i) - 97]++;
      count[s2.codeUnitAt(i) - 97]--;
    }

    for (int c in count) {
      if (c != 0) {
        memo[key] = false;
        return false;
      }
    }

    int n = s1.length;

    for (int i = 1; i < n; i++) {

      if (isScramble(s1.substring(0, i), s2.substring(0, i)) &&
          isScramble(s1.substring(i), s2.substring(i))) {
        memo[key] = true;
        return true;
      }

      if (isScramble(s1.substring(0, i), s2.substring(n - i)) &&
          isScramble(s1.substring(i), s2.substring(0, n - i))) {
        memo[key] = true;
        return true;
      }
    }

    memo[key] = false;
    return false;
  }
}