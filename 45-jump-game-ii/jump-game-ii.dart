class Solution {
  int jump(List<int> nums) {
     var farthest = 0;
    var currentEnd = 0;
    var count = 0;
    for (var i = 0; i < nums.length - 1; i++) {
      farthest = max(farthest, i + nums[i]);

      if (i == currentEnd) {
        count++;
        currentEnd = farthest;
      }
    }
    return count;
  }
}