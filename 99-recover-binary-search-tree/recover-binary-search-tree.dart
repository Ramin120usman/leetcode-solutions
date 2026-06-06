/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  final List<int> nums = [];

  void recoverTree(TreeNode? root) {
    inOrder(root);
    final numsCopy = List.from(nums);
    numsCopy.sort();
    for (int i = 0; i < nums.length; i++) {
        if (numsCopy[i] != nums[i]) {
            update(root, numsCopy[i], nums[i]);
            break;
        }
    }
  }

  void inOrder(TreeNode? root) {
      if (root == null) {
          return;
      }

      inOrder(root.left);
      nums.add(root.val);
      inOrder(root.right);
  }

  void update(TreeNode? root, int num1, int num2) {
      if (root == null) {
          return;
      }

      update(root.left, num1, num2);
      if (root.val == num1) {
          root.val = num2;
      } else if (root.val == num2) {
          root.val = num1;
      }
      update(root.right, num1, num2);
  }
}