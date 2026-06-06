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
  bool isSymmetric(TreeNode? root) {
    return _isSymmetric(root?.right, root?.left);
  }

  bool _isSymmetric(TreeNode? right, TreeNode? left) {
    if (right == null || left == null) {
      return right == left;
    } else if (right.val != left.val) {
      return false;
    }
   return _isSymmetric(right.right, left.left) && _isSymmetric(right.left, left.right);
  }
}