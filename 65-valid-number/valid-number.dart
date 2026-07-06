class Solution {
   bool isNumber(String s) {
  if (RegExp(r"^(\+|-)?(\d+|\.\d+|\d+\.|\d+\.\d+)((e|E)[+-]?\d+)?$").hasMatch(s)) {
    return true;
  } else {
    return false;
  }
  }
}