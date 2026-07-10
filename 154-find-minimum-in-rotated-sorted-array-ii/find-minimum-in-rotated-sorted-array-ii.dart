class Solution {
  int findMin(List<int> nums) {
        if (nums.isEmpty) {
      throw ArgumentError("The input array is empty.");
    }
     int min =nums[0];
     for(int i=0;i<nums.length;i++){
        if(nums[i]<min){
            min = nums[i];
        }
     }
     return min;
  }
}