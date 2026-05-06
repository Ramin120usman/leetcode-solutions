class Solution {
  int longestValidParentheses(String s) {
    List<int> stack = [-1];
    int maxLen = 0;

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        stack.add(i);
      } else {
        stack.removeLast();

        if (stack.isEmpty) {
          stack.add(i);
        } else {
          maxLen = maxLen > (i - stack.last)
              ? maxLen
              : (i - stack.last);
        }
      }
    }

    return maxLen;
  }
}