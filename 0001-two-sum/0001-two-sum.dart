class Solution {
   List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    int remaining = target - nums[i];

    if (map.containsKey(remaining)) {
      return [map[remaining]!, i];
    }

    map[nums[i]] = i;
  }

  return [];
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  print(twoSum(nums, target)); 
}

    
  }
