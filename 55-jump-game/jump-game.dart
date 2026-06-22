class Solution {
  bool canJump(List<int> nums) 
  {
        int mx = 0;
        for(int i = 0; i < mx + 1; i++)
        {
            mx = max(mx , nums[i] + i);
            if(nums.length -1 <= mx) return true;
        }
        return false;     
  }
}