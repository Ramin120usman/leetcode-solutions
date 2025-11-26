class Solution {
  bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {
    ')': '(',
    '}': '{',
    ']': '['
  };

  for (String ch in s.split('')) {
    if (pairs.containsValue(ch)) {
      
      stack.add(ch);
    } else {
    
      if (stack.isEmpty || stack.removeLast() != pairs[ch]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValid("()"));         
  print(isValid("()[]{}"));     
  print(isValid("(]"));         
  print(isValid("([)]"));      
  print(isValid("{[]}"));       
}

}