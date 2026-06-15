class Solution {
   List<List<int>> permute(List<int> nums) {
    List<List<int>> permuted = per([nums], 0, nums.length);

    return permuted;
  }

  List<List<int>> per(List<List<int>> nums, int startFrom, int length) {

    List<List<int>> permuted = List.from(nums);

    for (int i = 0; i < nums.length; i++) {
      for (int j = startFrom + 1; j < nums[i].length; j++) {
        permuted.add(swap(nums[i], startFrom, j));
      }
    }
    if (startFrom < length - 2) {
      permuted = per(permuted, ++startFrom, length);
    }
    return permuted;
  }

  List<int> swap(List<int> nums, int start, int end) {
    List<int> newNums = List.from(nums);
    newNums[start] += newNums[end];
    newNums[end] = newNums[start] - newNums[end];
    newNums[start] -= newNums[end];
    return newNums;
  }
}