class Solution {
  List<List<int>> permuteUnique(List<int> nums) {
    int len = nums.length;
    List<List<int>> result = [];
    void foo(List<int> current, int idx, List<List<int>> result, List<int> nums){
        if(idx == len){
            result.add(current.toList());
            return;
        }
        List<int> temp = [];
        for(int i in nums){
            if(temp.contains(i)) continue;
            temp.add(i);
            current.add(i);
            foo(current, idx + 1, result, nums.toList()..remove(i));
            current.removeLast();
        }
    }
    foo([], 0, result, nums);
    return result;
  }
}