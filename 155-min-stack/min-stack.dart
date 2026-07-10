import 'dart:math';

/* Example data:  
 _stack     _minStack
    0           0  
    1           1
    4           2
    2           2
    6           6
*/
class MinStack {
  // Our actual stack
  final _stack = <int>[];

  // Min value at each level of our _stack
  final _minStack = <int>[];
  
  void push(int val) {
    _stack.add(val);

    // Get our current min value if exists
    int? currMin = _minStack.isNotEmpty ? _minStack.last : null;

    // Push next min value to minStack
    currMin == null
      ? _minStack.add(val)                 // First entry in _minStack
      : _minStack.add(min(currMin, val));  // Maybe update the min value
  }
  
  void pop() {
    _stack.removeLast();
    _minStack.removeLast();   
  }
  
  int? top() => _stack.isNotEmpty ? _stack.last : null;
    
  
  int? getMin() => _minStack.isNotEmpty ? _minStack.last : null;  
}